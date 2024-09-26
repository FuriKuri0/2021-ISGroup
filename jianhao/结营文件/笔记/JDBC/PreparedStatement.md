## PreparedStatement执行sql对象

## 1.SQL注入问题：在拼接sql时，有些时候sql的特殊关键字参与字符串的拼接，会产生安全问题。



## 2.解决sql注入问题：使用PreparedStatement对象解决问题

## 3.预编译的SQL：参数使用占位符?

## 4.步骤：

​	1.导入驱动jar包

​	2.注册驱动

​	3.获取数据库连接对象 

`Connection conn = DriverManager.getConnection("jdbc:mysql:///jian","root","wjh189285");`

​	<u>4.定义sql</u>

​			sql参数使用占位符?   例如：`select * from Users where username = ? and password = ? ;`

​	5.获取执行sql语句的对象 `PreparedStatement ps = conn.preparedStatement( String sql);`

​	6.给?赋值：

​				方法：setXxx(参数1,参数2)             //参数1为  ?  的编号  ，参数2为 ? 的值

​	7.执行sql语句，接收返回值，不需要传递sql语句  ResultSet rs =ps.executeQuery();       //返回值为ResultSet类型

​	8.处理结果

​	9.释放资源



