package com.drsun.model;

import java.sql.Date;

public class User implements java.io.Serializable{
	
	private String userid;
	private String name;
	private String email;
	private String mobile;
	private Date createtime;
	private Date modifytime;
	
	public User(){}
	
	public User(String userid,String name,String email,String mobile,Date createtime,Date modifytime){
		this.userid=userid;
		this.name=name;
		this.mobile=mobile;
		this.email=email;
		this.createtime=createtime;
		this.modifytime=modifytime;
	}
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Date getModifytime() {
		return modifytime;
	}
	public void setModifytime(Date modifytime) {
		this.modifytime = modifytime;
	}

}
