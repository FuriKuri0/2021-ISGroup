# 三种装配方式：

1. #### xml中显示装配
2. #### java中显示装配
3. #### 隐式自动装配【*】

## xml中自动装配：

```xml
<bean id="peple" class = "test.pojo.person" antuwire="[byName | byType]"
```

### byName(靠Name找):

1. 将查找其类中所有的set方法名，例如setCat，获得将set去掉并且首字母小写的字符串，即cat。所以要求id与set方法相同
2. 需要保证所有的bean的id唯一
3. 去spring容器中寻找是否有此字符串名称id的对象。
4. 如果有，就取出注入；如果没有，就报空指针异常。

### byType(靠Class找)：

需要保证，同一类型的对象，在Spring容器中唯一，如果不唯一则会报错



## 注解自动装配

## @Autowired

1.在spring配置文件中引用context文件头

```xml
xmlns:context="http://www.springframework.org/schema/context"

http://www.springframework.org/schema/context
http://www.springframework.org/schema/context/spring-context.xsd
```

2.配置注解支持：

```xml
<context:annotation-config/>

<bean id="dog" class="com.kuang.pojo.Dog"/>
<bean id="cat" class="com.kuang.pojo.Cat"/>
<bean id="user" class="com.kuang.pojo.User"/>
```

使用:

User类中的set方法可以去掉，取而代之用@Autowired注解

```java
@Autowired
private Cat cat;
```



## @Qualifier

@Autowired是根据类型自动装配的，加上@Qualifier则可以根据byName的方式自动装配

@Qualifier不能单独使用

测试：

bean.xml下写入

```xml
<bean id="dog1" class="com.kuang.pojo.Dog"/>
<bean id="dog2" class="com.kuang.pojo.Dog"/>
<bean id="cat1" class="com.kuang.pojo.Cat"/>
<bean id="cat2" class="com.kuang.pojo.Cat"/>
```

由于有多个class属性不唯一，会报错

加上@Qualifier

```java
@Autowired
@Qualifier(value = "cat2")
private Cat cat;
@Autowired
@Qualifier(value = "dog2")
private Dog dog;
```

即可



## @Resource

#### 装配步骤：

1. @Resource如有指定的name属性，则先按照属性进行byName方式装配
2. 其次在使用默认的byName方式装配
3. 如果以上都不成功，则使用byType的方式自动装配
4. 都不成功则报错

例如

```java
public class User {
   //如果允许对象为null，设置required = false,默认为true
   @Resource(name = "cat2")
   private Cat cat;
   @Resource
   private Dog dog;
   private String str;
}
```

```xml
<bean id="dog" class="com.kuang.pojo.Dog"/>
<bean id="cat1" class="com.kuang.pojo.Cat"/>
<bean id="cat2" class="com.kuang.pojo.Cat"/>
<bean id="user" class="com.kuang.pojo.User"/>
```



## 使用注解开发：



## @Component

1.在xml配置文件中添加

```xml
<!--指定注解扫描包-->
<context:component-scan base-package="com.kuang.pojo"/>		//base-package后跟要扫描的文件夹
```

2.在指定包下添加注解

```java
@Component      //相当于<bean id="user" class="test.pop.User"/>
public class User {
    public String name;
    @Value("健豪")    //相当于<property name="name" value="健豪"/>
    public void setName(String name) {
        this.name = name;
    }
```

3.实例化运行

注意：getBean后" user"是小写的

```java
ApplicationContext context = new ClassPathXmlApplicationContext("bean.xml");
User user =  context.getBean("user" , User.class);
String name = user.getName();
System.out.println(name);
```

##### @Component的衍生注解

为了更好的分层，Spring可以使用其他三个注解，功能多是一样的

* dao【@Respository】
* service【@Service】
* controller【@Controller】

然后修改扫描包：

`context:component-scan base-package="com.kuang"`（扩大范围，包含dao层service层controller层pojo层）



## 作用域

`Scope`	例子：

```java
@Component
@Socpe("signelton | prototype ")
```



## 总结：

1. xml管理更加的便捷，适用于任何场景
2. 注解 如果不是自己的类就用不了，维护相对复杂

所以：最好用xml来管理bean，用注解来注入属性，两者结合使用

注意：使用注解要开启注解的支持