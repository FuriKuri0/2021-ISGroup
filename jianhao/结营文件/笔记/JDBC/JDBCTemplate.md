# Spring JDBC

#### Spring 框架对 JDBC 的简单封装。 提供了一个JDBCTemplate对象简化JDBC的开发

#### 步骤：

1.导入jar包

2.创建Jdbc Template对象。依赖于DataSource数据源

* JdbcTemplate  tmp = new JdbcTemplate(ds) ;

3.调用JdbcTemplate方法来实现CRUD（增删改）操作

- update()  ：执行DML语句。增删改语句	

- queryFormap()  : 将查询的结果用map封装-------将列名为key，值为value，而且只能存储一条语段

- queryForList()  ：将查询的结果用list封装--------将每一条记录封装为map集合，然后将map装载到list中

- query()   ：查询的结果，将结果封装为JavaBean对象

  `List<map> list =template.query(sql ,  new BeanPropertyRowMapper<Stu>(Stu.class) );`

  new BeanPropertyRowMapper< >( )是一个<u>默认接口</u>，自动将table中的文件读取到Stu类型

  中，Stu.class为对象的字节码，读取后存储到List集合中

  

- queryForObject ：将查询的结果封装为对象

  通常执行聚合函数：

  ```java
  String sql = "select cout(id) from stu";
  Long i = template.queryForObject(sql , Long.class);    
  ```

  

