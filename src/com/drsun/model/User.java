package com.drsun.model;



public class User implements java.io.Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int userid;
	private String nid;
	private String name;
	private String email;
	private String mobile;
	private String createtime;
	private String modifytime;
	
	public User(){}
	
	public User(int userid,String nid,String name,String email,String mobile,String createtime,String modifytime){
		this.userid=userid;
		this.nid=nid;
		this.name=name;
		this.mobile=mobile;
		this.email=email;
		this.createtime=createtime;
		this.modifytime=modifytime;
	}
	
	
	public String getNid() {
		return nid;
	}

	public void setNid(String nid) {
		this.nid = nid;
	}

	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
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

	public String  getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		
		this.createtime = createtime;
	}

	public String getModifytime() {
		return modifytime;
	}
	public void setModifytime(String modifytime) {
		this.modifytime = modifytime;
	}

}
