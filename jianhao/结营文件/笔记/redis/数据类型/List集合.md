**lpush左插入（插入数据在左侧开始进去）**

**lrange查询集合**

**rpush右插入（插入数据在右侧开始进去）**

如果key不存在则新建，如果已存在在添加元素

```
lpush list v1	#新增一个集合
lpsuh list v2
lpush list v3
#批量添加集合元素
lpush list1 v1 v2 v3 v4 v5
LRANGE list1 0 -1 #查看全部元素，显示v5 v4 v3 v2 v1顺序像栈
LRANGE list1 0 1 	#返回v5 v4
#rpush右插入
rpush list2 v1 v2 v3 v4 v5
LRANGE list2 0 -1 #返回 v1 v2 v3 v4 v5
```

```
127.0.0.1:6379> lpush list v1 v2 v3 v4 v5
(integer) 5
127.0.0.1:6379> lpush list v1 v2
(integer) 7
127.0.0.1:6379> LRANGE list 0 -1
1) "v2"
2) "v1"
3) "v5"
4) "v4"
5) "v3"
6) "v2"
7) "v1"
```

lpop左移除、rpop右移除****

```
lpop list1 #从头部开始移除第一个元素 返回移除元素v5
rpop list2 #从尾部开始移除，返回被移除元素v5
```

**lindex（查询指定下标元素）、llen（获取集合长度） 操作**

```
FLUSHALL #清空
lpush list v1 v2 v3 v4 v5
lindex list 1 #从0开始获取指定下标位置的元素，返回值v2
llen list #获取指定集合的长度
```

**lrem根据value移除指定的值**

语法：lrem key count value

当count大于0，从左（表头）开始删除

当count小于0，从右（表尾）开始删除

当count为0，删除表中所有的该元素

```
FLUSHALL
127.0.0.1:6379> lpush list v1 v1 v2 v2
(integer) 4
127.0.0.1:6379> lrem list 1 v1
(integer) 1
127.0.0.1:6379> lrange list 0 -1
1) "v2"
2) "v2"
3) "v1"
127.0.0.1:6379> lrem list 0 v1 #这里的参数数量，如果实际中集合元素数量不达标，不会报错，全部移除后返回成功移除后的数量值
(integer) 1
127.0.0.1:6379> lrange list 0 -1
1) "v2"
2) "v2"
```

ltrim(截取元素)、rpoppush（移除指定集合中最后一个元素到一个新的集合中）

```
127.0.0.1:6379> LRANGE list 0 -1
1) "v4"
2) "v3"
3) "v2"
4) "v1"
127.0.0.1:6379> ltrim list 1 2  #通过下标截取指定的长度，这个list已经被改变了，只剩下我们所指定截取后的元素
OK
127.0.0.1:6379> LRANGE list 0 -1
1) "v3"
2) "v2"
```

```
lpush list v1 v2 v3 v4 v5
rpoppush list newlist #移除list集合中的最后一个元素到新的集合newlist中，返回的是移除元素
LRANGE newlist 0 -1 #v1
```

lset更新

```
lpush list v1 v2 v3 v4 v5
lset list 1 newv4 #将集合list中下标为1的位置改为newv4
```

linsert在指定位置插入数据

```
LINSERT list after v3 newv3	#在list集合中v3元素之后插入newv3
LINSERT list before v3 newv3 #在list集合中v3元素之前插入newv3
```

总结：

