package IdleStateEvent;

import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.timeout.IdleStateEvent;
import io.netty.util.concurrent.EventExecutorGroup;

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
