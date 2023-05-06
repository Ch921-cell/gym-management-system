## 环境配置

文档编写时间 2023-4-3。一下软件均可以直接下载使用现官网发布的最新稳定版本。

### 以下软件需要自行安装

- 请使用 IDEA 2023.1 完整版，社区版没有 web 插件且插件不是免费的。解锁完整版可以去官网进行学生认证，然后登陆认证后的账号即可解锁。

- 请安装 Java 17 进行程序的查看和编写。不建议使用更高的版本。

- MySQL 使用 8.0.23。安装过程中请添加完整权限用户 `user`，密码 `123456`。否则需要在文件 `mybatis-config.xml` 以及 `application.yml` 中将数据库用户名和密码改成自己定义的。完成安装后请建立数据库 `db`,并将 `db.sql` 注入该数据库中，同样也可以自定义数据库名称，但要同时修改上面两个文件中对应的代码。

### 以下版本供后续参考

- Spring boot 等版本可在 `pom.xml` 中查看。
- Spring boot 中内置 tomcat 版本为 10。

### 如何打开工程

右键 readme.md 所在目录，以 IDEA 打开工程即可。

### 运行程序后查看网站

打开自己的浏览器,输入`localhost:8080` 进行访问 。网页中的账户和密码请自行查看数据库进行测试。

