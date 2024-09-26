package NettyChat.ChatClient;

import io.netty.bootstrap.Bootstrap;
import io.netty.channel.Channel;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelPipeline;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;
import io.netty.handler.codec.string.StringDecoder;
import io.netty.handler.codec.string.StringEncoder;

import java.util.Scanner;

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
