package com.drsun.actions;

import java.util.ArrayList;
import java.util.List;

import com.drsun.model.User;
import com.drsun.model.UserDAO;
import com.drsun.model.UserHibernateDAO;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class OrderUserAction extends ActionSupport  implements  ModelDriven<User>{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user = new User();
	private List<User> userList = new ArrayList<User>();
	private UserDAO userDAO = new UserHibernateDAO();
	
	@Override
	public User getModel() {
		return user;
	}
	
	public String add(){
		userDAO.save(user);
		return SUCCESS;
	}
	
	public String findAll(){
		userList = userDAO.findAll();
		return SUCCESS;
	}
	
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
	
	public List<User> getUserList() {
		return userList;
	}
	
	public void setUserList(List<User> userList) {
		this.userList = userList;
	}
	
	 
}
