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
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

/**
 * @program: Software-management-platform
 * @description: 用来校验调用版本接口的权限
 * @author: OuroborosNo2
 * @create: 2022-07-30 09:47
 **/
@Component
@Aspect
public class Permission4Version {

    @Autowired
    private HttpServletRequest request;
    @Autowired
    private UserService userService;

    /**
     * 只有管理员能调用
     * @param pjp
     * @return 代替切入点方法返回
     * @throws Throwable
     */
    @Around("execution(* com.qgstudio.controller.VersionController.add(*)) ||" +
            "execution(* com.qgstudio.controller.VersionController.update(*)) ||" +
            "execution(* com.qgstudio.controller.VersionController.delete(*))")
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

    /**
     * 任何权限都直接放行
     * @param pjp
     * @return 代替切入点方法返回
     * @throws Throwable
     */
    @Around("execution(* com.qgstudio.controller.VersionController.getById(*)) ||" +
            "execution(* com.qgstudio.controller.VersionController.getByVersionInf(*,*)) ||" +
            "execution(* com.qgstudio.controller.VersionController.getLatestBySoftware_id(*)) ||" +
            "execution(* com.qgstudio.controller.VersionController.getAllBySoftware_id(*)) ||" +
            "execution(* com.qgstudio.controller.VersionController.getAll())")
    public Result everyone(ProceedingJoinPoint pjp) throws Throwable {
        return (Result) pjp.proceed();
    }
}
