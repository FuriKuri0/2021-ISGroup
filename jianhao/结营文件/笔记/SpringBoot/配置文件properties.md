 官方建议使用以`yaml`结尾的

将`application.properties`改为`application.yaml`

# `yaml`

语法：

```
key： value  	中间要留有空格	
name: jianhao
#对象
student:
	name: jianhao
	age: 20
#行内写法
student: {name: jianhao,age: 20}	

#数组
pets:
	- cat
	- dog
pets: [cat,dog]	
```

而`properties`只能保存键值对。

对象的值可以在`yaml`文件中创建，可以注入到我们的配置文件中，<u>**直接对实体类赋值**</u>



#### 例子：（对JavaBean来和配置文件进行映射）

实体类对象

![](https://raw.githubusercontent.com/JIaaoooo/ImageHostingService/main/img/202207182210480.png)

配置文件给实体类对象赋值

![](https://raw.githubusercontent.com/JIaaoooo/ImageHostingService/main/img/202207182210229.png)

其中还可以在yaml配置文件中使用SPEL表达式



test运行：![](https://raw.githubusercontent.com/JIaaoooo/ImageHostingService/main/img/202207182211646.png)



#### 若给只需要对JavaBean中的某一个值配置，可以单独对他使用@value



## 资源文件的放置位置：

```
1.file:./config/			在项目下创建config下放置
2.file:./					直接在项目下放置
3.classpath:/config/		在resource下创建config目录下放置
4.classpath:/				直接在resource下放置
```

#### 优先级顺序逐渐降低



## 