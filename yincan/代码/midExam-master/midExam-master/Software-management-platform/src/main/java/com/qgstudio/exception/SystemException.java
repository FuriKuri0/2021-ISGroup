package com.qgstudio.exception;

/**
 * @program: Software-management-platform
 * @description: 自定义异常，用于封装异常信息，对异常进行分类
 * @author: stop.yc
 * @create: 2022-07-24 19:10
 **/
public class SystemException extends RuntimeException {

    private Integer code;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public SystemException(Integer code, String message) {
        super(message);
        this.code = code;
    }

    public SystemException(Integer code, String message, Throwable cause) {
        super(message, cause);
        this.code = code;
    }
}
