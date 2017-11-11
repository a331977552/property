package uk.co.ukstarjet.entity;

import java.util.Date;

public class Pickup {
    private Integer id;

    private String name;

    private String phonenumber;

    private String qq;

    private String wechat;

    private String numberofpeople;

    private Date pickupdata;

    private String flightinfo;

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

    public String getNumberofpeople() {
        return numberofpeople;
    }

    public void setNumberofpeople(String numberofpeople) {
        this.numberofpeople = numberofpeople == null ? null : numberofpeople.trim();
    }

    public Date getPickupdata() {
        return pickupdata;
    }

    public void setPickupdata(Date pickupdata) {
        this.pickupdata = pickupdata;
    }

    public String getFlightinfo() {
        return flightinfo;
    }

    public void setFlightinfo(String flightinfo) {
        this.flightinfo = flightinfo == null ? null : flightinfo.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}