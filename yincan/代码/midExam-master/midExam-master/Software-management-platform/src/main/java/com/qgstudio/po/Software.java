package com.qgstudio.po;

import org.springframework.stereotype.Component;

import java.util.Objects;

@Component
public class Software {
    /**软件id*/
    private int software_id;
    /**软件名*/
    private String software_name;
    /**软件描述*/
    private String desc;
    /**软件集群id（所属设计，开发等代表id）*/
    private int group_id;

    public Software(int software_id, String software_name, String desc, int group_id) {
        this.software_id = software_id;
        this.software_name = software_name;
        this.desc = desc;
        this.group_id = group_id;
    }
    public Software(){}

    public String getSoftware_name() {
        return software_name;
    }

    public void setSoftware_name(String software_name) {
        this.software_name = software_name;
    }

    public int getSoftware_id() {
        return software_id;
    }

    public void setSoftware_id(int software_id) {
        this.software_id = software_id;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getGroup_id() {
        return group_id;
    }

    public void setGroup_id(int group_id) {
        this.group_id = group_id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Software software = (Software) o;
        return software_id == software.software_id && group_id == software.group_id && software_name.equals(software.software_name) && Objects.equals(desc, software.desc);
    }

    @Override
    public int hashCode() {
        return Objects.hash(software_id, software_name, desc, group_id);
    }

    @Override
    public String toString() {
        return "Software{" +
                "software_id=" + software_id +
                ", software_name='" + software_name + '\'' +
                ", desc='" + desc + '\'' +
                ", group_id=" + group_id +
                '}';
    }
}
