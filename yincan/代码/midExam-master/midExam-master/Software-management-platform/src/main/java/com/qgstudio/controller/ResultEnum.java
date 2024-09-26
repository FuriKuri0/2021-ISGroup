package com.qgstudio.controller;

/**
 * @program Software-management-platform
* @Description: 结果集枚举
* @Param:
* @return:
* @Author: stop.yc
* @Date: 2022-07-24 19:10
*/
public enum ResultEnum {
    //自定义
    //通用
    UNKNOWN_ERROR(-1,"未知错误"),
    SUCCESS(200,"成功"),
    UNAUTHORIZED(401,"请先登录"),
    FORBIDDEN(403,"权限不足"),
    RESOURCE_NOT_FOUND(404,"资源未找到"),
    PARAMETER_NOT_VALID(400,"参数不合法"),
    SERVER_INTERNAL_ERROR(500,"服务器正在忙碌中,请稍后试试吧"),



    //异常
    EX_EMAIL(00000,"邮箱格式错误"),
    EX_NAME(11111,"用户名需6-12位"),
    EX_PWD(22222,"密码需6-20位数字加大小写字母"),
    EX_PHONE(33333,"手机格式错误"),


    //我们的结果码为这个结构,A0XYZ
    //A代表一个大的模块,0是补位,后期依据需要更改,X代表一个功能(如注册),Y代表一个情况(如用户名重复),Z为1代表成功,0代表失败,
    //用户模块 60XYZ,
    //600Y0 用户-登录-情况-失败
    USER_USERNAME_ERROR(60010, "用户名错误"),
    USER_PWD_ERROR(60020, "密码错误"),

    //600Y1 用户-登录-情况-成功
    USER_LOGIN_OK(60001,"登录成功"),
    USER_LOGOUT_OK(60031,"登出成功"),

    //601Y1 用户-注册-情况-成功
    USER_SAVE_OK(60101,"注册用户成功"),

    USER_UPDATE_OK(60201,"修改用户成功"),
    USER_UPDATE_PASSWORD_OK(60211,"修改密码成功"),
    USER_DELETE_OK(60301,"删除用户成功"),
    USER_GET_OK(60401,"查询用户成功"),
    USER_CHANGE_PERMISSION_OK(60501,"设置权限成功"),
    //606Y1 用户-通知-情况-成
    USER_DEL_NOTICE_OK(60601,"删除通知成功"),
    USER_GET_NOTICE_OK(60611,"获取通知成功"),

    USER_LOGOUT_ERR(60030,"登出失败"),
    //601Y0 用户-注册-情况-失败
    USER_SAVE_ERR(60100,"注册用户失败"),
    USER_NAME_ERR(60110,"用户名已经重复"),
    USER_PHONE_ERR(60120,"手机号已经被注册"),
    USER_EMAIL_ERR(60130,"邮箱已经被注册"),

    USER_UPDATE_ERR(60200,"修改用户失败"),
    USER_UPDATE_PASSWORD_ERR(60210,"修改密码失败"),
    USER_DELETE_ERR(60300,"删除用户失败"),
    USER_GET_ERR(60400,"查询用户失败"),
    USER_CHANGE_PERMISSION_ERR(60500,"设置权限失败"),

    USER_DEL_NOTICE_ERR(60600,"删除通知失败"),
    USER_GET_NOTICE_NONE(60610,"当前没有通知"),
    //软件模块 70XYZ,

    SOFTWARE_SAVE_OK(70101,"添加软件成功"),
    SOFTWARE_UPDATE_OK(70201,"修改软件成功"),
    SOFTWARE_DELETE_OK(70301,"删除软件成功"),
    SOFTWARE_GET_OK(70401,"查询软件成功"),

    SOFTWARE_SAVE_ERR(70100,"添加软件失败"),
    SOFTWARE_NAME_ERR(70110,"软件名重复"),

    SOFTWARE_UPDATE_ERR(70200,"修改软件失败"),
    SOFTWARE_DELETE_ERR(70300,"删除软件失败"),
    SOFTWARE_GET_ERR(70400,"查询软件失败"),

    //版本模块 80XYZ
    VERSION_SAVE_OK(80101,"添加版本成功"),
    VERSION_UPDATE_OK(80201,"修改版本成功"),
    VERSION_DELETE_OK(80301,"删除版本成功"),
    VERSION_GET_OK(80401,"查询版本成功"),

