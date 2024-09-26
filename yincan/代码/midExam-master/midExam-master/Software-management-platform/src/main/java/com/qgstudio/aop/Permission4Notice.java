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
import java.util.Map;

/**
 * @program: Software-management-platform
 * @description: 用来校验调用通知接口的权限
 * @author: OuroborosNo2
 * @create: 2022-07-30 09:47
 **/
@Component
@Aspect
public class Permission4Notice {

    @Autowired
    private HttpServletRequest request;
    @Autowired
    private UserService userService;

    @Around("execution(* com.qgstudio.controller.NoticeController.*(*))")
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

    @Around("execution(* com.qgstudio.controller.NoticeAndUserController.*(*))")
    public Result onlySelf(ProceedingJoinPoint pjp) throws Throwable {
        User user = TokenUtil.getUser(request, userService);

        //权限1以上 管理员
        if(user.getPermission() >= SystemConstant.PERMISSION_ADMIN){
            //直接放行
            return (Result) pjp.proceed();
        }else{
            //获取参数,没做空指针判断
            Object arg = pjp.getArgs()[0];
            if(pjp.getSignature().getName().equals("getByUserId")){
                if((Integer) arg == user.getUser_id()){
                    return (Result) pjp.proceed();
                }
            } else{
                //deleteByIds,deleteById
                //实际上keySet只有一个一个元素
                for (Object id : ((Map)arg).keySet()) {
                    if((Integer)id == user.getUser_id()){
                        return (Result) pjp.proceed();
                    }else{
                        return new Result(ResultEnum.FORBIDDEN.getCode(), ResultEnum.FORBIDDEN.getMsg());
                    }
                }
            }
            //权限不足
            return new Result(ResultEnum.FORBIDDEN.getCode(), ResultEnum.FORBIDDEN.getMsg());
        }
    }
}
