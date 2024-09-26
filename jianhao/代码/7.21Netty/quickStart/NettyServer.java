package quickStart;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;

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
