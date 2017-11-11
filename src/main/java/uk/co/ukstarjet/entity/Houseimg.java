package uk.co.ukstarjet.entity;

public class Houseimg {
    private Integer id;

    private Integer propertyid;

    private String url;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPropertyid() {
        return propertyid;
    }

    public void setPropertyid(Integer propertyid) {
        this.propertyid = propertyid;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }
}