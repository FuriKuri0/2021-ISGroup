package com.qgstudio.po;

/**
 * @program: Software-management-platform
 * @description: 通知与用户绑定类
 * @author: stop.yc
 * @create: 2022-07-26 20:03
 **/
public class NoticeAndUser {

    /**用户&通知id*/
    private int user_notice_id;

    /**通知id*/
    private int notice_id;

    /**用户id*/
    private int user_id;

    public int getUser_notice_id() {
        return user_notice_id;
    }

    public void setUser_notice_id(int user_notice_id) {
        this.user_notice_id = user_notice_id;
    }

    public int getNotice_id() {
        return notice_id;
    }

    public void setNotice_id(int notice_id) {
        this.notice_id = notice_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public NoticeAndUser() {
    }

    public NoticeAndUser(int user_notice_id, int notice_id, int user_id) {
        this.user_notice_id = user_notice_id;
        this.notice_id = notice_id;
        this.user_id = user_id;
    }
}
