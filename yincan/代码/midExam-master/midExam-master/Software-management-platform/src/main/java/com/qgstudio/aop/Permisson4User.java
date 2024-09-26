package com.qgstudio.aop;

import com.qgstudio.constant.SystemConstant;
import com.qgstudio.controller.Result;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.controller.interceptor.TokenInterceptor;
import com.qgstudio.po.User;
import com.qgstudio.service.UserService;
import jdk.nashorn.internal.parser.Token;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

import com.qgstudio.util.TokenUtil;

/**
 * @program: Software-management-platform
 * @description: 用来校验调用用户接口的权限
 * @author: OuroborosNo2
 * @create: 2022-07-30 09:47
 **/
@Component
@Aspect
public class Permisson4User {

    @Autowired
    private HttpServletRequest request;
    @Autowired
    private UserService userService;

    /**
     * 普通用户仅能对自己操作，管理员则直接放行
     * @param pjp
     * @return 代替切入点方法返回
     * @throws Throwable
     */
   @Around("execution(* com.qgstudio.controller.UserController.update(*)) ||" +
            "execution(* com.qgstudio.controller.UserController.updatePassword(*)) ||" +
            "execution(* com.qgstudio.controller.UserController.getById(*)) ||" +
            "execution(* com.qgstudio.controller.UserController.getByUsername(*)) ||" +
            "execution(* com.qgstudio.controller.UserController.getByPhone_number(*)) ||" +
            "execution(* com.qgstudio.controller.UserController.getByEmail(*))")
    public Result onlySelf(ProceedingJoinPoint pjp) throws Throwable {
       User user = TokenUtil.getUser(request, userService);

       //权限1以上 管理员
        if(user.getPermission() >= SystemConstant.PERMISSION_ADMIN){
            //直接放行
            return (Result) pjp.proceed();
        }
        //else 验证是否对用自己操作
        int user_id;
        //获取切入点方法的参数
        Object arg = pjp.getArgs()[0];
        //确定方法,先判断是否可以强转
        String method = pjp.getSignature().getName();
        switch (method){
            case "update":
                user_id = ((User) arg).getUser_id();
                break;
            case "updatePassword":
                user_id = (Integer) ((Map)arg).get("user_id");
                break;
            case "getById":
                user_id = (Integer) arg;
                break;
            case "getByUsername":
                if (arg.equals(user.getUsername())) {
                    return (Result) pjp.proceed();
                }else{
                    //不相同则提示权限不足
                    return new Result(ResultEnum.FORBIDDEN.getCode(),ResultEnum.FORBIDDEN.getMsg());
                }
            case "getByPhone_number":
                if(arg.equals(user.getPhone_number())){
                    return (Result) pjp.proceed();
                }else{
                    //不相同则提示权限不足
                    return new Result(ResultEnum.FORBIDDEN.getCode(),ResultEnum.FORBIDDEN.getMsg());
                }
            case "getByEmail":
                if(arg.equals(user.getEmail())){
                    return (Result) pjp.proceed();
                }else{
                    //不相同则提示权限不足
                    return new Result(ResultEnum.FORBIDDEN.getCode(),ResultEnum.FORBIDDEN.getMsg());
                }
            default:
                //实际不会有别的可能
                return null;
        }

        //参数中id是否与用户自己id相同
        if(user_id == user.getUser_id()){
            //相同则放行
            return (Result) pjp.proceed();
        }else{
            //不相同则提示权限不足
            return new Result(ResultEnum.FORBIDDEN.getCode(),ResultEnum.FORBIDDEN.getMsg());
        }
    }

    /**
     * 只有管理员能调用
     * @param pjp
     * @return 代替切入点方法返回
     * @throws Throwable
     */
   @Around("execution(* com.qgstudio.controller.UserController.delete(*)) ||" +
            "execution(* com.qgstudio.controller.UserController.getAll())")
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
     * 只有超级管理员能调用
     * @param pjp
     * @return
     * @throws Throwable
     */
   @Around("execution(* com.qgstudio.controller.UserController.changePermission(*,*))")
    public Result onlySuperAdmin(ProceedingJoinPoint pjp) throws Throwable {
       User user = TokenUtil.getUser(request, userService);

       //权限9 超级管理员
       if (user.getPermission() == SystemConstant.PERMISSION_SUPER_ADMIN) {
           //直接放行
           return (Result) pjp.proceed();
       } else {
           //权限不足
           return new Result(ResultEnum.FORBIDDEN.getCode(), ResultEnum.FORBIDDEN.getMsg());
       }
   }
}
