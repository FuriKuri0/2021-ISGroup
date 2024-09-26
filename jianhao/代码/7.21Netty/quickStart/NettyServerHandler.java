package quickStart;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.util.CharsetUtil;


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
