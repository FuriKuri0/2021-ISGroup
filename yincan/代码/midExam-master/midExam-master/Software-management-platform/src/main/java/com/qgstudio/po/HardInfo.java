package com.qgstudio.po;

/**
 * @program: Software-management-platform
 * @description: 用户硬件信息类
 * @author: stop.yc
 * @create: 2022-07-28 11:52
 **/
public class HardInfo {
    private int info_id;

    private int user_id;

    private String owner_name;

    private String cpu;

    @Override
    public String toString() {
        return "HardInfo{" +
                "info_id=" + info_id +
                ", user_id=" + user_id +
                ", owner_name='" + owner_name + '\'' +
                ", cpu='" + cpu + '\'' +
                ", mac='" + mac + '\'' +
                ", hard='" + hard + '\'' +
                '}';
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public HardInfo(int info_id, int user_id, String owner_name, String cpu, String mac, String hard) {
        this.info_id = info_id;
        this.user_id = user_id;
        this.owner_name = owner_name;
        this.cpu = cpu;
        this.mac = mac;
        this.hard = hard;
    }

    private String mac;

    private String hard;

    public int getInfo_id() {
        return info_id;
    }

    public void setInfo_id(int info_id) {
        this.info_id = info_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getOwner_name() {
        return owner_name;
    }

    public void setOwner_name(String owner_name) {
        this.owner_name = owner_name;
    }

    public String getMac() {
        return mac;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public String getHard() {
        return hard;
    }

    public void setHard(String hard) {
        this.hard = hard;
    }

    public HardInfo() {
    }

    public HardInfo(int info_id, int user_id, String owner_name, String mac, String hard) {
        this.info_id = info_id;
        this.user_id = user_id;
        this.owner_name = owner_name;
        this.mac = mac;
        this.hard = hard;
    }
}
