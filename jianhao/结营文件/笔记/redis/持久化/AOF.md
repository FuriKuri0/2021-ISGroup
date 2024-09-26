# AOF

### 类似于日志信息，将每一天命令存入

AOF在默认情况下是关闭的，需要通过修改conf文件去开启

```
#是否开启AOF功能，默认是no
appendonly yes
#AOF文文件的名字
appendfilename "appendonly.aof"
```

AOF的命令记录的频率配置：

```
#表示每执行一次写命令，立刻记录在AOF文件中
appendfsync always
#写命令完成后放入AOF缓冲区，然后表示每隔一秒将缓冲区数据写到AOF文件中，是默认方案
appendfsync	everysec
#写命令执行完先放入AOF缓冲区，由操作系统决定何时将缓冲区内容写入AOF文件
appendfsync	no
```

