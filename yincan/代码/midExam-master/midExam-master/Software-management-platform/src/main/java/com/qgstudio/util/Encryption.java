package com.qgstudio.util;

import com.qgstudio.constant.SystemConstant;

/**
 * @program: ClientDemo
 * @description:
 * @author: stop.yc
 * @create: 2022-07-29 09:31
 **/
public class Encryption {
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


        //2.对数据进行aes加密
        String encrypt = AesUtil.encrypt(data, aesKey);


        //3.获取加密后密文长度
        String enDataLength = Integer.toHexString(encrypt.length());

        //4.进行rsa签名
        String sign = RSAUtil.sign(encrypt, RSAUtil.getPrivateKey(SystemConstant.PRIVATE_KEY));

        //5.拼接生成字符串

        code = aesKey + enDataLength + encrypt + sign;


        return code;
    }
}
