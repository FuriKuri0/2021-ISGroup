### NIO的各种缺点：

1.API 复杂难用，尤其是 Buffer 的指针切来切去的，反人类设计
2 需要掌握丰富的知识，比如多线程和网络编程
3 可靠性无法保证，断线重连、半包粘包、网络拥塞统统需要自己考虑
4.空轮询 bug ， CPU 又 100% 了，一直未根除此问题



由于NIO使用的复杂，出现了Netty来实现

## Netty简介

Netty 是一个 NIO 客户端服务器框架，可快速轻松地开发网络应用程序，例如协议服务器和客户端。它极大地简化和简化了网络编程，例如 TCP 和 UDP 套接字服务器。



## 线程模型Reactor模式：

三种：

1. 单Reactor单线程
2. 单Reactor多线程
3. 主从Reactor多线程

### Netty线程模型主要是基于主从Reactor多线程模型

<img src="https://raw.githubusercontent.com/JIaaoooo/ImageHostingService/main/img/netty%E5%B7%A5%E4%BD%9C%E6%B5%81%E7%A8%8B.png" style="zoom:80%;" />
