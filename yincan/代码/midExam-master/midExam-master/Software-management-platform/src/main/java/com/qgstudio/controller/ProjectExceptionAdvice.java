package com.qgstudio.controller;

import com.qgstudio.exception.BusinessException;
import com.qgstudio.exception.SystemException;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.Objects;
import java.util.concurrent.Executors;

/**
 * @program: Software-management-platform
 * @description: 异常处理器
 * @author: stop.yc
 * @create: 2022-07-24 19:10
 **/
@RestControllerAdvice
public class ProjectExceptionAdvice {
    /**处理自定义异常SystemException*/
    @ExceptionHandler(SystemException.class)
    public Result<Object> doSystemException(SystemException ex){
        //记录日志
        //发送消息给运维
        //发送邮件给开发人员,ex对象发送给开发人员
        System.out.println("系统异常了"+ex.getMessage());
        return new Result<>(ex.getCode(),ex.getMessage(),null);
    }
    /**处理自定义异常BusinessException*/
    @ExceptionHandler(BusinessException.class)
    public Result<Object> doBusinessException(BusinessException ex){
        System.out.println("业务异常了"+ex.getMessage());
        return new Result<>(ex.getCode(),ex.getMessage(),null);
    }

    /**除了自定义的异常处理器，保留对Exception类型的异常处理，用于处理非预期的异常*/
    @ExceptionHandler(Exception.class)
    public Result<Object> doOtherException(Exception ex){
        //记录日志
        //发送消息给运维
        //发送邮件给开发人员,ex对象发送给开发人员

        ex.printStackTrace();
        if (ex instanceof HttpMessageNotReadableException) {
            HttpMessageNotReadableException e = (HttpMessageNotReadableException)ex;
            return new Result<>(ResultEnum.PARAMETER_NOT_VALID.getCode(), Objects.requireNonNull(e.getMessage()).substring(e.getMessage().indexOf(":") + 1, e.getMessage().indexOf(";")),null);
        }

        return new Result<>(ResultEnum.SERVER_INTERNAL_ERROR.getCode(),ResultEnum.SERVER_INTERNAL_ERROR.getMsg(),null);
    }
}
