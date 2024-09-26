虚拟机Tomcat部署javaweb项目

# 配置java环境

前言：每个版本的配置方式大同小异，如果有配置过程中有什么问题，多看几篇博客总结实践。

## 安装jdk8

1. 首先需要删除lcentos自带的openjdk环境

```
rpm -qa |grep jdk -- 查找javajdk环境
rpm -e --nodeps jdk名称 -- 删除jdk
```

2. 通过xftp把jdk安装包从win传到linux
3. 安装jdk8

```
rpm -ivh jdk名称
```

4. 配置环境变量
   路径:/etc/profile

```
JAVA_HOME=/usr/java/jdk1.8.0_221-amd64
CLASSPATH=%JAVA_HOME%/lib:%JAVA_HOME%/jre/lib
PATH=$PATH:$JAVA_HOME/bin:$JAVA_HOME/jre/bin
export PATH CLASSPATH JAVA_HOME
```

5. 让配置生效

```
source /etc/profile
```



## 安装tomcat8

1. 配置tomcat8
2. 解压缩

```
tar  -zxvf  压缩包名称
```

3. 启动tomcat

进入bin目录下,

```
./startup.sh
```

4. Centos开放8080端口

+ 检查防火墙状态

```
firewall-cmd --state
```

running表示防火墙是开启的，如果是not running ，需要手动开启

```
systemctl start firewalld.service
```

+ 开放8080端口

```
firewall-cmd --zone=public --add-port=8080/tcp --permanent
```

+ 重启防火墙

```
systemctl restart firewalld.service
```

+ 重新载入配置

```
firewall-cmd --reload
```

## 安装mysql

1. 通过xftp将mysql安装包拷贝到linux
2. 解压缩

```
tar -xvf 名称
```

3. 删除自带的mariadb

```
rpm -e --nodeps mariadb-libs-5.5.68-1.el7.x86_64
```

4. 安装common,libs,client,server

```
rpm -ivh 名称
```

5. 初始化mysql

````
mysqld --initialize
````

6. 授权防火墙

```
chown mysql:mysql /var/lib/mysql -R;
systemctl start mysqld.service;
systemctl enable mysqld;
```

7. 查看数据库的初始化密码

```
cat /var/log/mysqld.log | grep password
```

8. 登录数据库

```
mysql -uroot -p
```

9. 修改密码

```
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root' 
```

10. 使用新密码登录
11. 退出mysql

12. 开启远程访问

```
create user 'root'@'%' identified with mysql_native_password by 'root';
grant all privileges on *.* to 'root'@'%' with grant option;
flush privileges;
```

13. 开放 3306 端口

```
firewall-cmd --zone=public --add-port=3306/tcp --permanent
systemctl restart firewalld.service
firewall-cmd --reload
```

14. MySQL 安装默认使用美国的时区，北京时间比美国晚 8 小时(mysql5.7不用改,)

```
set global time_zone='+8:00';
```

如果显示mysql驱动错误,先看版本,不行就把mysql驱动jar包java\jdk8\jre\lib\ext下