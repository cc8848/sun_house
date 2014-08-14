package com.drsun.helper;

import java.util.ArrayList;
import java.util.List;

import com.drsun.model.User;
import com.drsun.model.UserDAO;
import com.drsun.model.UserHibernateDAO;

public class PageBean {
	
	private int index; //·í«e­¶
	private int pageSize;
	private  List<User> data;
	private int total;
	
	public int getTotalPage(){
		return (total+pageSize-1)/pageSize;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public List<User> getData() {
		
		return data;
	}
	public void setData(List<User> data) {
		this.data = data;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}

}
