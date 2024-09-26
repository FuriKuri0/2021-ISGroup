package com.qgstudio.po;

import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.Objects;

@Component
public class Version {
    /**版本id*/
    private int version_id;
    /**对应的软件id*/
    private int software_id;
    /**版本信息（1.0.0.1）*/
    private String versionInf;
    /**版本更新描述*/
    private String desc;
    /**下载地址*/
    private String url;
    /**发布时间,手动设置为系统当前时间*/
    private Date release_date;

    public Version(int version_id, int software_id, String versionInf, String desc, String url, Date date) {
        this.version_id = version_id;
        this.software_id = software_id;
        this.versionInf = versionInf;
        this.desc = desc;
        this.url = url;
        this.release_date = date;
    }

    public Version() {
    }

    public int getVersion_id() {
        return version_id;
    }

    public void setVersion_id(int version_id) {
        this.version_id = version_id;
    }

    public int getSoftware_id() {
        return software_id;
    }

    public void setSoftware_id(int software_id) {
        this.software_id = software_id;
    }

    public String getVersionInf() {
        return versionInf;
    }

    public void setVersionInf(String versionInf) {
        this.versionInf = versionInf;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Date getRelease_date() {
        return release_date;
    }

    public void setRelease_date(Date release_date) {
        this.release_date = release_date;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Version version = (Version) o;
        return version_id == version.version_id && software_id == version.software_id && versionInf.equals(version.versionInf) && Objects.equals(desc, version.desc) && url.equals(version.url);
    }

    @Override
    public int hashCode() {
        return Objects.hash(version_id, software_id, versionInf, desc, url);
    }

    @Override
    public String toString() {
        return "Version{" +
                "version_id=" + version_id +
                ", software_id=" + software_id +
                ", versionInf='" + versionInf + '\'' +
                ", desc='" + desc + '\'' +
                ", url='" + url + '\'' +
                '}';
    }
}
