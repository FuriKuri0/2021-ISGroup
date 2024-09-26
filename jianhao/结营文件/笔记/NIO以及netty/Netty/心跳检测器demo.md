# 心跳检测器Demo

利用netty自带的处理器，`IdleStateHandler`去实现



### 服务器端：

```java
public class Server {


    public static void main(String[] args) throws Exception{
        NioEventLoopGroup bossGroup = new NioEventLoopGroup();
        NioEventLoopGroup workerGroup = new NioEventLoopGroup();
        try{

            ServerBootstrap bootstrap = new ServerBootstrap();

            bootstrap.group(bossGroup,workerGroup)
                    .channel(NioServerSocketChannel.class)
                    .handler(new LoggingHandler(LogLevel.INFO))  //添加一个日志的处理器
                    .childHandler(new ChannelInitializer<SocketChannel>() {
                        @Override
                        protected void initChannel(SocketChannel socketChannel) throws Exception {

                            ChannelPipeline pipeline = socketChannel.pipeline();
                            /*
                                IdleStateHandler
                                说明：
                                1.IdleStateHandler是netty提供的空闲状态处理器
                                2.readerIdleTime:表示多长时间没有读操作，就是发送一个心跳检测包，判断是否连接
                                3.writerIdleTime：表示多长时间没写操作，然后发送一个心跳检测包，判断是否连接
                                4.allIdleTime:表示多久时间没读写操作了，然后发送一个心跳检测包，判断是否连接
                                5.当IdleStateHandler触发后就会，传递给管道的下一个handler，去处理，通过回调下一个handler的方法：userEventTriggered
                             */
                            pipeline.addLast(new IdleStateHandler(3,5,7, TimeUnit.SECONDS));
                            //加入一个对空闲检测进一步处理的handler
                            pipeline.addLast(new ServerHandler());
                        }
                    });

            System.out.println("服务器启动");
            ChannelFuture channelFuture = bootstrap.bind(8081).sync();
            channelFuture.channel().closeFuture().sync();

        }finally {
            bossGroup.shutdownGracefully();
            workerGroup.shutdownGracefully();
        }
    }
}
```

#### handler

```java
public class ServerHandler extends ChannelInboundHandlerAdapter {

    /***
     *
     * @param ctx   上下文
     * @param evt   事件
     * @throws Exception
     */
    @Override
    public void userEventTriggered(ChannelHandlerContext ctx, Object evt) throws Exception {
        if(evt instanceof IdleStateEvent){


//            将evt 向下转型 IdleStateEvent
            IdleStateEvent event = (IdleStateEvent) evt;

            String eventTye = null ;
            switch (event.state()){
                case READER_IDLE:
                    eventTye = "读空闲";
                    break;
                case WRITER_IDLE:
                    eventTye = "写空闲";
                    break;
                case ALL_IDLE:
                    eventTye="读写空闲";
                    break;
            }

            System.out.println(ctx.channel().remoteAddress() +"超时事件为：  "+ eventTye);

            //发生读写空闲后关闭通道：
            if(eventTye.equals("读写空闲")){
                System.out.println(ctx.channel().remoteAddress() + "客户端断开连接");
                ctx.channel().close();
            }
        }
    }
}
```