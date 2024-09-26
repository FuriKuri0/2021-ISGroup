```
set name caiqian #设置key为name，value为caiqian
get name #查看key中的value，caiqian
APPEND name +jianhao #在key为name的value后追加jianhao
get name #caiqian+jianhao
STRLEN name #查看key为name的value的字符长度
```

注意：

如果插入数据中如果有空格信息的数据，请使用""双引号，否则会报错



#### 自增、自减操作

```
set num 0 #插入一个初始值为0的数据
incr num #指定key为num的数据自增1，并返回结果
decr num #指定key为num的数据自减1，并返回结果
INCRBY num 10  #incr后跟by  指定key为num的数据+10
DECRBY num 10  #decr后跟by  指定key为num的数据-10
```

#### 截取、代替操作

```
#截取操作
set key1 "hello world!"
GETRANGE key1 0 4 #截取字符串，相当于java中的subString，从0开始，截取到4位置。返回结果
特别：
GETRANGE key1 0 -1  #相当于get key1 获取整条数据
```

```
#替换操作
SETRANGE key1 5 8 #替换key1中字符串第五位置的数据变为8，结果返回hello8world
```

#### 设置过期时间

```
setex name 15 caiqian  #新建一个key为name，值为caiqian，过期时间为15s的字符串数据
ttl name #查看name的过期时间剩余
```

#### 不存在设置

```
setnx name jianhao  #与set不同，set会覆盖原有值，而setnx不会，若name已存在则返回0，创建失败，保留了原始数据，确保误操作
```

一个存入多个数据

```
mset name1 caiqina name2 jianhao	#插入多条数据
mget name1 name2  	#查看name1 ， name2中的值
```

```
mset student:1:name caiqian student:1:age 17
#student 相当于类名，1 相当于id，name 相当于属性
mget student:1:name student:1:age
```

```
getset name1 caiqian	#先get后set，先获取key，如果没有则，set进去，返回的是get的值
get name1 #caiqian

getset name1 jianhao	#先获取key，如果有，set替换新的值，返回get的值"caiqian"
get name1	#jianhao
```

