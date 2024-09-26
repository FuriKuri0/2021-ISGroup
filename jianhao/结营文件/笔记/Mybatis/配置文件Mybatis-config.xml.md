# 配置文件Mybatis-config.xml



配置文件书写需要按照顺序



     <configuration>
    	<!-- 配置顺序如下
         properties  
     	settings
    	typeAliases
     	typeHandlers
     	objectFactory
     	plugins
     	environments
        environment
        transactionManager
        dataSource
        mappers
     -->
     </configuration>


## properties外部配置文件

注意`<configuration>`的书写顺序

```xml
<configuration>
    <!-- 导入外部配置文件-->
    <properties resource="properties文件的位置"/>

     <environments default="development">
            <environment id="development">
                <transactionManager type="JDBC"/>
                <dataSource type="POOLED">
                    <!--获取配置文件中的信息 -->
                    <property name="driver" value="${driver}"/>
                    <property name="url" value="${url}"/>
                    <property name="username" value="${username}"/>
                    <property name="password" value="${password}"/>
                   <!-- <property name="driver" value="com.mysql.jdbc.Driver"/>
                    <property name="url" value="jdbc:mysql://localhost:3306/mybatis?useSSl=true&amp;userUnicode=ture&amp;characterEncoding=UTF-8&amp;serverTimezone=GMT"/>
                    <property name="username" value="root"/>
                    <property name="password" value="root"/>-->
                </dataSource>
            </environment>
        </environments>
</configuration>

```

* 可以直接引入外部文件
* 可以在其中增加一些属性配置
* 如果两个文件有一个字段，会先读取内部文件，之后读取外部文件，外部文件将内部文件的信息所覆盖，所以使用的是外部文件

## 报错日记：

```log
Cannot load connection class because of underlying exception: com.mysql.cj.exceptions.WrongArgumentException: Malformed database URL, failed to parse the connection string near ';userUnicode=ture&amp;characterEncoding=UTF-8&amp;serverTimezone=GMT'. 	
```

就是在properties配置文件中，url直接复制，在配置文件中可以直接使用&，在xml中要改为`&amp;`，所以在properties中不要忘记改回



## 设置（settings）

| 设置名                   | 描述                                                         | 有效值                                                       | 默认值 |
| ------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------ |
| mapUnderscoreToCamelCase | 开去自动驼峰命名规则映射（即从数据库中user_name自动转化为userName） | true\|false                                                  | false  |
| logLimpl                 | 指定MyBatis所用日志的具体实现，未指定时将自动查询            | LOG4J2【掌握】 \| JDK_LOGGING \|  COMMONS_LOGGING \| STDOUT_LOGGING 【掌握】 \| NO_LOGGING | 未设置 |



```
常用的设置：
mapUnderscoreToCamelCase	开去自动驼峰命名规则映射（即从数据库中user_name自动转化为userName）
logLimpl		指定MyBatis所用日志的具体实现，未指定时将自动查询	
```



## 别名（typeAliases）

用来减少类完全限定名的冗余（在Mapper.xml文件中，我们重要写入全类名，我们就可以使用起别名的方式，减少冗余）

### 方法一

```xml
<typeAliases>
	<typeAlias type="demo01.pojo.User" alias="user"/>
</typeAliases>
```

### 方法二：扫描包的方式

```xml
<typeAlisase>
	<package name="demo01.pojo">
</typeAlisaes>
```

在每一个demo01,pojo中Java Bean，<u>在没有注解的情况下</u>，会使用Bean的首字母小写的非限定类名类作为他的别名

例如此时demo01.pojo中有一个User，则现在他的别名是user

加入注解：

```
@Alias("User")
public class User{...}
```



## 映射器（mappers）

###  三种方式：

使用相对类路径的资源引用

```
<mappers>
	<mapper resource="org/mybatis/builder/AuthorMaper.xml">
</mappers>	
```

使用映射器接口实现类的完全限定类名



```
<mappers>
	<mapper class="rog.mybatis.builder.AuthorMapper"/>
</mappers>
```

将包内的映射器实现全部注册为映射器

```
<mappers>
	<package name="org.mybatis.builder"/>
</mappers>
```

### 注意：后两种方式

* 若mapper接口没有采用注解方式，则mapper接口和xml文件的<u>名称</u>要相同，<u>且在同一个目录</u>

* 若mapper接口采用注解方式，则不需要xml