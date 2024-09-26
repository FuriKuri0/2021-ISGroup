package com.qgstudio.service;

import com.qgstudio.controller.Result;
import com.qgstudio.po.User;

import java.security.NoSuchAlgorithmException;
import java.util.Map;

/**
 * @program: Software-management-platform
 * @description: 用户模块业务层
 * @author: stop.yc
 * @create: 2022-07-25 09:35
 **/
public interface UserService {
    /**
     * 用户登录功能
     * @param user 登录的用户封装对象
     * @return :返回用户结果集
     */
    Result<User> login(User user) throws NoSuchAlgorithmException;
    /**
     * 注册
     * @param user 不完全的用户对象
     * @return 结果集
     * @throws NoSuchAlgorithmException
     */
    Result register(User user) throws NoSuchAlgorithmException;

    /**
     * 修改用户数据,不包括密码和权限
     * @param user
     * @return 结果集
     * @throws NoSuchAlgorithmException
     */
    Result update(User user) throws NoSuchAlgorithmException;

    /**
     * 根据id删除用户
     * @param id
     * @return 结果集
     */
    Result delete(Integer id);


    /**
     * 修改密码
     * @param id
     * @param oldPwd 旧密码
     * @param newPwd 新密码
     * @return 结果集
     * @throws NoSuchAlgorithmException
     */
    Result updatePassword(Integer id,String oldPwd,String newPwd) throws NoSuchAlgorithmException;

    /**
     * 设置权限
     * @param id 用户id
     * @param permission 权限级别
     * @return 结果集
     */
    Result changePermission(Integer id,Integer permission);

    /**
     * 根据id查询用户
     * @param id
     * @return 结果集
     */
    Result getById(Integer id);

    /**
     * 根据用户名查询用户
     * @param username
     * @return 结果集
     */
    Result getByUsername(String username);

    /**
     * 根据手机号码查询用户
     * @param phone_number
     * @return 结果集
     */
    Result getByPhone_number(String phone_number);

    /**
     * 根据邮箱查询用户
     * @param email
     * @return 结果集
     */
    Result getByEmail(String email);

    /**
     * 查询所有用户
     * @return 结果集
     */
    Result getAll();


}
