

DROP DATABASE IF EXISTS db;
CREATE DATABASE db;

DROP TABLE IF EXISTS db.csdn;
CREATE TABLE db.csdn (
  id    INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'id PK',
  username    VARCHAR(255) NOT NULL
  COMMENT 'username',
  password    VARCHAR(255) NOT NULL
  COMMENT 'password' ,
  email    VARCHAR(255) NOT NULL
  COMMENT 'email'
)
  COMMENT 'ip表';

SELECT count(*) FROM db.csdn;-- 数据的总条数642 8632

TRUNCATE db.csdn;-- 清空数据库

-- 快速导入数据的方法
-- LOAD DATA LOCAL INFILE '/Users/mingfei/Desktop/www.csdn.net.sql'
LOAD DATA LOCAL INFILE 'D:/mysql/bin/www.csdn.net.sql'-- 绝对路径
INTO TABLE db.csdn
FIELDS TERMINATED BY ' # ' (username, password, email)
SET id = NULL;

SELECT * FROM db.csdn;

SELECT * FROM db.csdn WHERE username LIKE '%ab%';--  1s 184ms 表示用时1分钟184毫秒

SELECT * FROM db.csdn WHERE csdn.password LIKE '%ab%';

DESC db.csdn;-- 查看表结构
CREATE INDEX ind_username ON db.csd
  n(username);-- 创建索引

-- 排名前十的密码 密码分组和统计出现的次数 降序排列 取前10位
SELECT
  password,
  count(password)
FROM db.csdn
GROUP BY password
ORDER BY count(password) DESC
LIMIT 10 OFFSET 0;
-- 排名前十的邮箱
SELECT *
FROM db.csdn
GROUP BY substr(email, locate('@', email) + 1)
ORDER BY substr(email, locate('@', email) + 1) DESC
LIMIT 10 OFFSET 0;

SELECT locate('@','tom@qq.com');
SELECT substr('tom@qq.com',locate('@','tom@qq.com')+1);

-- 用户名和邮箱名相同的数据
SELECT *
FROM db.csdn
WHERE username = substr(email, 1, locate('@', email) - 1);

SELECT substr('tom@qq.com',1,locate('@','tom@qq.com')-1);

-- 密码是 QQ 号的  模糊查询
SELECT *
FROM db.csdn
WHERE email LIKE '%@qq.com%' AND password = substr(email, 1, locate('@', email) - 1);
-- 弱密码用户数据 短密码 纯数字密码 纯字母密码
SELECT *
FROM db.csdn
WHERE length(password) < 4;

SELECT *
FROM db.csdn
WHERE password RLIKE '^[0-9]+$';

SELECT *
FROM db.csdn
WHERE password RLIKE '^[a-zA-Z]+$';