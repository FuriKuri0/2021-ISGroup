package com.qgstudio.service;

import com.qgstudio.controller.Result;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.po.License;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-27 09:35
 **/
public interface LicenseService {

    /**
     * 保存许可证对象
     * @param license :传进许可证相关硬件信息
     * @return :返回封装好了的许可证
     * @throws Exception :抛出相关异常.
     */
    Result<License> save(License license) throws Exception;


    /**
     * 查看用户下的所有许可证
     * @param user_id :用户id
     * @return :返回所有许可证集合
     */
    Result<List<License>> selectAll(int user_id);


    /**
     * 升级许可证
     * @param license :需要升级成为的许可证镀锡
     * @return :返回一个新的许可证
     */
    Result<License> upgrade(License license) throws IOException;



}