    VERSION_SAVE_ERR(80100,"添加版本失败"),
    VERSION_INF_ERR(80110,"版本号重复"),

    VERSION_UPDATE_ERR(80200,"修改版本失败"),
    VERSION_DELETE_ERR(80300,"删除版本失败"),
    VERSION_GET_ERR(80400,"查询版本失败"),

    //文件模块 90XYZ
    FILE_UPLOAD_OK(90101,"上传成功"),
    FILE_UPLOAD_ERR(90100,"上传失败"),
    FILE_DOWNLOAD_OK(90201,"下载成功"),
    FILE_DOWNLOAD_ERR(90200,"下载失败"),


    //许可证模块 91XYZ
    LICENSE_SAVE_OK(91001,"授权许可成功"),
    LICENSE_SAVE_ERR(91000,"授权许可失败"),
    LICENSE_SAVE_REPEAT_ERR(91010,"已存在软件授权,是否升级授权"),

    LICENSE_SELECT_NONE(91100,"当前用户无许可证"),
    LICENSE_SELECT_OK(91101,"查询用户许可证成功"),

    LICENSE_UPGRADE_OK(91201,"升级用户许可证成功"),
    LICENSE_UPGRADE_ERR(91200,"升级用户许可证失败"),



    //硬件信息模块
    //920Y0 硬件信息-新增-失败
    HARD_SAVE_MAC_ERR(92010,"硬件指纹MAC格式错误"),
    HARD_SAVE_CPU_ERR(92020,"硬件指纹CPU格式错误"),
    HARD_SAVE_HARD_ERR(92030,"硬件指纹硬盘序列号格式错误"),

    HARD_SAVE_MAC_REPEAT_ERR(92040,"硬件指纹MAC重复"),
    HARD_SAVE_CPU_REPEAT_ERR(92050,"硬件指纹CPU重复"),
    HARD_SAVE_HARD_REPEAT_ERR(92060,"硬件指纹硬盘序列号重复"),
    HARD_SAVE_NAME_REPEAT_ERR(92070,"硬件指纹机主名称重复"),

    USER_HARD_SAVE_OK(92001,"硬件指纹添加成功"),


    //921Y0 硬件信息-更新-失败,
    HARD_UPDATE_USED_ERR(92100,"硬件指纹已经被授权,无法修改"),

    //921Y1 硬件信息-更新-成功,
    HARD_UPDATE_USED_OK(92101,"硬件指纹修改成功"),

    //922Y1 硬件信息-查询-成功,
    HARD_SELECT_OK(92201,"硬件指纹查询成功"),

    //923Y1 硬件信息-删除-成功,
    HARD_DELETE_OK(92301,"硬件指纹删除成功"),

    //93XYZ 通知模块
    NOTICE_SAVE_OK(93101,"添加通知成功"),
    NOTICE_UPDATE_OK(93201,"更新通知成功"),
    NOTICE_DELETE_OK(93301,"删除通知成功"),
    NOTICE_GET_OK(93401,"查询通知成功"),

    NOTICE_SAVE_ERR(93100,"添加通知失败"),
    NOTICE_UPDATE_ERR(93200,"更新通知失败"),
    NOTICE_DELETE_ERR(93300,"删除通知失败"),
    NOTICE_GET_ERR(93400,"查询通知失败"),

    //940Y1 授权验证-成功
    VERIFY_OK(94001,"授权验证成功"),

    //941YZ 授权码添加
    CODE_ADD_OK(94101,"授权码添加成功"),

    CODE_ADD_ERR(94100,"授权码添加失败"),
    //942YZ 授权码查询,
    CODE_SELECT_OK(94201,"授权码查询成功"),
    CODE_SELECT_ERR(94200,"授权码查询失败"),



    //943YZ 授权码查询
    CODE_UPDATE_OK(94301,"授权码修改成功"),
    CODE_UPDATE_ERR(94300,"授权码查询失败"),


    //940Y0 授权验证-成功
    VERIFY_ERR(94000,"授权验证失败"),



    ;
    /**
     * 编号
     */
    private Integer code;
    /**
     * 信息
     */
    private String msg;

    ResultEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}
