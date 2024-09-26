package com.qgstudio.service;

import com.qgstudio.controller.Result;
import com.qgstudio.po.Software;
import com.qgstudio.po.User;
import com.qgstudio.po.Version;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.List;

/**
 * @program: Software-management-platform
 * @description: 软件模块业务层
 * @author: stop.yc
 * @create: 2022-07-25 09:35
 **/
public interface SoftwareService {
    /**
     * 发布新版本,同时调用softwareDao和versionDao
     * @param software 软件对象
     * @param version 版本对象
     * @return 结果集
     * @throws IOException
     */
    Result add(Software software, Version version) throws IOException;

    /**
     * 修改软件数据
     * @param software 软件对象
     * @return 结果集
     */
    Result update(Software software);

    /**
     * 根据软件id删除软件数据，还要删除其所有版本
     * @param id 软件id
     * @return 结果集
     */
    Result delete(Integer id);

    /**
     * 根据软件id查询软件数据
     * @param id 软件id
     * @return 含数据的结果集
     */
    Result<Software> getById(Integer id);

    /**
     * 批量根据软件id查询软件数据
     * @param ids 软件id集
     * @return 含数据的结果集
     */
    Result<List<Software>> getByIds(List<Integer> ids);

    /**
     * 通过软件名模糊/精确查询
     * @param software_name 软件名
     * @param isVague 是否模糊查找
     * @return 含数据的结果集
     */
    Result<Software> getBySoftware_name(String software_name, boolean isVague);

    /**
     * 查询同类型的软件
     * @param group_id 类型id
     * @return 含数据的结果集
     */
    Result<List> getByGroup(Integer group_id);

    /**
     * 查询所有软件
     * @return 含数据的结果集
     */
    Result<List> getAll();



}
