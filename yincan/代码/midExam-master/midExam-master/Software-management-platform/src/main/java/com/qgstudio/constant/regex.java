package com.qgstudio.constant;

/**
 * @program: Software-management-platform
 * @description: 正则表达式常量类
 * @author: stop.yc
 * @create: 2022-07-25 16:51
 **/
public class regex {
    public static final String REGEX_EMAIL = "^\\s*\\w+(?:\\.{0,1}[\\w-]+)*@[a-zA-Z0-9]+(?:[-.][a-zA-Z0-9]+)*\\.[a-zA-Z]+\\s*$";
    public static final String REGEX_PWD = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$";
    public static final String REGEX_NAME = "^[\\u4e00-\\u9fa5a-zA-Z0-9]{6,12}$";
    public static final String REGEX_PHONE = "^((13[0-9])|(14[0|5|6|7|9])|(15[0-3])|(15[5-9])|(16[6|7])|(17[2|3|5|6|7|8])|(18[0-9])|(19[1|8|9]))\\d{8}$";
    public static final String REGEX_MAC = "([A-Fa-f0-9]{2}-){5}[A-Fa-f0-9]{2}";

}
