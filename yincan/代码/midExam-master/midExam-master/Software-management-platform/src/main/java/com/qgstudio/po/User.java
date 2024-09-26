package com.qgstudio.po;


import com.qgstudio.constant.regex;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.exception.BusinessException;
import org.springframework.stereotype.Component;

import java.util.regex.Pattern;

import java.util.Objects;

@Component
public class User {
    /**用户id*/
    private int user_id;
    /**用户名*/
    private String username;
    /**密码*/
    private String password;
    /**手机号码*/
    private String phone_number;
    /**邮箱*/
    private String email;
    /**权限，0为普通用户，1为管理员*/
    private int permission;


    public User(int user_id, String username, String password, String phone_number, String email, int permission) {
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.phone_number = phone_number;
        this.email = email;
        this.permission = permission;
    }

    public User() {
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        if (!Pattern.matches(regex.REGEX_NAME, username)) {
            throw new BusinessException(ResultEnum.EX_NAME.getCode(),ResultEnum.EX_NAME.getMsg());
        }
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        if (!Pattern.matches(regex.REGEX_EMAIL, email)) {
            throw new BusinessException(ResultEnum.EX_EMAIL.getCode(),ResultEnum.EX_EMAIL.getMsg());
        }
        this.email = email;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        if (!Pattern.matches(regex.REGEX_PHONE, phone_number)) {
            throw new BusinessException(ResultEnum.EX_PHONE.getCode(),ResultEnum.EX_PHONE.getMsg());
        }
        this.phone_number = phone_number;
    }

    public int getPermission() {
        return permission;
    }

    public void setPermission(int permission) {
        this.permission = permission;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        User user = (User) o;
        return user_id == user.user_id && permission == user.permission && username.equals(user.username) && password.equals(user.password) && Objects.equals(phone_number, user.phone_number) && Objects.equals(email, user.email);
    }

    @Override
    public int hashCode() {
        return Objects.hash(user_id, username, password, phone_number, email, permission);
    }

    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", phone_number='" + phone_number + '\'' +
                ", email='" + email + '\'' +
                ", permission=" + permission +
                '}';
    }
}
