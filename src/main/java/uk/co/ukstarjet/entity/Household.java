package uk.co.ukstarjet.entity;

import java.util.Date;

public class Household {
    private Integer id;

    private String name;

    private String phonenumber;

    private String qq;

    private String wechat;

    private String currentlocation;

    private Date cleandata;

    private String remark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber == null ? null : phonenumber.trim();
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }

    public String getWechat() {
        return wechat;
    }

    public void setWechat(String wechat) {
        this.wechat = wechat == null ? null : wechat.trim();
    }

    public String getCurrentlocation() {
        return currentlocation;
    }

    public void setCurrentlocation(String currentlocation) {
        this.currentlocation = currentlocation == null ? null : currentlocation.trim();
    }

    public Date getCleandata() {
        return cleandata;
    }

    public void setCleandata(Date cleandata) {
        this.cleandata = cleandata;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}