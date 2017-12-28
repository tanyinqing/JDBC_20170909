package demo;
import com.mysql.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * jdbc java语言的数据库连接
 */
public class Test {
    public static void main(String[] args) throws SQLException {
        //1.加载数据库驱动 http://search.maven.org/    mysql java
        // http://search.maven.org/
        // search: mysql java
        // mysql	mysql-connector-java    5.1.45
        // Gradle/Grails
        // compile 'mysql:mysql-connector-java:5.1.45'
        new Driver();//加载驱动
        // 2.获取数据库连接  静态方法
        Connection connection= DriverManager.getConnection("jdbc:mysql:///","root","system");
        //3. 准备预编译语句
        String sql = "INSERT INTO db.ip VALUE(NULL, ?, ?, ?)";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, "1.0.0.0");
        preparedStatement.setString(2, "1.0.0.255");
        preparedStatement.setString(3, "澳大利亚...");
        //4. 执行数据库操作
        preparedStatement.executeUpdate();
        //5. 释放相关资源
        preparedStatement.close();
        connection.close();


    }
}
