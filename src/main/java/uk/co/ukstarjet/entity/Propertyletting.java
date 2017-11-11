package uk.co.ukstarjet.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Propertyletting {
    private Integer id;

    private Integer price;

    private String housetype;

    private String name;

    private String location;

    private String postcode;

    private Date rentdate;
    
    private String introduction;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getHousetype() {
        return housetype;
    }

    public void setHousetype(String housetype) {
        this.housetype = housetype == null ? null : housetype.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode == null ? null : postcode.trim();
    }
    @DateTimeFormat(pattern="yyyy年 MM月 dd日")  
    @JsonFormat(pattern="yyyy年 MM月 dd日",timezone = "GMT+0") 
    public Date getRentdate() {
        return rentdate;
    }

    public void setRentdate(Date rentdate) {
        this.rentdate = rentdate;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction == null ? null : introduction.trim();
    }
}