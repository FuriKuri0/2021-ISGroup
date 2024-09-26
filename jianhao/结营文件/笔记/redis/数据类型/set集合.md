# Set集合的元素唯一不重复

**sadd添加、smembers查看所有元素、sismember判断是否存在、scard查看长度、srem移除指定元素的操作**

```
127.0.0.1:6379> sadd set1 caiqian jianhao dahuang feifei
(integer) 4
127.0.0.1:6379> smembers set1
1) "jianhao"
2) "caiqian"
3) "feifei"
4) "dahuang"
```

set中的排序方式：

当集合同时满足下面两个条件时，会使用intset编码：

1. 保持的都为整数
2. 元素数量不大于512个

当不满足上述两个条件的情况下，使用hashtable编码，元素是无需排序，使用intset编码的集合，元素是有序排列的

srandmember（抽随机）

```
127.0.0.1:6379> sadd set2 1 2 3
(integer) 3
127.0.0.1:6379> srandmember set2
"2"
```

spop（随机删除元素）、smove（移动指定元素到新的元素集合中）

```
spop set2  #随机删除set2中的一个元素，不带参数则为一
spop set2 1 #随机删除set2中的一个元素
spop set2 2 #随机删除set2中的梁两个元素
```

```
smove set2 setNew 1	#将set2中元素1移到setNew中，原元素在set2中删除
```

sdiff（差集）、sinter（交集）、sunion（并集）

```
127.0.0.1:6379> sadd set1 1 2 3
(integer) 3
127.0.0.1:6379> sadd set2 2 3 4
(integer) 3
127.0.0.1:6379> sdiff set1 set2		#差集
1) "1"
127.0.0.1:6379> sinter set1 set2	#交集
1) "2"
2) "3"
127.0.0.1:6379> sunion set1 set2	#并集
1) "1"
2) "2"
3) "3"
4) "4"
```

可以利用set的不可重复性，利用交集并集的方法寻找共同好友、共同关注点等等





