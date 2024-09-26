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
 * @description: 用来校验调用文件接口的权限
 * @author: OuroborosNo2
 * @create: 2022-07-30 09:47
 **/
@Component
@Aspect
public class Permission4File {

    @Autowired
    private HttpServletRequest request;
    @Autowired
    private UserService userService;


    @Around("execution(* com.qgstudio.controller.FileController.uploadImg(*,*,*))")
    public Result onlySelf(ProceedingJoinPoint pjp) throws Throwable {
        User user = TokenUtil.getUser(request, userService);

        //权限1以上 管理员
        if(user.getPermission() >= SystemConstant.PERMISSION_ADMIN){
            //直接放行
            return (Result) pjp.proceed();
        }else{
            //获取参数
            Object[] args = pjp.getArgs();
            //判断是上传用户图片还是软件图片
            if("user".equals(args[1]) && (Integer)args[2] == user.getUser_id()){
                //只能上传自己的头像
                return (Result) pjp.proceed();
            }else {
                //权限不足
                return new Result(ResultEnum.FORBIDDEN.getCode(), ResultEnum.FORBIDDEN.getMsg());
            }
        }
    }

    @Around("execution(* com.qgstudio.controller.FileController.downloadImg(*,*)) ||" +
            "execution(* com.qgstudio.controller.FileController.downloadFile(*,*))")
    public Result everyone(ProceedingJoinPoint pjp) throws Throwable {
        return (Result) pjp.proceed();
    }

    @Around("execution(* com.qgstudio.controller.FileController.uploadFile(*,*,*))")
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
}
