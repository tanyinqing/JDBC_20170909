

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




