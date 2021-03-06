
> 心得

**学习最重要的是代码，学习的更高境界是建立在能看懂更复杂的代码关系上，能以模块的思维认识到各个代码的关系和作用。图片也要以模块为最小单位。本地的代码是核心，远程的代码可以删除。本demo是用idea软件开发的。**

1. demo的首要目标
- IP 地址数据库  文件管理数据库导入mysql数据库  
  -[纯真IP地址数据库](http://cz88.net/)   
  - 数据导入 MySQL 数据库
  - 根据 IP 查询地理位置
  - 根据数据分析全国主要城市的 IP 数量，并实现可视化
- [Java代码连接数据库，并插入一条数据](src/main/java/demo/Test.java)
- [io从txt文件中读取数据，并把java代码把数据写入数据库](src/main/java/demo/parer.java)
- [ip段定义对象最小ip最大ip和对应的地址](src/main/java/demo/IP.java)
- [先把文本数据，读到一个对象的列表里，在循环列表把数据写入数据库](src/main/java/demo/Parser1.java)
- [从键盘输入一个ip地址 查询出它的地理位置](src/main/java/demo/Loc.java)
- [利用map统计城市ip的个数，和map的常规遍历](src/main/java/demo/Stat.java)
    - **map的遍历和利用map统计个数**
- [利用sql语句来操作数据库](sql/db.sql)
    - 包括mysql中专门处理ip的函数 inet_aton
- [存储ip的文本文件](ip.txt)
- [连接数据库驱动程序配置](build.gradle)
- http://echarts.baidu.com/demo.html 数据的可视化，有源代码，只要输入数据就可以实现了

> 2. CSDN 用户数据库
  
> [csdn.net](http://csdn.net)
  
   - 数据导入 MySQL 数据库 这个文件273M 比较大，利用mysql自身的方法实现数据的导入
   - 查询
       - 各列值的快速模糊查询
       - 排名前十的密码
       - 排名前十的邮箱
       - 弱密码用户数据
- [利用sql语句来导入大数据的数据库，并实现复杂查询](sql/csdn.sql)
    - 利用mysql自身的方法导入大数据的数据库
    - 大数据数据库的查询
    
> demo的其他目标 单独连接到markdown文件

- [定义绝对路径和相对路径的写法](markdown/定义绝对路径和相对路径的写法.md)
- [GitHub的 Fork 是什么意思](markdown/GitHub的Fork是什么意思.md)

- 程序员怎么升职 https://www.zhihu.com/question/20259295

<h6 id="20171227_0">目录</h6>

- [如果下载和使用gradle创建项目](#20171227_1)
- [下载数据库连接的驱动](#20171227_2)
- [如何连接数据库](#20171227_3)


<h1 id="20171227_1">如果下载和使用gradle创建项目</h1>

- 下载地址https://downloads.gradle.org/distributions/gradle-4.4.1-bin.zip
- 不用安装，解压缩就可以了
- 基于gradle创建文件， File New Project Gradle 文件
-  第一项是域名反写，第二项是项目名， 
- use local gradle dstribution
  gradle home:解压缩的gradle地址
- 一个项目要彻底关闭，就要在最近列表中去掉索引，然后在删除项目。
- 从GitHub检出项目的时候 use local gradle distribution 
使用本地工具分布，也就是用本地的gradle工具

[返回](#20171227_0)

<h1 id="20171227_2">下载数据库连接的驱动</h1>

- http://search.maven.org/  搜索：mysql java  找第一个
- 点 all(64) 不要选最新的 选5.1.45
- 复制 compile 'mysql:mysql-connector-java:5.1.45' 
    - 这种连接的方式不是太稳定，应该用下载jar包的方式去集成。
    - 连接后 External Libraries中可以看到这个库。
    - 实在无法导入就使用 Invalidate Cacher/Restart  使缓存器失效和重启
    [返回](#20171227_0)
    
<h1 id="20171227_3">如何连接数据库</h1>

- View-Windows-Database  DataSource-MySQL
[返回](#20171227_0)

