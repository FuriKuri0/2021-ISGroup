# Hutool

Hutool是一个小而全的Java工具类库，通过静态方法封装，降低相关[API](https://so.csdn.net/so/search?q=API&spm=1001.2101.3001.7020)的学习成本，提高工作效率

在Java开发中常常面对各种的类型转换，我们就可以使用hutool中的方法去实现

依赖：

```
<dependency>
    <groupId>cn.hutool</groupId>
    <artifactId>hutool-all</artifactId>
    <version>5.5.2</version>
</dependency>
```

### 常用方法：

1. 类型转换Convert类

2. 自定义类型转换

   1. 在生产中，常常有各种的需求，封装好的方法不能满足，此时就需要有自定义的转化器（继承Converter<>）

      ```java
      public static class CustomConverter implements Converter<String>{
          @Override
          public String convert(Object value, String defaultValue) throws IllegalArgumentException {
              return "Custom: " + value.toString();
          }
      }
      ```

3. JavaBean的转换

   1. Bean转Map	`beanToMap`
   2. Bean转Bean   `copyProperties`
   3. Map转Bean   `fillBeanWithMap`



详细方法：查询api

<a>[入门和安装 (hutool.cn)](https://www.hutool.cn/docs/#/)</a>