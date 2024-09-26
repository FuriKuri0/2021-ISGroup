package quickStart;

import io.netty.bootstrap.Bootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;

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
