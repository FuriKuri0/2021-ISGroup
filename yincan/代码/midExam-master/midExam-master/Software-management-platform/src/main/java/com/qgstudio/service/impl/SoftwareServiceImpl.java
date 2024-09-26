package com.qgstudio.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.qgstudio.controller.Result;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.dao.NoticeDao;
import com.qgstudio.dao.SoftwareDao;
import com.qgstudio.dao.VersionDao;
import com.qgstudio.po.Notice;
import com.qgstudio.po.Software;
import com.qgstudio.po.Version;
import com.qgstudio.service.NoticeService;
import com.qgstudio.service.SoftwareService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class SoftwareServiceImpl implements SoftwareService {

    @Autowired
    private SoftwareDao softwareDao;
    @Autowired
    private VersionDao versionDao;
    @Autowired
    private NoticeDao noticeDao;

    @Autowired
    private NoticeService noticeService;

    /**发布软件时同时发布第一个版本。需要事务管理，其中一个插入不成功就回滚*/
    @Override
    @Transactional(rollbackFor = Exception.class,propagation = Propagation.REQUIRED)
    public Result add(Software software, Version version) throws IOException {
        //设置为当前时间
        version.setRelease_date(new Date());
        //加入事务
        ResultEnum result1 = softwareDao.save(software)!=0 ? ResultEnum.SOFTWARE_SAVE_OK : ResultEnum.SOFTWARE_SAVE_ERR;
        //插入后自动赋值software_id
        version.setSoftware_id(software.getSoftware_id());
        //加入事务
        ResultEnum result2 = versionDao.save(version)!=0 ? ResultEnum.VERSION_SAVE_OK : ResultEnum.VERSION_SAVE_ERR;
        //发布软件后,进行消息通知
        ResultEnum result3;
        //不加入事务,独自新建事务,依赖外层而不影响外层，事务传播行为propagation设为嵌套NESTED
        try{
            //没执行成功只会回滚内部事务,不会回滚外部事务~~~
            noticeService.addNotice(version, "发布");
            result3 = ResultEnum.NOTICE_SAVE_OK;
        }catch (Exception e){
            result3 = ResultEnum.NOTICE_SAVE_ERR;
        }
        Map<String,Integer> map = new HashMap<>();
        map.put("software_id",software.getSoftware_id());
        map.put("version_id",version.getVersion_id());
        return new Result(result1.getCode(),result1.getMsg()+"&"+result2.getMsg()+"&"+result3.getMsg(),map);
    }

    @Override
    public Result update(Software software) {
        ResultEnum result = softwareDao.update(software)!=0 ? ResultEnum.SOFTWARE_UPDATE_OK : ResultEnum.SOFTWARE_UPDATE_ERR;
        return new Result(result.getCode(),result.getMsg());
    }

    @Override
    @Transactional(rollbackFor = Exception.class,propagation = Propagation.REQUIRED)
    public Result delete(Integer id) {
        //删除软件的同时还要删除其所有版本,还要删除其所有通知
        //先获取其所有版本
        List<Version> allBySoftware_id = versionDao.getAllBySoftware_id(id);

        ResultEnum result1 = softwareDao.delete(id)!=0 ? ResultEnum.SOFTWARE_DELETE_OK : ResultEnum.SOFTWARE_DELETE_ERR;
        //删除计数
        ResultEnum result2;
        //初始化为失败,如果成功会改的
        ResultEnum result3 = ResultEnum.NOTICE_DELETE_ERR;
        int count = 0;
        for (Version version : allBySoftware_id) {
            //删除版本
            int vId = version.getVersion_id();
            count += versionDao.delete(vId);
            //删除版本对应的通知
            Notice notice = noticeDao.getNoticeByVersionId(vId);
            //通知是有可能已经被删除的,所以判断
            try {
                if(notice != null) {
                    noticeDao.delete(notice.getNotice_id());
                }
                result3 = ResultEnum.NOTICE_DELETE_OK;
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        result2 = count !=0 ? ResultEnum.VERSION_DELETE_OK : ResultEnum.VERSION_DELETE_ERR;
        return new Result(result1.getCode(),result1.getMsg()+"&"+result2.getMsg()+"&"+result3.getMsg());
    }

    @Override
    public Result<Software> getById(Integer id) {
        Software software = softwareDao.getById(id);
        ResultEnum result = software!=null ? ResultEnum.SOFTWARE_GET_OK : ResultEnum.SOFTWARE_GET_ERR;
        return new Result(result.getCode(),result.getMsg(),software);
    }

    @Override
    public Result<List<Software>> getByIds(List<Integer> ids) {
        List<Software> softwareList = softwareDao.getByIds(ids);
        ResultEnum result = !softwareList.isEmpty() ? ResultEnum.SOFTWARE_GET_OK : ResultEnum.SOFTWARE_GET_ERR;
        return new Result(result.getCode(),result.getMsg(),softwareList);
    }

    @Override
    public Result<Software> getBySoftware_name(String software_name, boolean isVague) {
        if(isVague){
            //处理字符串,两侧加上%以进行模糊查询
            software_name = "%" + software_name +"%";
        }
        List<Software> softwareList = softwareDao.getBySoftware_name(software_name);
        ResultEnum result = !softwareList.isEmpty() ? ResultEnum.SOFTWARE_GET_OK : ResultEnum.SOFTWARE_GET_ERR;
        return new Result(result.getCode(),result.getMsg(),softwareList);
    }

    @Override
    public Result<List> getByGroup(Integer group_id) {
        List<Software> softwareList = softwareDao.getByGroup(group_id);
        ResultEnum result = !softwareList.isEmpty() ? ResultEnum.SOFTWARE_GET_OK : ResultEnum.SOFTWARE_GET_ERR;
        return new Result(result.getCode(),result.getMsg(),softwareList);
    }

    @Override
    public Result<List> getAll() {
        List<Software> softwareList = softwareDao.getAll();
        ResultEnum result = !softwareList.isEmpty() ? ResultEnum.SOFTWARE_GET_OK : ResultEnum.SOFTWARE_GET_ERR;
        return new Result(result.getCode(),result.getMsg(),softwareList);
    }
}
