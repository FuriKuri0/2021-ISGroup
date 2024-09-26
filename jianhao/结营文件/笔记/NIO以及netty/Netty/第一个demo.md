### 服务器端：

```java
public class NettyServer {

    public static void main(String[] args) throws Exception {
        //创建boosGroup 和 workgroup
        NioEventLoopGroup boosGroup = new NioEventLoopGroup();
        NioEventLoopGroup workerGroup = new NioEventLoopGroup();

        try {
            //创建服务器端的启动对象，配置参数
            ServerBootstrap bootstrap = new ServerBootstrap();

            bootstrap.group(boosGroup, workerGroup)  //设置两个线程组
                    .channel(NioServerSocketChannel.class)  //使用NioSocketChannel 作为服务器的通道实现
                    .childHandler(new ChannelInitializer<SocketChannel>() { //创建一个通道测试对象

                        //给pipeline设置处理器
                        @Override
                        protected void initChannel(SocketChannel socketChannel) throws Exception {
                            socketChannel.pipeline().addLast(new NettyServerHandler());
                        }
                    });

            System.out.println("服务器is ready");

            //锁定一个端口并且同步，生成一个ChannelFuture对象
            //启动服务器并且绑定端口
            ChannelFuture channelFuture = bootstrap.bind(6668).sync();

            //对关闭通道的监听
            channelFuture.channel().closeFuture().sync();
        }finally {
            boosGroup.shutdownGracefully();
            workerGroup.shutdownGracefully();
        }
    }
}
```

### 创建服务器端的处理器：

```java
//自定义一个handler，需要继承netty，规定好的某个HandlerAdapter(规范)
public class NettyServerHandler extends ChannelInboundHandlerAdapter {

    //读取数据共享
    /*
        1.ChannelHandlerContext 上下文对象-->含有管道pipeline，通道channel，等等信息
        2.Object msg ： 就是客户端发送的数据 默认Object
             */
    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {


        //将msg转换成一个ByteBuf
        //ByteBuf是netty提供的，不是Nio的ByteBuffer
        ByteBuf buf = (ByteBuf) msg;
        System.out.println("客户端发送消息是：" + buf.toString(CharsetUtil.UTF_8));
        System.out.println("客户端地址："+ctx.channel().remoteAddress());
    }


    //数据读取完毕
    @Override
    public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {
        //writeAndFlush是write+flush
        //将数据写入缓存，并刷新。需要对发送的数据进行编码
        ctx.writeAndFlush(Unpooled.copiedBuffer("hello，客户端",CharsetUtil.UTF_8));

    }



    //处理异常
    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        ctx.close();
    }
}
```

### 创建客户端：

```java
public class NettyClient {

    public static void main(String[] args) throws Exception{

        //客户端创建一个循环组
        NioEventLoopGroup eventExecutors = new NioEventLoopGroup();

        try {
            //创建客户端启动对象
            //注意客户端使用的是bootStrop
            Bootstrap bootstrap = new Bootstrap();

            //设置参数
            bootstrap.group(eventExecutors)
                    .channel(NioSocketChannel.class)
                    .handler(new ChannelInitializer<SocketChannel>() {
                        @Override
                        protected void initChannel(SocketChannel socketChannel) throws Exception {
                            socketChannel.pipeline().addLast(new NettyClientHandler()); //添加handler
                        }
                    });

            System.out.println("客户端 ， ok");

            ChannelFuture channelFuture = bootstrap.connect("192.168.137.1", 6668).sync();

            channelFuture.channel().closeFuture().sync();

        }finally {
            eventExecutors.shutdownGracefully();
        }
    }
}
```

### 创建客户端处理器：

```java
public class NettyClientHandler extends ChannelInboundHandlerAdapter {

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        System.out.println("client"+ctx);
        ctx.writeAndFlush(Unpooled.copiedBuffer("hello,server", CharsetUtil.UTF_8));
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {


        ByteBuf buf = (ByteBuf) msg;
        System.out.println("服务器回复的消息"+buf.toString(CharsetUtil.UTF_8));

        System.out.println("服务器地址："+ctx.channel().remoteAddress());
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        cause.printStackTrace();
        ctx.channel().close();
    }
}
```