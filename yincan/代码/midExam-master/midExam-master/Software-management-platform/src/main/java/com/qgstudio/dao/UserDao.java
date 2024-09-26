package com.qgstudio.dao;

import com.qgstudio.po.User;
import org.apache.ibatis.annotations.*;

import java.util.List;
/**
 * @program: Software-management-platform
 * @description: 用户模块持久层
 * @author: OuroborosNo2
 * @create: 2022-07-24 20:26
 **/
public interface UserDao {
    /**
     * 插入用户数据,权限默认为0,@Options注释使数据插入成功后将自增的id主键赋值给该软件对象
     * @param user 用户对象
     * @return 返回影响的行数
     */
    @Insert("INSERT INTO t_user(username,password,phone_number,email,permission) VALUES(#{username},#{password},#{phone_number},#{email},0)")
    @Options(useGeneratedKeys = true,keyProperty = "user_id",keyColumn = "user_id")
    public int save(User user);

    /**
     * 修改用户数据,不包括密码和权限
     * @param user 用户对象
     * @return 返回影响的行数
     */
    @Update("UPDATE t_user SET username=#{username},phone_number=#{phone_number},email=#{email} WHERE user_id=#{user_id}")
    public int update(User user);

    /**
     * 修改密码
     * @param user_id 用户id
     * @param newPwd 新密码
     * @return 返回影响的行数
     */
    @Update("UPDATE t_user SET password=#{newPwd} WHERE user_id=#{user_id}")
    public int updatePassword(@Param("user_id") int user_id,@Param("newPwd") String newPwd);

    /**
     * 根据id删除用户
     * @param user_id 用户id
     * @return 返回影响的行数
     */
    @Delete("DELETE FROM t_user WHERE user_id = #{user_id}")
    public int delete(int user_id);

    /**
     * 设置权限
     * @param user_id 用户id
     * @param permission 权限级别
     * @return 返回影响的行数
     */
    @Update("UPDATE t_user SET permission=#{permission} WHERE user_id=#{user_id}")
    public int changePermission(@Param("user_id") int user_id, @Param("permission")int permission);

    /**
     * 根据id查询用户
     * @param user_id 用户id
     * @return 返回查询到的user对象
     */
    @Select("SELECT * FROM t_user WHERE user_id = #{user_id}")
    public User getById(int user_id);

    /**
     * 根据用户名查询用户
     * @param username 用户名
     * @return 返回查询到的user对象
     */
    @Select("SELECT * FROM t_user WHERE username = #{username}")
    public User getByUsername(String username);

    /**
     * 根据手机号码查询用户
     * @param phone_number 手机号码
     * @return 返回查询到的user对象
     */
    @Select("SELECT * FROM t_user WHERE phone_number = #{phone_number}")
    public User getByPhone_number(String phone_number);

    /**
     * 根据邮箱查询用户
     * @param email 邮箱
     * @return 返回查询到的user对象
     */
    @Select("SELECT * FROM t_user WHERE email = #{email}")
    public User getByEmail(String email);

    /**
     * 查询所有用户
     * @return 返回查询到的user对象集
     */
    @Select("SELECT * FROM t_user")
    public List<User> getAll();

    /**
     * 获得所有用户的id
     * @return 返回所有user_id
     */
    @Select("SELECT `user_id` FROM t_user")
    public List<Integer> getAllId();

}
