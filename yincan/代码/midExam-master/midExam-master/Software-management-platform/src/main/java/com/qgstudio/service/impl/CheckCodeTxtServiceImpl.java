package com.qgstudio.service.impl;

import com.qgstudio.controller.Result;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.dao.CodeDao;
import com.qgstudio.dao.HardInfoDao;
import com.qgstudio.dao.LicenseDao;
import com.qgstudio.po.CodedText;
import com.qgstudio.po.HardInfo;
import com.qgstudio.po.License;
import com.qgstudio.service.CheckCodeTxtService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * @program: Software-management-platform
 * @description: 验证授权码的接口实现类
 * @author: stop.yc
 * @create: 2022-07-29 16:44
 **/

@Service("checkService")
@Transactional
public class CheckCodeTxtServiceImpl implements CheckCodeTxtService {


    @Autowired
    private LicenseDao licenseDao;

    @Autowired
    private HardInfoDao hardInfoDao;

    @Autowired
    private CodeDao codeDao;

    @Override
    public Result<Integer> checkCodeTxt(CodedText codedText) {
        //首先控制台打印信息
        System.out.println("中介软件传进来的所有信息:  " + codedText);


        //拿到为这种软件开了许可证的许可证id集合
        List<License> licenses = licenseDao.getBySoftIdAndFunctionTypeAndVersionId(codedText.getSoftware_id(), codedText.getVersion_id());
        if (licenses.isEmpty()) {
            System.out.println("licenses空");
            return new Result<>(ResultEnum.VERIFY_ERR.getCode(), ResultEnum.VERIFY_ERR.getMsg(), -1);
        }


        //这些许可证对应了多个的硬件信息id
        List<Integer> infoIds = codeDao.getInfoIdByLicenseId(licenses);
        if (infoIds.isEmpty()) {
            System.out.println("infos空");
            return new Result<>(ResultEnum.VERIFY_ERR.getCode(), ResultEnum.VERIFY_ERR.getMsg(), -1);
        }


        //这些硬件信息id对应了一个硬件指纹
        List<HardInfo> codes = hardInfoDao.getByInfoIds(infoIds);
        if (codes.isEmpty()) {
            System.out.println("hardInfo空");
            return new Result<>(ResultEnum.VERIFY_ERR.getCode(), ResultEnum.VERIFY_ERR.getMsg(), -1);
        }


        //对硬件指纹进行遍历
        for (HardInfo code : codes) {

            //如果硬盘信息没有匹配上
            System.out.println("用户的硬盘：" + codedText.getHard());
            System.out.println("数据库的硬盘：" + code.getHard());
            if (codedText.getHard().contains(code.getHard())) {
                System.out.println("硬盘正确");
                //cpu没有匹配
                System.out.println("用户的cpu：" + codedText.getCpu());
                System.out.println("数据库的cpu：" + code.getCpu());
                if (codedText.getCpu().contains(code.getCpu())) {
                    System.out.println("cpu正确");
                    System.out.println("cpu和硬盘信息匹配成功");

                    //现在判断mac地址
                    System.out.println("数据库保存的 mac为:" + code.getMac());

                    System.out.println("中介软件传进来的 mac为:  " + codedText.getMacs());

                    if (codedText.getMacs().contains(code.getMac())) {
                        //来到这里表示硬件指纹是对应上了,现在判断是否过期
                        System.out.println("硬件指纹匹配成功");

                        int info_id = code.getInfo_id();
                        int user_id = code.getUser_id();
                        List<Integer> licenseIds = codeDao.getLicenseIdsByUserIdAndInfoId(user_id, info_id);
                        if (licenseIds.isEmpty()) {
                            return new Result<>(ResultEnum.VERIFY_ERR.getCode(), ResultEnum.VERIFY_ERR.getMsg(), -1);
                        }
                        //获取license对象,验证时间和类别权限
                        License license = licenseDao.getEndTimeByLicenseIdsAndUidAndSidAndFidAndVid(licenseIds, user_id, codedText.getSoftware_id(), codedText.getVersion_id());
                        //时间没有过期
                        if (license.getEnd_date().getTime() - codedText.getNow().getTime() > 0) {
                            //类别要比许可证低或者相同
                            if (license.getFunction_type() >= codedText.getFunction_type()) {
                                return new Result<>(ResultEnum.VERIFY_OK.getCode(), ResultEnum.VERIFY_OK.getMsg(), license.getFunction_type());
                            }
                        }
                    }
                }
            }




        }
        return new Result<>(ResultEnum.VERIFY_ERR.getCode(), ResultEnum.VERIFY_ERR.getMsg(), -1);
    }
}
