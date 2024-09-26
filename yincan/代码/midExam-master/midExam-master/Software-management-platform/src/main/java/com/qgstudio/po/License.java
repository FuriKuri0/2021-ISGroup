package com.qgstudio.po;

import java.util.Date;

/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-27 11:37
 **/
public class License {
    private int license_id;
    private int user_id;
    private int software_id;
    private int function_type;
    private int version_id;
    private Date begin_date;
    private Date end_date;
    private int validity_time;
    private int license_num;

    public License() {
    }

    @Override
    public String toString() {
        return "License{" +
                "license_id=" + license_id +
                ", user_id=" + user_id +
                ", software_id=" + software_id +
                ", function_type=" + function_type +
                ", version_id=" + version_id +
                ", begin_date=" + begin_date +
                ", end_date=" + end_date +
                ", validity_time=" + validity_time +
                ", license_num=" + license_num +
                '}';
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

    public int getSoftware_id() {
        return software_id;
    }

    public void setSoftware_id(int software_id) {
        this.software_id = software_id;
    }

    public int getFunction_type() {
        return function_type;
    }

    public void setFunction_type(int function_type) {
        this.function_type = function_type;
    }

    public int getVersion_id() {
        return version_id;
    }

    public void setVersion_id(int version_id) {
        this.version_id = version_id;
    }

    public Date getBegin_date() {
        return begin_date;
    }

    public void setBegin_date(Date begin_date) {
        this.begin_date = begin_date;
    }

    public Date getEnd_date() {
        return end_date;
    }

    public void setEnd_date(Date end_date) {
        this.end_date = end_date;
    }

    public int getValidity_time() {
        return validity_time;
    }

    public void setValidity_time(int validity_time) {
        this.validity_time = validity_time;
    }

    public int getLicense_num() {
        return license_num;
    }

    public void setLicense_num(int license_num) {
        this.license_num = license_num;
    }

    public License(int license_id, int user_id, int software_id, int function_type, int version_id, Date begin_date, Date end_date, int validity_time, int license_num) {
        this.license_id = license_id;
        this.user_id = user_id;
        this.software_id = software_id;
        this.function_type = function_type;
        this.version_id = version_id;
        this.begin_date = begin_date;
        this.end_date = end_date;
        this.validity_time = validity_time;
        this.license_num = license_num;
    }
}
