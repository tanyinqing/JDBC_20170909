


<h6 id="20171227_0">目录</h6>

- **这个是java代码连接数据库的软件**
- [如果下载和使用gradle创建项目](#20171227_1)
- [下载数据库连接的驱动](#20171227_2)
- [如何连接数据库](#20171227_3)
- [项目介绍](#20171227_4)
- [文件目录](#20171227_5)
- [文件目录](#20171227_)
- [文件目录](#20171227_)
- [文件目录](#20171227_)
- [文件目录](#20171227_)

<h1 id="20171227_5">项目介绍</h1>

- IP 地址数据库 文件管理数据库导入mysql数据库
- 纯真IP地址数据库
- 数据导入 MySQL 数据库
- 根据 IP 查询地理位置
- 根据数据分析全国主要城市的 IP 数量，并实现可视化
[返回](#20171227_0)
<h1 id="20171227_">文件目录</h1>
[返回](#20171227_0)
<h1 id="20171227_">文件目录</h1>
[返回](#20171227_0)
<h1 id="20171227_">文件目录</h1>
[返回](#20171227_0)
<h1 id="20171227_">文件目录</h1>
[返回](#20171227_0)
<h1 id="20171227_">文件目录</h1>
[返回](#20171227_0)

<h1 id="20171227_4">文件目录</h1>

|名称|说明|备注|
|---|---|---|
|Test|java代码连接数据库|[Test对应关系](src/main/java/demo/Test.java)|
|parer|从txt读取文件并存入数据库|[parer](src/main/java/demo/parer.java)|
|db|连接数据库的sql语言|[db](sql/db.sql)|

[返回](#20171227_0)
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

<h1 id="20171227_3">如何连接数据库</h1>

[返回](#20171227_0)<h1 id="20171227_3">如何连接数据库</h1>

[返回](#20171227_0)<h1 id="20171227_3">如何连接数据库</h1>

[返回](#20171227_0)<h1 id="20171227_3">如何连接数据库</h1>

[返回](#20171227_0)<h1 id="20171227_3">如何连接数据库</h1>

[返回](#20171227_0)<h1 id="20171227_3">如何连接数据库</h1>

[返回](#20171227_0)<h1 id="20171227_3">如何连接数据库</h1>

[返回](#20171227_0)