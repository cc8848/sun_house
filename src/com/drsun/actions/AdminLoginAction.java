package com.drsun.actions;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class AdminLoginAction extends ActionSupport implements SessionAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userName;
	private String password;
	private Map<String, Object> session;

	

	public String home() {
		return SUCCESS;
	}

	// ---------------------------- Log Out register user

	
	public String logOut() {
		session.remove("loginId");
		addActionMessage("管理者已經成功登出 ");
		return LOGIN;
	}

	// ---------------------------- Login register user

	public String loginRegisterUser() {
		if (userName.equals("admin") && password.equals("password")) {
			session.put("loginId", userName);
			return SUCCESS;
		} else {
			addActionError("請輸入適當的管理者名稱與密碼。");
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
