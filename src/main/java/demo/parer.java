package demo;

import com.mysql.jdbc.Driver;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * 把数据从txt写入数据库
 */
public class parer {
    private static int couter;

    public static void main(String[] args) throws SQLException {
        // 按行读取数据
        new Driver();
        // 保证资源可以顺利关闭
        try (BufferedReader reader = new BufferedReader(new FileReader("ip.txt"));
             Connection connection = DriverManager.getConnection("jdbc:mysql:///", "root", "system");
        ) {
            connection.setAutoCommit(false);
            String line;
            PreparedStatement preparedStatement = null;
            int n = 0;
            String sql = "INSERT INTO db.ip VALUE(NULL, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
                String min = line.split("\\s+")[0];//至少一个空格
                String max = line.split("\\s+")[1];
                String loc = line.replace(min, "").replace(max, "");

                preparedStatement.setString(1, min);
                preparedStatement.setString(2, max);
                preparedStatement.setString(3, loc);
                //4. 添加
                preparedStatement.addBatch();
                //5. 释放相关资源
                //preparedStatement.close();
                //connection.close();
                System.out.println(couter++);
                if (couter++ == 10000) {
                    System.out.println(couter * (++n));
                    preparedStatement.executeBatch();
                    preparedStatement = null;
                    couter = 0;
                }
            }
            if (preparedStatement != null) {
                System.out.println(couter);
                preparedStatement.executeBatch();
            }
            connection.commit();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

