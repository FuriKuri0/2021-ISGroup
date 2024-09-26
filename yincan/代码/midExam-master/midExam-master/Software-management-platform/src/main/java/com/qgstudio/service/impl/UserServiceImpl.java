package com.qgstudio.service.impl;

import com.qgstudio.constant.regex;
import com.qgstudio.controller.Result;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.dao.UserDao;
import com.qgstudio.exception.BusinessException;
import com.qgstudio.po.User;
import com.qgstudio.service.UserService;
import com.qgstudio.util.Md5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.regex.Pattern;

/**
 * @program: Software-management-platform
 * @description: UserService实现类
 * @author: stop.yc
 * @create: 2022-07-25 09:35
 **/
@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public Result<User> login(User user) throws NoSuchAlgorithmException {
        //1.调用userDao获取用户对象
        User userByUsername = userDao.getByUsername(user.getUsername());

        //2.数据查询,是否查得到
        if (userByUsername == null) {
            //2.1 空
            return new Result<>(ResultEnum.USER_USERNAME_ERROR.getCode(),ResultEnum.USER_USERNAME_ERROR.getMsg(),null);
        }else {
            //2.2不为空,检查密码
            if (userByUsername.getPassword().equals(Md5Utils.getMD5(user.getPassword()))) {
                userByUsername.setPassword("");
                return new Result<>(ResultEnum.USER_LOGIN_OK.getCode(),ResultEnum.USER_LOGIN_OK.getMsg(),userByUsername);
            } else {
                return new Result<>(ResultEnum.USER_PWD_ERROR.getCode(),ResultEnum.USER_PWD_ERROR.getMsg(),null);
            }
        }
    }

    @Override
    public Result<User> register(User user) throws BusinessException,NoSuchAlgorithmException {
        //由aop进行数据是否重复/合法的校验
        ResultEnum result = userDao.save(user) == 1 ? ResultEnum.USER_SAVE_OK : ResultEnum.SERVER_INTERNAL_ERROR;
        return new Result<>(result.getCode(),result.getMsg());
    }

    @Override
    public Result update(User user) throws BusinessException,NoSuchAlgorithmException {
        //由aop进行数据是否重复/合法的校验
        ResultEnum result = userDao.update(user)!=0 ? ResultEnum.USER_UPDATE_OK : ResultEnum.USER_UPDATE_ERR;
        return new Result(result.getCode(),result.getMsg());
    }

    @Override
    public Result updatePassword(Integer id, String oldPwd, String newPwd) throws NoSuchAlgorithmException {
        Result result = getById(id);
        User user = (User) result.getData();
        //查不到id就结束
        if(user == null){
            return result;
        }
        //判断输入的旧密码是否正确
        if(!Md5Utils.getMD5(oldPwd).equals(user.getPassword())){
            return new Result(ResultEnum.USER_PWD_ERROR.getCode(),ResultEnum.USER_PWD_ERROR.getMsg());
        }
        //判断密码是否合法
        if (!Pattern.matches(regex.REGEX_PWD, newPwd)) {
            throw new BusinessException(ResultEnum.EX_PWD.getCode(),ResultEnum.EX_PWD.getMsg());
        }
        //密码需要加密
        user.setPassword(Md5Utils.getMD5(newPwd));
        ResultEnum resultEnum = userDao.updatePassword(user.getUser_id(),user.getPassword())!=0 ? ResultEnum.USER_UPDATE_PASSWORD_OK : ResultEnum.USER_UPDATE_PASSWORD_ERR;
        return new Result(resultEnum.getCode(),resultEnum.getMsg());
    }

    @Override
    public Result delete(Integer id) {
        ResultEnum result = userDao.delete(id)!=0 ? ResultEnum.USER_DELETE_OK : ResultEnum.USER_DELETE_ERR;
        return new Result(result.getCode(),result.getMsg());
    }

    @Override
    public Result changePermission(Integer id, Integer permission) {
        ResultEnum result;
        if(permission==0){
            //设置为为用户权限
            result = userDao.changePermission(id,0)!=0 ? ResultEnum.USER_CHANGE_PERMISSION_OK : ResultEnum.USER_CHANGE_PERMISSION_ERR;
        }else if(permission==1){
            //设置为为管理员权限
            result = userDao.changePermission(id,1)!=0 ? ResultEnum.USER_CHANGE_PERMISSION_OK : ResultEnum.USER_CHANGE_PERMISSION_ERR;
        }else{
            result = ResultEnum.USER_CHANGE_PERMISSION_ERR;
        }
        return new Result(result.getCode(),result.getMsg());
    }

    @Override
    public Result<User> getById(Integer id) {
        User user = userDao.getById(id);
        ResultEnum result;
        if(user != null){
            result = ResultEnum.USER_GET_OK;
        }else{
            result = ResultEnum.USER_GET_ERR;
        }
        return new Result(result.getCode(),result.getMsg(),user);
    }
    @Override
    public Result<User> getByUsername(String username) {
        User user = userDao.getByUsername(username);
        ResultEnum result;
        if(user != null){
            result = ResultEnum.USER_GET_OK;
            //将密码隐藏
            user.setPassword("");
        }else{
            result = ResultEnum.USER_GET_ERR;
        }
        return new Result(result.getCode(),result.getMsg(),user);
    }

    @Override
    public Result<User> getByPhone_number(String phone_number) {
        User user = userDao.getByPhone_number(phone_number);
        ResultEnum result;
        if(user != null){
            result = ResultEnum.USER_GET_OK;
            //将密码隐藏
            user.setPassword("");
        }else{
            result = ResultEnum.USER_GET_ERR;
        }
        return new Result(result.getCode(),result.getMsg(),user);
    }

    @Override
    public Result<User> getByEmail(String email) {
        User user = userDao.getByEmail(email);
        ResultEnum result;
        if(user != null){
            result = ResultEnum.USER_GET_OK;
            //将密码隐藏
            user.setPassword("");
        }else{
            result = ResultEnum.USER_GET_ERR;
        }
        return new Result(result.getCode(),result.getMsg(),user);
    }

    @Override
    public Result<List> getAll() {
        List<User> userList = userDao.getAll();
        ResultEnum result = !userList.isEmpty() ? ResultEnum.USER_GET_OK : ResultEnum.USER_GET_ERR;
        return new Result(result.getCode(),result.getMsg(),userList);
    }

}
