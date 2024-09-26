# AOP

#### 理解：面向切面编程。利用AOP可以对业务逻辑的各个部分进行隔离，从而使业务逻辑之间的耦合度降低，提高程序的可复用性，提高开发效率

`SpringAOP`下，通过Advice定义横切逻辑，Spring中支持的五种Advice：

![SpringAOP支持的五种Advice逻辑](https://raw.githubusercontent.com/JIaaoooo/ImageHostingService/main/img/202207160915993.png)

AOP在Spring中的作用：

<u>可以使用AOP对原本的方法进行新增功能，但不改动原代码。</u>



- 横切关注点：跨越应用程序多个模块的方法或功能。即是，与我们业务逻辑无关的，但是我们需要关注的部分，就是横切关注点。如日志 , 安全 , 缓存 , 事务等等 …
- 切面（`Aspect `）：横切关注点 <u>被模块化</u> 的特殊对象。即，它是一个**类**。
- 通知（`Advice`）：切面必须要完成的工作。即，<u>**它是类中的一个方法**</u>。
- 切入点（`PointCut`）：切面通知 执行的 “地点”的定义。
- 连接点

使用AOP先Spring导入依赖：

```xml
<!-- https://mvnrepository.com/artifact/org.aspectj/aspectjweaver -->
<dependency>
   <groupId>org.aspectj</groupId>
   <artifactId>aspectjweaver</artifactId>
   <version>1.9.4</version>
</dependency>
```

xml配置文件中：

```http
xmlns:aop="http://www.springframework.org/schema/aop"

http://www.springframework.org/schema/aop
http://www.springframework.org/schema/aop/spring-aop.xsd
```



