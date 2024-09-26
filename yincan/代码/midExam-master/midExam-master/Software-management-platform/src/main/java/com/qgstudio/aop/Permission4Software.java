package com.qgstudio.aop;

import com.qgstudio.constant.SystemConstant;
import com.qgstudio.controller.Result;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.po.User;
import com.qgstudio.service.UserService;
import com.qgstudio.util.TokenUtil;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * @program: Software-management-platform
 * @description: 用来校验调用软件接口的权限
 * @author: OuroborosNo2
 * @create: 2022-07-30 09:47
 **/
@Component
@Aspect
public class Permission4Software {

    @Autowired
    private HttpServletRequest request;
    @Autowired
    private UserService userService;

    @Around("execution(* com.qgstudio.controller.SoftwareController.add(*)) ||" +
            "execution(* com.qgstudio.controller.SoftwareController.update(*)) ||" +
            "execution(* com.qgstudio.controller.SoftwareController.delete(*))")
    public Result onlyAdmin(ProceedingJoinPoint pjp) throws Throwable {
        User user = TokenUtil.getUser(request, userService);

        //权限1以上 管理员
        if(user.getPermission() >= SystemConstant.PERMISSION_ADMIN){
            //直接放行
            return (Result) pjp.proceed();
        }else{
            //权限不足
            return new Result(ResultEnum.FORBIDDEN.getCode(),ResultEnum.FORBIDDEN.getMsg());
        }
    }


    @Around("execution(* com.qgstudio.controller.SoftwareController.getById(*)) ||" +
            "execution(* com.qgstudio.controller.SoftwareController.getBySoftware_name(*,*)) ||" +
            "execution(* com.qgstudio.controller.SoftwareController.getByGroup(*)) ||" +
            "execution(* com.qgstudio.controller.SoftwareController.getAll())")
    public Result everyone(ProceedingJoinPoint pjp) throws Throwable {
        return (Result) pjp.proceed();
    }
}
