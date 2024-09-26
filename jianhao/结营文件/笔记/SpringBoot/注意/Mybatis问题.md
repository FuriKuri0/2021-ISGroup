```
Invalid bound statement (not found): NettyWebSocket.Mapper.UserControlMapper.save
```

解决：xml文件中的映射地址写错



### 调用service层，service层中有mapper层的调用，报错：mapper空指针异常

产生的原因：如果是new出来的service对象，他其中@Autowire注解是不起作用的，所以在执行到mapper层方法的时候就会报空指针异常

解决办法：因为service是通过注入的方式获取mapper的实例，所以service对象的获取也应该通过注入的方式