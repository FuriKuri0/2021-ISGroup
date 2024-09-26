### 创建服务器端：

```java
public class Server {


    public static void main(String[] args)throws Exception{
        //创建boss和worker
        NioEventLoopGroup boosGroup = new NioEventLoopGroup();
        NioEventLoopGroup workerGroup = new NioEventLoopGroup();

        try{
			//创建服务器端的启动对象
            ServerBootstrap bootstrap = new ServerBootstrap();
			
            bootstrap.group(boosGroup,workerGroup)
                    .channel(NioServerSocketChannel.class)
                    .childHandler(new ServerInitializer());		//创建一个类导入，便于管理

            ChannelFuture channelFuture = bootstrap.bind(8081).sync();	//在网址输入http://localhost:8081/建立连接
            

            channelFuture.channel().closeFuture().sync();


        }finally {
            boosGroup.shutdownGracefully();
            workerGroup.shutdownGracefully();
        }
    }

}
```

### 创建ChanneInitializer类：

```java
public class ServerInitializer extends ChannelInitializer<SocketChannel> {
    @Override
    protected void initChannel(SocketChannel socketChannel) throws Exception {


        //得到管道
        ChannelPipeline pipeline = socketChannel.pipeline();

        //加入一个netty提供的httpServerCodec(编解码器)
        pipeline.addLast("MyHttpServerCodec",new HttpServerCodec());
        //添加处理器handler
        pipeline.addLast("MyHttpServerHandler",new HttpServerHandler());	//导人HttpServerHandler()自己创的处理器

    }
}
```

处理器：

```java
public class HttpServerHandler extends SimpleChannelInboundHandler<HttpObject> {
        /*
            SimpleChannelInboundHandler是ChannelInboundAdapter的子类
            HttpObject 是客户端和服务器端相互通信的数据封装成HttpObject

         */

    //读取客户端信息
    @Override
    protected void channelRead0(ChannelHandlerContext channelHandlerContext, HttpObject httpObject) throws Exception {

        if(httpObject instanceof HttpRequest){

            System.out.println("msg类型"+httpObject.getClass());
            System.out.println("客户端地址"+channelHandlerContext.channel().remoteAddress());
        }

        //通过uri过滤特定资源的方法：
        //获取uri
        HttpRequest httpRequest = (HttpRequest) httpObject;
        URI uri = new URI(httpRequest.uri());
        if("favicon.ico".equals(uri.getPath())){
            System.out.println("请求了favicon.ico ,不做响应");
            return;
        }

//        返回信息到浏览器[满足http协议]
        ByteBuf content = Unpooled.copiedBuffer("hello,我是服务器", CharsetUtil.UTF_8);

        //构造一个http的相应，即httpresponse
        FullHttpResponse response = new DefaultFullHttpResponse(HttpVersion.HTTP_1_1, HttpResponseStatus.OK, content);

        response.headers().set(HttpHeaderNames.CONTENT_TYPE,"text/plain;charset=utf-8");
        response.headers().set(HttpHeaderNames.CONTENT_LENGTH,content.readableBytes());

        channelHandlerContext.writeAndFlush(response);
    }
}
```