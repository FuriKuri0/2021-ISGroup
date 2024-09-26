package com.qgstudio.service.impl;

import com.qgstudio.controller.Result;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.dao.CodeDao;
import com.qgstudio.dao.HardInfoDao;
import com.qgstudio.po.Code;
import com.qgstudio.po.HardInfo;
import com.qgstudio.service.HardInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @program: Software-management-platform
 * @description: 硬件信息业务层接口实现类
 * @author: stop.yc
 * @create: 2022-07-28 13:24
 **/

@Service
@Transactional
public class HardInfoServiceImpl implements HardInfoService {

    @Autowired
    private HardInfoDao hardInfoDao;
    @Autowired
    private CodeDao codeDao;

    @Override
    public Result<HardInfo> saveHardInfo(HardInfo hardInfo) {
        //新增业务,
        //需要判断用户手下有没有重复的硬件信息,aop

        //成功的话,则直接添加
        ResultEnum resultEnum = hardInfoDao.save(hardInfo) != 0 ? ResultEnum.USER_HARD_SAVE_OK : ResultEnum.SERVER_INTERNAL_ERROR;
        return new Result<>(resultEnum.getCode(),resultEnum.getMsg());
    }

    @Override
    public Result<HardInfo> update(HardInfo hardInfo) {
        ResultEnum resultEnum = hardInfoDao.update(hardInfo) != 0 ? ResultEnum.HARD_UPDATE_USED_OK : ResultEnum.SERVER_INTERNAL_ERROR;
        return new Result<>(resultEnum.getCode(),resultEnum.getMsg());
    }

    @Override
    public Result<List<HardInfo>> getAll(int user_id) {
        List<HardInfo> all = hardInfoDao.getAll(user_id);
        return new Result<>(ResultEnum.HARD_SELECT_OK.getCode(),ResultEnum.HARD_SELECT_OK.getMsg(),all);
    }

    @Override
    public Result<Object> delete(HardInfo hardInfo) {
        List<Code> byUserIdAndInfoId = codeDao.getByUserIdAndInfoId(hardInfo);
        if (byUserIdAndInfoId.size() != 0) {
            return new Result<>(ResultEnum.HARD_UPDATE_USED_ERR.getCode(), ResultEnum.HARD_UPDATE_USED_ERR.getMsg(), null);
        }

        int delete = hardInfoDao.delete(hardInfo);
        ResultEnum resultEnum = delete != 0 ? ResultEnum.HARD_DELETE_OK : ResultEnum.SERVER_INTERNAL_ERROR;
        return new Result<>(resultEnum.getCode(),resultEnum.getMsg());
    }
}
