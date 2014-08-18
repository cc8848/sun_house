package com.drsun.model;

import java.sql.Date;

public class Order implements java.io.Serializable{
	
	private int orderid;
	private int userid;
	private int number;
	private String status;
	private String ordertime;
	private String createtime;
	private String modifytime;
	
	public Order(){}
	
	public Order(int orderid,int userid,int number,String status,String ordertime,String createtime,String modifytime){
		
		this.orderid=orderid;
		this.userid=userid;
		this.number=number;
		this.status=status;
		this.ordertime=ordertime;
		this.createtime=createtime;
		this.modifytime=modifytime;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getOrdertime() {
		return ordertime;
	}

	public void setOrdertime(String ordertime) {
		this.ordertime = ordertime;
	}

	public String getCreatetime() {
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