package com.qgstudio.service.impl;

import com.alibaba.fastjson.JSON;
import com.qgstudio.controller.Result;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.dao.CodeDao;
import com.qgstudio.dao.HardInfoDao;
import com.qgstudio.dao.LicenseDao;
import com.qgstudio.po.Code;
import com.qgstudio.po.CodedText;
import com.qgstudio.po.HardInfo;
import com.qgstudio.po.License;
import com.qgstudio.service.CodeService;
import com.qgstudio.util.Encryption;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-30 20:16
 **/
@Service
@Transactional
public class CodeServiceImpl implements CodeService {


    @Autowired
    private CodeDao codeDao;

    @Autowired
    private LicenseDao licenseDao;

    @Autowired
    private HardInfoDao hardInfoDao;


    @Override
    public Result<Code> save(Code code) throws Exception {
        License license = licenseDao.getByLicenseid(code.getLicense_id());
        System.out.println(license);
        HardInfo hardInfo = hardInfoDao.getByInfoId(code.getInfo_id());
        System.out.println(hardInfo);
        ArrayList<String> objects = new ArrayList<>();
        objects.add(hardInfo.getMac());
        //获取了封装了所有信息的数据
        CodedText codedText = new CodedText(license.getSoftware_id(), license.getFunction_type(), license.getVersion_id(), license.getEnd_date(), objects, hardInfo.getCpu(), hardInfo.getHard());

        //进行加密,保存数据库
        String pwd = Encryption.addRsaAndAesToData(JSON.toJSONString(codedText));

        //添加密文字段
        code.setCode(pwd);

        ResultEnum result = codeDao.save(code)!=0 ? ResultEnum.CODE_ADD_OK : ResultEnum.CODE_ADD_ERR;

        return new Result<>(result.getCode(),result.getMsg(),code);
    }

    @Override
    public Result<Code> update(Code code) throws Exception {
        License license = licenseDao.getByLicenseid(code.getLicense_id());
        System.out.println(license);
        HardInfo hardInfo = hardInfoDao.getByInfoId(code.getInfo_id());
        System.out.println(hardInfo);
        List<String> objects = new ArrayList<>();
        objects.add(hardInfo.getMac());

        //获取了封装了所有信息的数据
        CodedText codedText = new CodedText(license.getSoftware_id(), license.getFunction_type(), license.getVersion_id(), license.getEnd_date(), objects, hardInfo.getCpu(), hardInfo.getHard());

        //进行加密,保存数据库
        String pwd = Encryption.addRsaAndAesToData(JSON.toJSONString(codedText));

        //添加密文字段
        code.setCode(pwd);

        ResultEnum result = codeDao.update(code)!=0 ? ResultEnum.CODE_ADD_OK : ResultEnum.CODE_ADD_ERR;

        return new Result<>(result.getCode(),result.getMsg(),code);
    }

    @Override
    public Result<List<Code>> getAll(int license_id) {
        List<Code> all = codeDao.getAll(license_id);
        return new Result<>(ResultEnum.CODE_SELECT_OK.getCode(),ResultEnum.CODE_SELECT_OK.getMsg(),all);

    }


}
