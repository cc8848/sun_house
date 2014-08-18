package com.drsun.actions;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.drsun.model.User;
import com.drsun.model.UserDAO;
import com.drsun.model.UserHibernateDAO;
import com.opensymphony.xwork2.ActionSupport;

public class OrderLoginAction extends ActionSupport implements SessionAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userName=null;
	private String password=null;
	private String nid=null;//�����Ҹ��X
	private UserDAO userDAO = new UserHibernateDAO();
	private User user;
	private Map<String, Object> session;
	
	
	public String getNid() {
		return nid;
	}

	public void setNid(String nid) {
		this.nid = nid;
	}


	// ---------------------------- Log Out register user

	
	public String logOut() {
		session.remove("loginId");
		addActionMessage("�z�w�g���\�n�X ");
		return LOGIN;
	}

	// ---------------------------- Login register user

	public String loginRegisterUser() {
				
		user=userDAO.findByNid(this.getNid());
		if(user==null){
			
			addActionMessage("�п�J�A�������Ҹ��X�C ");
			return LOGIN;
		}
		//if (userName.equals("user") && password.equals("password")) {
		if (user.getNid().equals(this.getNid())) {//��鶴���Ҹ��X�P��Ʈw�O�_�k�X
			session.put("loginId", user.getName());
			return SUCCESS;
		} else {
			addActionMessage("�п�J�A�������Ҹ��X�C ");
			return LOGIN;
		}
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> map) {
		this.session = map;
	}

}
