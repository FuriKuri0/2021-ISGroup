package com.qgstudio.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.qgstudio.constant.SystemConstant;
import com.qgstudio.controller.Result;
import com.qgstudio.controller.ResultEnum;
import com.qgstudio.dao.LicenseDao;
import com.qgstudio.po.Code;
import com.qgstudio.po.License;
import com.qgstudio.service.LicenseService;
import com.qgstudio.util.AesUtil;
import com.qgstudio.util.RSAUtil;
import com.qgstudio.util.StringUtil;
import com.qgstudio.util.TimeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;

/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-27 13:31
 **/
@Service
@Transactional
public class LicenseServiceImpl implements LicenseService {

    @Autowired
    private LicenseDao licenseDao;

    @Override
    public Result<License> save(License license) throws Exception {

        //1.首先查询用户是否拥有对应软件的许可证
        List<License> allBySoftwareIdAndUserId = licenseDao.getAllBySoftwareIdAndUserId(license.getUser_id(), license.getSoftware_id());

        //1.1已经存在,提示升级
        if (allBySoftwareIdAndUserId.size() != 0) {
            return new Result<>(ResultEnum.LICENSE_SAVE_REPEAT_ERR.getCode(),ResultEnum.LICENSE_SAVE_REPEAT_ERR.getMsg());
        }

        //1.2不存在
        //需要生成现在日期
        Date begin_time = TimeUtils.getWebsiteDatetime();
        license.setBegin_date(begin_time);

        //调用java8新日期获取localDateTime
        LocalDateTime localDateTime = TimeUtils.dateToLocalDateTime(begin_time);

        //增加有效期,获取截止时间
        localDateTime = localDateTime.plusMonths(license.getValidity_time());

        //转换为date日期
        Date end_time = TimeUtils.localDateTimeToDate(localDateTime);
        license.setEnd_date(end_time);

        ResultEnum result = licenseDao.save(license) == 1 ? ResultEnum.LICENSE_SAVE_OK : ResultEnum.LICENSE_SAVE_ERR;
        return new Result<>(result.getCode(), result.getMsg(), license);
    }

    @Override
    public Result<List<License>> selectAll(int user_id) {
        List<License> licenses = licenseDao.getAllByUserId(user_id);
        ResultEnum resultEnum = licenses.size() != 0 ? ResultEnum.LICENSE_SELECT_OK :ResultEnum.LICENSE_SELECT_NONE;
        return new Result<>(resultEnum.getCode(),resultEnum.getMsg(),licenses);
    }

    @Override
    public Result<License> upgrade(License license) throws IOException {

        //新升级的范畴有类型,版本,有效期
        //需要自行计算时间,并延续之前时间

        //1.需要生成现在日期,并得到截止日期,获取现在许可证剩余的有效期(月)
        Date now_time = TimeUtils.getWebsiteDatetime();
        license.setBegin_date(now_time);

        Date end_date = license.getEnd_date();

        //剩余月数
        int restMonth = (end_date.getTime() - now_time.getTime()) < 0 ? 0 : (int)(Math.floor((double) ((end_date.getTime() - now_time.getTime()) / 1000L / 2592000L) ));

        //最新剩余月数
        restMonth += license.getValidity_time();
        license.setValidity_time(restMonth);

        //调用java8新日期获取localDateTime
        LocalDateTime localDateTime = TimeUtils.dateToLocalDateTime(now_time);

        //增加有效期,获取截止时间
        localDateTime = localDateTime.plusMonths(restMonth);

        //转换为date日期
        Date end_time = TimeUtils.localDateTimeToDate(localDateTime);
        license.setEnd_date(end_time);

        int upgrade = licenseDao.upgrade(license);

        ResultEnum resultEnum = upgrade != 0 ? ResultEnum.LICENSE_UPGRADE_OK :ResultEnum.LICENSE_UPGRADE_ERR;
        return new Result<>(resultEnum.getCode(),resultEnum.getMsg(),license);
    }


    /**
     * @Description: 检验
     * @Param: [lic]
     * @return: int
     * @Author: stop.yc
     * @Date: 2022/7/28
     */
    public static int check(String lic) throws Exception {


        String PUBLIC_KEY = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCwMGl48mquEjgZRen2Wi0BejRgp0qVhY0YwKHwjcTN4TMprdAK0jABI+Rl1ckHPwX4rkwx03e3NLhAKis/uqEpsw9/YMkOut8qWRQkh9KAzAos5dN1DGgM2XXm1EluJKB/AvwBdgrHgxuuG+uhKbi2arh3/OY4oxqtfPkkvhRexwIDAQAB";
        //激活

        if (StringUtil.isEmpty(lic)) {
            return -1;
        }
        //1.把code前24位拆出来
        String aesKey = lic.substring(0, 24);

        //2.解析长度
        int encDataLength = Integer.parseInt(lic.substring(24, 27), 16);

        //3.把密文截取出来
        String encData = lic.substring(27, 27 + encDataLength);

        //4.截取签名信息
        String sign = lic.substring(27 + encDataLength);

        //5.校验
        boolean verify = RSAUtil.verify(encData, RSAUtil.getPublicKey(PUBLIC_KEY), sign);

        System.out.println("校验结果:  " + verify);

        if (!verify) {
            return -1;
        }
        String decrypt = AesUtil.decrypt(encData, aesKey);
        System.out.println(decrypt);

        License license = JSON.parseObject(decrypt, License.class);
        System.out.println(license);
        return 1;
    }


    /**
    * @Description: 加密
    * @Param: [data]
    * @return: java.lang.String
    * @Author: stop.yc
    * @Date: 2022/7/28
    */
    public static String addRsaAndAesToData(String data) throws Exception {

        String code = "";

        //1.获取aes密钥
        String aesKey = AesUtil.getAESKey(128, null);

        System.out.println(aesKey.length());

        //2.对数据进行aes加密
        String encrypt = AesUtil.encrypt(data, aesKey);

        System.out.println(encrypt.length());

        //3.获取加密后密文长度
        String enDataLength = Integer.toHexString(encrypt.length());
        System.out.println(enDataLength);

        //4.进行rsa签名
        String sign = RSAUtil.sign(encrypt, RSAUtil.getPrivateKey(SystemConstant.PRIVATE_KEY));

        //5.拼接生成字符串

        code = aesKey + enDataLength + encrypt + sign;

        System.out.println("许可证为:" + code);

        return code;
    }
}
