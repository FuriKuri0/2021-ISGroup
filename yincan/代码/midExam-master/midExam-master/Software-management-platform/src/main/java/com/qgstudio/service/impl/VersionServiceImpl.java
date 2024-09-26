package com.qgstudio.service.impl;

import com.qgstudio.controller.Result;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.dao.SoftwareDao;
import com.qgstudio.dao.VersionDao;
import com.qgstudio.po.Version;
import com.qgstudio.service.NoticeService;
import com.qgstudio.service.VersionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.util.Date;
import java.util.List;

/**
 * @program: Software-management-platform
 * @description: VersionService实现类
 * @author: stop.yc
 * @create: 2022-07-25 09:35
 **/
@Service
@Transactional
public class VersionServiceImpl implements VersionService {

    @Autowired
    private VersionDao versionDao;
    @Autowired
    private NoticeService noticeService;

    @Override
    @Transactional(propagation = Propagation.REQUIRED,rollbackFor = Exception.class)
    public Result add(Version version) throws IOException {
        version.setRelease_date(new Date());
        ResultEnum result1 = versionDao.save(version)!=0 ? ResultEnum.VERSION_SAVE_OK : ResultEnum.VERSION_SAVE_ERR;
        //发布软件后,进行消息通知
        ResultEnum result2;
        try {
            noticeService.addNotice(version, "更新");
            result2 = ResultEnum.NOTICE_SAVE_OK;
        }catch (Exception e){
            e.printStackTrace();
            result2 = ResultEnum.NOTICE_SAVE_ERR;
        }
        return new Result(result1.getCode(),result1.getMsg()+result2.getMsg());
    }

    @Override
    public Result update(Version version) {
        ResultEnum result = versionDao.update(version)!=0 ? ResultEnum.VERSION_UPDATE_OK : ResultEnum.VERSION_UPDATE_ERR;
        return new Result(result.getCode(),result.getMsg());
    }

    @Override
    public Result delete(Integer id) {
        ResultEnum result = versionDao.delete(id)!=0 ? ResultEnum.VERSION_DELETE_OK : ResultEnum.VERSION_DELETE_ERR;
        return new Result(result.getCode(),result.getMsg());
    }

    @Override
    public Result<Version> getById(Integer id) {
        Version version = versionDao.getById(id);
        ResultEnum result = version!=null ? ResultEnum.VERSION_GET_OK : ResultEnum.VERSION_GET_ERR;
        return new Result(result.getCode(),result.getMsg(),version);
    }

    @Override
    public Result<Version> getByVersionInf(Integer software_id, String versionInf) {
        Version version = versionDao.getByVersionInf(software_id,versionInf);
        ResultEnum result = version!=null ? ResultEnum.VERSION_GET_OK : ResultEnum.VERSION_GET_ERR;
        return new Result(result.getCode(),result.getMsg(),version);
    }

    @Override
    public Result<Version> getLatestBySoftware_id(Integer software_id) {
        Version version = versionDao.getLatest(software_id);
        ResultEnum result = version!=null ? ResultEnum.VERSION_GET_OK : ResultEnum.VERSION_GET_ERR;
        return new Result(result.getCode(),result.getMsg(),version);
    }

    @Override
    public Result<List> getAllBySoftware_id(Integer software_id) {
        List<Version> versionList = versionDao.getAllBySoftware_id(software_id);
        ResultEnum result = !versionList.isEmpty() ? ResultEnum.VERSION_GET_OK : ResultEnum.VERSION_GET_ERR;
        return new Result(result.getCode(),result.getMsg(),versionList);
    }

    @Override
    public Result<List> getAll() {
        List<Version> versionList = versionDao.getAll();
        ResultEnum result = !versionList.isEmpty() ? ResultEnum.VERSION_GET_OK : ResultEnum.VERSION_GET_ERR;
        return new Result(result.getCode(),result.getMsg(),versionList);
    }
}
