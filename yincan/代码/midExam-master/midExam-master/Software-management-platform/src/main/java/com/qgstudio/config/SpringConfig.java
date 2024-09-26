package com.qgstudio.config;

import com.qgstudio.po.User;
import com.qgstudio.service.UserService;
import com.qgstudio.util.TokenUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.*;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.servlet.http.Cookie;

/**
 * @program: Software-management-platform
 * @description:spring的配置类,加载非表现层的对应的bean
 * @author: stop.yc
 * @create: 2022-07-24 19:10
 **/
@Configuration
@ComponentScan({"com.qgstudio.service","com.qgstudio.aop"})
@PropertySource("classpath:jdbc.properties")
@Import({JdbcConfig.class,MybatisConfig.class})
@EnableAspectJAutoProxy
@EnableTransactionManagement
public class SpringConfig {


}
