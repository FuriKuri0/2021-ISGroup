## SpringBoot操作Redis

Jedis是使用Java操作Redis的工具，在Spring中，加入了Spring-data-redis对redis底层开发包(Jedis，JRedis，RJC)进行高度封装。

其中提供了一个高度封装的接口"RedisTemplate"类，提供了各种操作、异常处理及序列化，支持发布订阅



导入依赖

```
<!--集成redis-->
        <dependency>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-data-redis</artifactId>
            <version>2.1.7.RELEASE</version>
        </dependency>
```

配置application.yml文件

```
server:
  port: 10001

spring:
  redis:
    host: 127.0.0.1
    port: 6379

```

基本测试

```java
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;

@SpringBootTest
public class testRedis {

    @Autowired(required = false)
    private RedisTemplate redisTemplate;

    @Test
    void getName(){
        redisTemplate.opsForValue().set("name","dadadingdada!");
        System.out.println(redisTemplate.opsForValue().get("name"));
    }
}

```



## Redis的持久化

当我们使用redisTamplate后获取的数据，已经实现将byte类型转换为String\...的类型

