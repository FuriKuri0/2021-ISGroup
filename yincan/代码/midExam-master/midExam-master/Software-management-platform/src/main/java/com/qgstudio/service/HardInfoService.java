package com.qgstudio.service;


import com.qgstudio.controller.Result;
import com.qgstudio.po.HardInfo;

import java.util.List;

/**
 * 硬件信息业务层接口
 * @author YC104
 */
public interface HardInfoService {

    /**
     * 新增硬件信息
     * @param hardInfo :硬件信息
     * @return :返回封装了硬件信息的结果
     */
    Result<HardInfo> saveHardInfo(HardInfo hardInfo);

    /**
     *更新硬件信息
     * @param hardInfo :硬件信息
     * @return :返回封装了硬件信息的结果集
     */
    Result<HardInfo> update(HardInfo hardInfo);

    /**
     * 获取用户所有的硬件信息
     * @param user_id :用户id
     * @return :返回硬件信息结果集
     */
    Result<List<HardInfo>> getAll(int user_id);

    /**
     * 删除指定的硬件信息
     * @param hardInfo :硬件信息
     * @return :返回结果集
     */
    Result<Object> delete(HardInfo hardInfo);

}
