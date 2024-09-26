package com.qgstudio.po;

import java.time.LocalDateTime;
import java.util.Date;

/**
 * @program: Software-management-platform
 * @description:
 * @author: stop.yc
 * @create: 2022-07-25 20:08
 **/
public class Notice {

    /**通知id*/
    private int notice_id;
    /**内容*/
    private String content;
    /**通知时间*/
    private Date time;
    /**软件id*/
    private int software_id;
    /**版本id*/
    private int version_id;

    @Override
    public String toString() {
        return "Notice{" +
                "notice_id=" + notice_id +
                ", content='" + content + '\'' +
                ", time=" + time +
                ", software_id=" + software_id +
                ", version_id=" + version_id +
                '}';
    }

    public int getNotice_id() {
        return notice_id;
    }

    public void setNotice_id(int notice_id) {
        this.notice_id = notice_id;
    }
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public int getSoftware_id() {
        return software_id;
    }

    public void setSoftware_id(int software_id) {
        this.software_id = software_id;
    }

    public int getVersion_id() {
        return version_id;
    }

    public void setVersion_id(int version_id) {
        this.version_id = version_id;
    }

    public Notice() {
    }

    public Notice(String content, Date time) {
        this.content = content;
        this.time = time;
    }

    public Notice(int notice_id, String content, Date time, int software_id, int version_id) {
        this.notice_id = notice_id;
        this.content = content;
        this.time = time;
        this.software_id = software_id;
        this.version_id = version_id;
    }
}
