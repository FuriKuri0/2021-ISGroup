package com.qgstudio.controller.interceptor;
import com.alibaba.fastjson.JSONObject;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.util.TokenUtil;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.PrintWriter;

import static com.qgstudio.util.TokenUtil.getCookieByName;

/**
 * 进行token验证
 * @author Ouroboros
 * @date 2022.7.31
 */
@Component
public class TokenInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if((request.getRequestURI().equals("/users")&&request.getMethod().equals("POST"))
                || request.getRequestURI().equals("/users/register")){
            //登录和注册这两个请求不用验证token
            return true;
        }else{
            //其他请求验证token
            /*Cookie cookie = getCookieByName(request, "TOKEN");
            System.out.println("cookie:"+cookie.getValue());*/
            //通过cookie不成功，就试试header
            String token = request.getHeader("Authorization");
            System.out.println("header:"+token);
            /*if (null != cookie) {
                //通过cookie验证token是否正确
                if (TokenUtil.verify(cookie.getValue())) {
                    System.out.println("cookie验证成功");
                    return true;
                }
            }*/
            if(token != null){
                if (TokenUtil.verify(token)) {
                    System.out.println("header验证成功");
                    return true;
                }
            }
            //到此说明验证都失败了，需要登录
            response.setCharacterEncoding("UTF-8");
            //只好手写Result json了
            response.setContentType("application/json");
            PrintWriter writer = response.getWriter();
            String result = "{\"code\": %d, \"msg\": \"%s\", \"data\": null}";
            writer.write(String.format(result, ResultEnum.UNAUTHORIZED.getCode(), ResultEnum.UNAUTHORIZED.getMsg()));
            return false;
        }
    }


}