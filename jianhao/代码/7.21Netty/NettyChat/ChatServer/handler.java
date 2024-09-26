package NettyChat.ChatServer;

import io.netty.channel.Channel;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.channel.group.ChannelGroup;
import io.netty.channel.group.DefaultChannelGroup;
import io.netty.util.concurrent.GlobalEventExecutor;

import java.nio.channels.SocketChannel;
import java.text.SimpleDateFormat;

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
