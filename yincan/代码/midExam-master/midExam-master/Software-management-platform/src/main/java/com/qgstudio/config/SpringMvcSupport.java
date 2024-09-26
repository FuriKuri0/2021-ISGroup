package com.qgstudio.config;

import com.qgstudio.controller.interceptor.TokenInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-24 19:10
 **/
@Configuration
public class SpringMvcSupport extends WebMvcConfigurationSupport {

    @Autowired
    private TokenInterceptor tokenInterceptor;
    /*@Autowired
    private ProjectInterceptor projectInterceptor;*/


    @Override
    protected void addInterceptors(InterceptorRegistry registry) {
        //配置拦截器
        registry.addInterceptor(tokenInterceptor).addPathPatterns("/users","/softwares","/versions",
                "/notices","/notice_user","/licenses","/hardInfos","/files","/users/*","/softwares/*",
                "/versions/*", "/notices/*","/notice_user/*","/licenses/*","/hardInfos/*","/files/*" );
        /*registry.addInterceptor(projectInterceptor).addPathPatterns("/users","/softwares","/versions",
                "/notices","/notice_user","/licenses","/hardInfos","/files","/users/*","/softwares/*",
                "/versions/*", "/notices/*","/notice_user/*","/licenses/*","/hardInfos/*","/files/*" );*/

    }
    /*
    @Override
    protected void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/pages/**").addResourceLocations("/pages/");
        registry.addResourceHandler("/js/**").addResourceLocations("/js/");
        registry.addResourceHandler("/img/**").addResourceLocations("/img/");
        registry.addResourceHandler("/element-ui/**").addResourceLocations("/element-ui/");
        registry.addResourceHandler("/webapp/**").addResourceLocations("/webapp/");
        registry.addResourceHandler("/ws/**").addResourceLocations("/ws/");
    }
    */
}
