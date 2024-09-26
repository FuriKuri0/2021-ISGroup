# Selector选择器

一个selector可以管理多个通道，他能检测到多个通道是否有事件发生，只有当连接\通道真正需要读写数据时候，才进行读写，

这就大大的减少小了系统的开销，不必为每个连接都创建一个线程，不用维护多个线程。

不需要频繁的做切换



## 工作流程：（NIO非阻塞网络编程原理）

1. 当客户端连接时，会通过ServerSocketChannel的到SocketChannel

2. 将socketChannel注册到Selector上，使用方法register(Slector sel , int ops)，【int ops表明该通道的读写权限】，一个selector可以注册多个SocketChannel
3. 注册后返回一个SelectionKey，会和该Selector关联（通过集合的方式）
4. Selector进行监听select方法，返回有时间发生的通道的个数
5. 当通道有事件需要发生，会进一步得到各个SelectionKey
6. 再通过SelectionKey反向获得SocketChannel，使用方法（channel()）
7. 通过的道德channel，完成业务  





### 说明：

1. 在Netty的IO线程`NioEventLoop`聚合了Selector(选择器，也叫多路复用器)
2. 线程通常将非阻塞的IO的空闲时间用于在其他的通道上执行IO操作，所以单独的线程可以管理多个输入和输出通道
3. 一个IO线程可以并发处理N个客户的连接和读写操作



相关方法：

```
selector.select()	//阻塞监听
selector.selct(long timeout)	//阻塞时间，时间过后停止监听
selector.weakup();		//唤醒
selector.selectNow;		//不阻塞，立马返回
```





![](https://raw.githubusercontent.com/JIaaoooo/ImageHostingService/main/img/selectionKey.png)

![](https://raw.githubusercontent.com/JIaaoooo/ImageHostingService/main/img/serverSocketChannel.png) 