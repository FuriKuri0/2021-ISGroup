# 使用步骤：

## 1.导入驱动jar包

## 2.注册驱动

```
Class.forName("com.mysql.cj.jdbc.Driver");
```

## 3.获得数据库连接对象 Connection

```
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/库名称", "用户名", "密码");
```

方法：`static Connection getConnection(String url , String user , String psaaword)`

url : 指定连接的路径

  *语法：jdbc:mysql://ip地址(域名):端口号/数据库名称

 *细节：如果连接的是本机mysql服务器，并且mysql服务默认端口是3306，则url可以简写为：jdbc:mysql:///数据库名称

#### Connection：

#### 1.功能：

###### 	1）获取执行sql的对象

​			Statement createStatement();

​			 PreparedStatement  preparedStatement(String sql)

###### 	2)管理事务

​		开启事务：setAutocommint(boolen autoCommit) : 调用方法设置参数为false，即开启事务

​		提交事务：commit()

​		回滚事务：rollback()

### 4.实现sql

```
String sql = "update student set math = 130 " ;
```

### 5.获取执行sql语句的对象 Statement

```
Statement stmt = conn.createStatement();
```

##### Statement:

执行sql语句

1.boolen execute (String sql) :可执行任意的sql

2.int executeUpdate (String sql) ：执行DML(insert、 update、 delete) 语句 、 DDL(create 、alter、 drop)语句

​		返回值：返回一个int型，表示表格中有多少行收到影响，若返回为0则没有执行

3.ResultSet executeQuery (String sql) :执行DQL (select ) 语句 

​		返回值：ResultSet：结果集对象，封装查询结果

###### ResultSet内的方法：

boolean next();   游标向下移动一行 默认第0行 

返回值：判断是否是最后一行末尾 false则在最后一行 ture则还有数据可以读取

getXxx( 参数 ) : 获取数据		Xxx代表数据类型  参数：int值：代表列的编号(从1开始)   Sting值：代表列名称

例如getInt(num)

### 6.执行SQL，接受返回结果

```
int count = stmt.executeUpdate(sql); //executeUpdate方法的返回值是一个int
```

### 7.处理结果

```
System.out.println(count);
```

### 8.释放资源

```
stmt.close();
conn.close();
```