# Postman使用post请求方式，传递参数，后台接受出现中文乱码

首先是要明白是你postman的问题还是tomcat的问题，若是你正常运行项目时，输入中文，正常运行，那么就是postman的问题，否则则是数据库或者是tomcat的问题。下面方法的每一个都最好检查一下是否解决中文乱码，防止修改过多出现了其他的问题。

1.  postman问题

+ 检查header请求头：在Content——type后面加上charset=UTF-8。（若是修改不了，则新建一个Content-Type）![image-20220713125258831](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207131253919.png)
  在Accept改成和你后台要求的一样![image-20220713130759385](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207131307415.png)
+ settings修改：把设置里的Automatically follow redirects关闭![image-20220713125437133](https://cdn.jsdelivr.net/gh/stopyc/picb@main/202207131254174.png)

2. tomcat（1不行的话）

​	在tomcat的server.xml（tomcat/conf）中的connector位置加上——URIEncoding=“UTF-8”，如下：

```
<Connector port="8080" protocol="HTTP/1.1"
               connectionTimeout="20000"
               redirectPort="8443" URIEncoding="UTF-8"/>

```

3. mysqll（2不行的话）

+ 登录mysql服务器，输入指令：mysql -u root -p后输入数据库密码；
+ 输入指令：show variables like ‘%character%’;查看数据库编码；
+ 输入指令：exit退出mysql，找到mysql的配置文件/etc/mysql/conf.d/mysql.cnf
+ 修改配置文件如下：
  在[client]下追加：
  default-character-set=utf8
  在[mysqld]下追加：
  character-set-server=utf8
  在[mysql]下追加：
  default-character-set=utf8
+ 重启mysql服务：service mysql restart
+ 继续查看mysql编码。

[参考文章1](https://www.dounaite.com/article/6259ce28ae87fd3f79638f45.html)

[参考文章2](https://blog.csdn.net/weixin_44102466/article/details/107560343)