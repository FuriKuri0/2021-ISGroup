## Singleton（单例模式）：默认实现

```
 <bean id="ServiceImpl" class="cn.csdn.service.ServiceImpl" scope="singleton">
```

使用了两个bean去创建对象，赋予name值之后，getBean后仅有一个是name是可实例化的

## Prototype(原型模式)

```
 <bean id="ServiceImpl" class="cn.csdn.service.ServiceImpl" scope="prototype">
```

两个name都可实例化使用，getBean都会产生一个新的对象