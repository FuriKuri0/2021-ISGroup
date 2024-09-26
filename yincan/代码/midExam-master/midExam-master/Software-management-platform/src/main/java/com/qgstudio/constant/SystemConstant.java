package com.qgstudio.constant;

import java.io.UnsupportedEncodingException;
import java.util.ResourceBundle;

/**
 * @program: qg-engineering-management-system
 * @description: 系统配置常量
 * @author: stop.yc
 * @create: 2022-07-27 13:14
 **/
public class SystemConstant {


    public static int MAX_NUM_LICENSE;
    public static String PRIVATE_KEY;
    public static final int PERMISSION_USER = 0;
    public static final int PERMISSION_ADMIN = 1;
    public static final int PERMISSION_SUPER_ADMIN = 9;
    public static int PORT = 9999;


    static {

        ResourceBundle bundle = ResourceBundle.getBundle("system".trim());
        String maxNumOfLicense = bundle.getString("maxNumOfLicense");
        String private_key = bundle.getString("private_key");

        // 解决文件读取乱码
        try {
            MAX_NUM_LICENSE = Integer.parseInt(new String(maxNumOfLicense.getBytes("ISO-8859-1"), "GBK"));
            PRIVATE_KEY = new String(private_key.getBytes("ISO-8859-1"), "GBK");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

    }

}
