package uk.co.ukstarjet.entity;

import java.util.Date;

public class Move {
    private Integer id;

    private String name;

    private String phonenumber;

    private String qq;

    private String wechat;

    private Date movedate;

    private String currentlocation;

    private String movelocation;

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

    public Date getMovedate() {
        return movedate;
    }

    public void setMovedate(Date movedate) {
        this.movedate = movedate;
    }

    public String getCurrentlocation() {
        return currentlocation;
    }

    public void setCurrentlocation(String currentlocation) {
        this.currentlocation = currentlocation == null ? null : currentlocation.trim();
    }

    public String getMovelocation() {
        return movelocation;
    }

    public void setMovelocation(String movelocation) {
        this.movelocation = movelocation == null ? null : movelocation.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}