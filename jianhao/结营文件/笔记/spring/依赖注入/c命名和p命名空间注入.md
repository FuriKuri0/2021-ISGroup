## p命名空间（简化set注入）：

需要无参构造和set方法

第一步①：在配置文件的头部添加语句:

```
xmlns:p="http://www.springframework.org/schema/p"
```

第二步②：创建对象可以简写：

```xml
<bean id="  " class=" "  p:name=   />就可以创建name的值
```

## c命名空间（简化构造器注入）

需要有参构造

添加配置：

```
xmlns:c="http://www.springframework.org/schema/c"
```

创建对象：

```xml
<bean id = "   "   class = "  "  c:name=    />创建name对象
```

