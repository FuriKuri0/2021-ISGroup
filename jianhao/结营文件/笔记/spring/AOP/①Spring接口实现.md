# 方法一：Spring的接口实现

现有一个业务接口和实现类；

添加增强类：

```java
public class Log implements MethodBeforeAdvice {		//前置通知

   //method : 要执行的目标对象的方法
   //args : 被调用的方法的参数
   //target : 目标对象
   @Override
   public void before(Method method, Object[] args, Object target) throws Throwable {
       System.out.println( o.getClass().getName() + "的" + method.getName() + "方法被执行了");
  }
}
public class AfterLog implements AfterReturningAdvice {		//后置通知返回
   //returnValue 返回值
   //method被调用的方法
   //args 被调用的方法的对象的参数
   //target 被调用的目标对象
   @Override
   public void afterReturning(Object returnValue, Method method, Object[] args,Object target) throws Throwable {
       System.out.println("执行了" + target.getClass().getName()
       +"的"+method.getName()+"方法,"
       +"返回值："+returnValue);
  }
}
```



最后去Spring的文件中注册

```xml
<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
      xmlns:aop="http://www.springframework.org/schema/aop"
      xsi:schemaLocation="http://www.springframework.org/schema/beans
       http://www.springframework.org/schema/beans/spring-beans.xsd
       http://www.springframework.org/schema/aop
       http://www.springframework.org/schema/aop/spring-aop.xsd">

   <!--注册bean-->
   <bean id="userService" class="com.kuang.service.UserServiceImpl"/>
   <bean id="log" class="com.kuang.log.Log"/>
   <bean id="afterLog" class="com.kuang.log.AfterLog"/>

   <!--aop的配置-->
   <aop:config>
       <!--切入点 expression:表达式匹配要执行的方法-->
       <aop:pointcut id="pointcut" expression="execution(* com.kuang.service.UserServiceImpl.*(..))"/>
       <!--执行环绕; advice-ref执行方法(引用自) . pointcut-ref切入点-->
       <aop:advisor advice-ref="log" pointcut-ref="pointcut"/>
       <aop:advisor advice-ref="afterLog" pointcut-ref="pointcut"/>
   </aop:config>

</beans>

```

execution表达式：

|                符号                 | 表示：                                 |
| :---------------------------------: | -------------------------------------- |
|          第一个"  * "符号           | 表示返回值的类型为所有                 |
| `com.kuang.service.UserServiceImpl` | AOP所切的服务的包名，也就是业务部分    |
|             第二个" * "             | 表示任何方法名                         |
|                (. .)                | 括号表示参数，两个点表示任意的参数类型 |

之后去进行实例化，运行,调用切点中的业务层方法也会执行 before after通知的方法 