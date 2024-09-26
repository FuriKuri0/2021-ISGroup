package cn.stopyc.service;

import cn.stopyc.controller.Result;


public interface UserService {

    Result<Integer> login(String username, String password);
}
