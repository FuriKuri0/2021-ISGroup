# zSet有序集合

**zadd（添加）、zrange（查询）、zrangebyscore（排序小-大）、zrevrange（排序大-小）、zrangebyscore withscores（查询所有值包含key）操作**

```
zadd grade 2 stu2 1 stu 1 3 stu3
zrange grade 0 -1	#查看所有的值
zrangebyscore grade -inf +inf	#将grade中的值从小到大排序显示
zrangebyscore grade 0 1	#只查询0到1的值，病从小到大排序显示
zrangebyscore grade -inf +inf withscores #查询grade中的所有值，包括序号的值
```

zrevrange的语法：

zrevrange key start stop



**zrem（移除元素）、zcard（查看元素个数）、zcount（查询指定区间内的元素个数）操作**

```
zrem grade stu1 #移除指定元素，可选多个
zcount grade 0 2 #查询指定区间内的元素个数
```

