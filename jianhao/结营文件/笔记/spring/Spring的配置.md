## 别名

（添加了别名，也可以通过别名去获取这个对象）

```
<alias name="user" alias="userNew"/>
```

## Bean配置

id：bean的唯一标识符

class：bean对象所对应的全限定名：包名+类名

name：也是别名，而且name可以同时取多个别名

## import

将多个配置文件，导入合并为一个。

例如：

```xml
<import resource="bean.xml"/>
<import resource="bean2.xml"/>
<import resource="bean3.xml"/>
```

## 	实例化容器

```java
//获取Spring上下文对象
ApplicationContext context = new ClassPathXmlApplicationContxt("services.xml","daos.xml")
//xml文件可多个

//获取对象
context.getBean("id")
```

