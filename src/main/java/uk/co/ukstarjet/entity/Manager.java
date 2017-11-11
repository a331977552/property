package uk.co.ukstarjet.entity;

import java.util.Date;

public class Manager {
    private Integer id;

    private String username;

    private String password;

    private Date lastlogintime;

    public Integer getId() {
        return id;
    }

    @Override
	public String toString() {
		return "Manager [id=" + id + ", username=" + username + ", password=" + password + ", lastlogintime="
				+ lastlogintime + "]";
	}

	public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Date getLastlogintime() {
        return lastlogintime;
    }

    public void setLastlogintime(Date lastlogintime) {
        this.lastlogintime = lastlogintime;
    }
}