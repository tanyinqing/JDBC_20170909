

DROP DATABASE IF EXISTS db;
CREATE DATABASE db;

DROP TABLE IF EXISTS db.ip;
CREATE TABLE db.ip (
  id    INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'id PK',
  min    VARCHAR(255) NOT NULL
  COMMENT 'ip最小值',
  max    VARCHAR(255) NOT NULL
  COMMENT 'ip最大值' ,
  geo    VARCHAR(255) NOT NULL
  COMMENT '位置'
)
  COMMENT 'ip表';

SELECT * FROM db.ip ORDER BY id DESC ;

SELECT count(*) FROM db.ip;-- 数据的总条数

INSERT INTO db.ip VALUE (NULL ,'0.0.0.0','0.255.255.255','ANA 保留地址');

-- JDBC：java语言的数据库连接

TRUNCATE db.ip;-- 清空数据库


-- JDBC: Java Database Connectivity. -- java代码操作数据库


SELECT *
FROM db.ip; -- 447297

-- MySQL ip

-- 166.111.5.207

SELECT *
FROM db.ip
WHERE '166.111.5.207' BETWEEN min AND max;-- 不运用函数查询结果会有误差

-- 专门查询ip的函数 会把ip换算成数据进行查询 比较准确
SELECT *
FROM db.ip
WHERE inet_aton('166.111.5.207') BETWEEN inet_aton(min) AND inet_aton(max);

-- ATON = Address TO Number

SELECT inet_aton('166.111.5.207'); -- 2792293839
SELECT inet_aton('166.111.5.208'); -- 2792293840

SELECT
  *,
  inet_aton(max) - inet_aton(min) + 1
FROM db.ip;-- 计算出ip段中ip地址的数量

-- 计算出ip地址总的数量
SELECT inet_aton('255.255.255.255') - inet_aton('0.0.0.0') + 1;

-- IPV6 第六代ip

# Java EE  第二阶段的课程
# Java EE Frameworks 框架
#   MyBatis   一个框架 https://baike.baidu.com/item/MyBatis/2824918?fr=aladdin
#   Spring



