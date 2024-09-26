package IdleStateEvent;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.sctp.SctpChannel;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.handler.logging.LogLevel;
import io.netty.handler.logging.LoggingHandler;
import io.netty.handler.timeout.IdleStateHandler;

import java.util.concurrent.TimeUnit;

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
