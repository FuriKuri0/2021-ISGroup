## 方法一：

### 添加@Mapper注解

```java
@Repository
@Mapper		//表示这个是一个mybatis的mapper类
public interface UserMapper{

}
```

## 方法二：

@MapperScan(" ") 扫描



## 配置文件：

```
#整合mybatis
#整合别名
mybatis.type-alibaba-package=com.pojo
mybatis.mapper-locations=classpath:mybatis/mapper
```

