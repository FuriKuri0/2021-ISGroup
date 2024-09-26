使用步骤:

1.导入jar包

2.定义配置文件properties

3.加载配置文件，获取数据库连接池对象，通过工厂来获取 `DruidDataSourceFactory`

定义成员变量

`private static DataSource ds;`

 1. 加载配置文件

    `Properties pro = new Properties;`

    `pro.load(类名.class.getClassLoader().getresourceAsStream ("配置文件名") );`

    `ds = DruilDataSourceFactory.createDataSource( pro );`

4.获取连接