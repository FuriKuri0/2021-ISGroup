package com.qgstudio.service;

import com.qgstudio.controller.Result;
import com.qgstudio.po.Version;

import java.io.IOException;
import java.util.List;
/**
 * @program: Software-management-platform
 * @description: 版本模块业务层
 * @author: stop.yc
 * @create: 2022-07-25 09:35
 **/
public interface VersionService {
    /**
     * 发布新版本
     * @param version
     * @return 结果集
     * @throws IOException
     */
    Result add(Version version) throws IOException;

    /**
     * 修改版本数据
     * @param version
     * @return 结果集
     * @throws IOException
     */
    Result update(Version version) throws IOException;

    /**
     * 通过id删除版本
     * @param id
     * @return 结果集
     */
    Result delete(Integer id);

    /**
     * 通过id查询版本
     * @param id
     * @return 结果集
     */
    Result<Version> getById(Integer id);

    /**
     * 据版本号和软件id查询版本
     * @param software_id
     * @param versionInf
     * @return 结果集
     */
    Result<Version> getByVersionInf(Integer software_id,String versionInf);

    /**
     * 根据软件id获得某个软件的最新版本
     * @param software_id
     * @return 结果集
     */
    Result<Version> getLatestBySoftware_id(Integer software_id);

    /**
     * 获得某个软件的所有版本
     * @param software_id
     * @return 结果集
     */
    Result<List> getAllBySoftware_id(Integer software_id);

    /**
     * 查询所有版本
     * @return 结果集
     */
    Result<List> getAll();
}
