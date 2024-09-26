package com.qgstudio.config;

import com.qgstudio.controller.interceptor.server.SocketThread;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.Filter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;

/**
 * @program: Software-management-platform
 * @description:定义一个servlet容器启动的配置类,在里面加载spring的配置
 * @author: stop.yc
 * @create: 2022-07-24 19:10
 **/
public class SpringContainersInitConfig extends AbstractAnnotationConfigDispatcherServletInitializer {

    //项目启动时,新建socket通信线程
    private SocketThread socketThread;

    /**
     * 加载Spring配置类
     */
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[]{SpringConfig.class};
    }

    /**
     * 加载SpringMVC配置类
     */
    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[]{SpringMvcConfig.class};
    }

    /**
     * 设置SpringMVC请求地址拦截规则
     */
    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"};
    }

    /**
     * 设置servlet拦截器，进行修改字符编码等操作
     */
    @Override
    protected Filter[] getServletFilters() {
        CharacterEncodingFilter filter = new CharacterEncodingFilter();
        filter.setEncoding("UTF-8");
        return new Filter[]{filter};
    }

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {

        if (null == socketThread) {
//新建线程类
            socketThread = new SocketThread();
//启动线程
            socketThread.start();
        }
        super.onStartup(servletContext);
//        this.registerDispatcherServlet(servletContext);
    }
}