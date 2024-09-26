# **Hash**（哈希）

**hset（添加hash）、hget（查询）、hgetall（查询所有）、hdel（删除hash中指定的值）、hlen（获取hash的长度）、hexists（判断key是否存在）操作**

```
hset hash1 name caiqian age 17		#添加内容
hget hash1 name		#caiqian
hgetall	hash1		#获取hash1中的所有元素
hdel hash1 age		#删除hash1中的key(可多个)，key后的value也会被删除
hlen hash1			#获取hash1集合的长度
HEXISTS hash1 name	#判断是否存在以name为key，存在则返回1，否则0
```

hkeys（获取所有key）、hvals（获取所有value）、hincrby（给值加值）、hsetnx（添加不存在的数据）		

```
127.0.0.1:6379> hset grade num1 90 num2 89 num3 99
(integer) 3
127.0.0.1:6379> hkeys grade		#查看所有key
1) "num1"	
2) "num2"
3) "num3"
127.0.0.1:6379> hvals grade	#查看所有value值
1) "90"
2) "89"
3) "99"
127.0.0.1:6379> hincrby grade num1 10	#返回的是更改后的结果
(integer) 100
##########hsetnx操作
127.0.0.1:6379> hsetnx grade num4 60	#添加一个新的num4，不存在则添加成功返回1
(integer) 1
127.0.0.1:6379> hsetnx grade num1 90	#已存在num1，则添加失败，返回0
(integer) 0
127.0.0.1:6379> hgetall grade
1) "num1"
2) "100"
3) "num2"
4) "89"
5) "num3"
6) "99"
7) "num4"
8) "60"
```

