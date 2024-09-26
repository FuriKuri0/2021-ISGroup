package cn.stopyc.service.impl;

import cn.stopyc.controller.Result;
import cn.stopyc.controller.ResultEnum;
import cn.stopyc.dao.UserMapper;
import cn.stopyc.exception.BusinessException;
import cn.stopyc.exception.SystemException;
import cn.stopyc.po.User;
import cn.stopyc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @program: spring_01_quickstart
 * @description:
 * @author: stop.yc
 * @create: 2022-07-18 15:42
 **/
@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private  UserMapper userMapper;

    @Override
    public Result<Integer> login(String username, String password) {
        if (username == null || "".equals(username)) {
            throw new BusinessException(ResultEnum.PARAMETER_NOT_VALID.getCode(),"请正确输入",null);
        }


        try {
//            int i = 1 / 0;
        } catch (Exception e) {
            throw new SystemException(ResultEnum.SERVER_INTERNAL_ERROR.getCode(),"服务器访问超时,请重试",e);
        }

        User user = userMapper.selectByNameAndPassword(username, password);

        if (user == null) {
            return new Result<>(ResultEnum.PASSWORD_FAILED.getCode(), ResultEnum.PASSWORD_FAILED.getMsg(), -1);
        } else  {
            user.setPassword("");
            return new Result<>(ResultEnum.SUCCESS.getCode(), ResultEnum.SUCCESS.getMsg(), user.getPosition());
        }
    }
}
