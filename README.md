
- **这个是java代码连接数据库的软件**
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
<h1 id="20171227_2">下载数据库连接的驱动</h1>

- http://search.maven.org/  搜索：mysql java  找第一个
- 点 all(64) 不要选最新的 选5.1.45
- 复制 compile 'mysql:mysql-connector-java:5.1.45'
<h1 id="20171227_3">如何连接数据库</h1>

- View-Windows-Database  DataSource-MySQL