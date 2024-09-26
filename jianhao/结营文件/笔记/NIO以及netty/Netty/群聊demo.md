### 服务器端：

```java

public class server {

    private int port;

    public server(int port) {
        this.port = port;
    }


    public void run()throws Exception{
//创建两个线程组
        NioEventLoopGroup bossGroup = new NioEventLoopGroup();
        NioEventLoopGroup workerGroup = new NioEventLoopGroup();


        try {


            ServerBootstrap serverBootstrap = new ServerBootstrap();

            serverBootstrap.group(bossGroup, workerGroup)
                    .channel(NioServerSocketChannel.class)
                    .childOption(ChannelOption.SO_BACKLOG, 128)
                    .childOption(ChannelOption.SO_KEEPALIVE, true)
                    .childHandler(new ChannelInitializer<SocketChannel>() {
                        @Override
                        protected void initChannel(SocketChannel socketChannel) throws Exception {
                            //获取到pipeline
                            ChannelPipeline pipeline = socketChannel.pipeline();
                            //添加一个解码器
                            pipeline.addLast("decoder", new StringDecoder());
                            //添加编码器
                            pipeline.addLast("encoder", new StringEncoder());
                            //添加自己的handler业务处理
                            pipeline.addLast(new handler());
                        }
                    });

            System.out.println("服务器启动");
            ChannelFuture channelFuture = serverBootstrap.bind(port).sync();
            channelFuture.channel().closeFuture().sync();

        }finally {
            bossGroup.shutdownGracefully();
            workerGroup.shutdownGracefully();
        }
    }


    public static void main(String[] args) throws Exception {

        new server(8081).run();

    }
}
```

### 服务器的处理器

```java
public class handler extends SimpleChannelInboundHandler<String> {

    //定义一个Channel组，管理所有的channel                                    全局事件执行器（单例）
    private static ChannelGroup channelGroup = new DefaultChannelGroup(GlobalEventExecutor.INSTANCE);


    SimpleDateFormat dateFormat =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        //第一个被调用的，表示连接已建立，一旦连接第一个被执行
    //将当前channel加入到channel组中
    @Override
    public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
        //获取到channel
        Channel channel = ctx.channel();
        //将该客户推送到其他在线的客户端
        channelGroup.add(channel);
        //将channelGroup中的所有channel遍历，并且发送消息
        channelGroup.writeAndFlush("[客户端]" + channel.remoteAddress()+"加入聊天");

    }


    //表示channel处于活动状态
    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        System.out.println(ctx.channel().remoteAddress() + "  上线了\n");
    }

    //表示channel处于非活动状态
    @Override
    public void channelInactive(ChannelHandlerContext ctx) throws Exception {
        System.out.println(ctx.channel().remoteAddress() + "   离线了");
    }


    //离线
    @Override
    public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
        //将某某离线提示给，当前在线的客户
        Channel channel = ctx.channel();
        channelGroup.writeAndFlush(channel.remoteAddress() + "离线\n");

        //当channel出发handlerRemoved后，channelGroup会自动的将其移除

    }

    @Override
    protected void channelRead0(ChannelHandlerContext ctx, String s) throws Exception {


        final Channel channel = ctx.channel();

        channelGroup.forEach(ch -> {
            if(channel!=ch){    //不是当前的channel
                ch.writeAndFlush("客户 "+channel.remoteAddress()+ " 发送了消息："+ s +"\n");
            }else{
                ch.writeAndFlush("消息发送\n");
            }
        });


    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        ctx.channel().close();
    }
}
```



### 客户端

```java
public class client {

    private final String host;
    private final int port;

    public client(String host, int port) {
        this.host = host;
        this.port = port;
    }


    public void run() throws Exception{

        NioEventLoopGroup group = new NioEventLoopGroup();


        try {
            Bootstrap bootstrap = new Bootstrap()
                    .group(group)
                    .channel(NioSocketChannel.class)
                    .handler(new ChannelInitializer<SocketChannel>() {
                        @Override
                        protected void initChannel(SocketChannel socketChannel) throws Exception {

                            //获取到pipeline
                            ChannelPipeline pipeline = socketChannel.pipeline();
                            //添加一个解码器
                            pipeline.addLast("decoder", new StringDecoder());
                            //添加编码器
                            pipeline.addLast("encoder", new StringEncoder());
                            //添加自己的handler业务处理
                            pipeline.addLast(new handler());
                        }
                    });
            ChannelFuture channelFuture = bootstrap.connect(host, port).sync();
            Channel channel = channelFuture.channel();
            System.out.println("本地"+channel.localAddress());

            //客户端需要输入信息，则要创建一个扫描器
            Scanner scanner = new Scanner(System.in);
            while(scanner.hasNextLine()){
                String s = scanner.nextLine();
                //通过channel发送到服务器端
                channel.writeAndFlush(s+"\r\n");

            }

        }finally {
            group.shutdownGracefully();
        }

    }

    public static void main(String[] args) throws Exception {
        new client("192.168.253.1",8081).run();
    }
}
```

### 客户端处理器

```java
public class handler extends SimpleChannelInboundHandler<String> {

    @Override
    protected void channelRead0(ChannelHandlerContext channelHandlerContext, String s) throws Exception {
        System.out.println(s.trim());	//直接显示消息
    }
}
```