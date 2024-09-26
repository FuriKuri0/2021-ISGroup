package com.qgstudio.po;

/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-28 09:55
 **/
public class Code {

    private int code_id;

    private int license_id;

    private int user_id;

    private String code;

    private int info_id;

    @Override
    public String toString() {
        return "Code{" +
                "code_id=" + code_id +
                ", license_id=" + license_id +
                ", user_id=" + user_id +
                ", code='" + code + '\'' +
                ", info_id=" + info_id +
                '}';
    }

    public int getCode_id() {
        return code_id;
    }

    public void setCode_id(int code_id) {
        this.code_id = code_id;
    }

    public int getLicense_id() {
        return license_id;
    }

    public void setLicense_id(int license_id) {
        this.license_id = license_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getInfo_id() {
        return info_id;
    }

    public Code() {
    }

    public void setInfo_id(int info_id) {
        this.info_id = info_id;
    }

    public Code(int code_id, int license_id, int user_id, String code, int info_id) {
        this.code_id = code_id;
        this.license_id = license_id;
        this.user_id = user_id;
        this.code = code;
        this.info_id = info_id;
    }
}
