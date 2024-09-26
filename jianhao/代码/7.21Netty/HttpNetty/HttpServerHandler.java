package HttpNetty;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.handler.codec.http.*;
import io.netty.util.CharsetUtil;

import java.net.URI;

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
