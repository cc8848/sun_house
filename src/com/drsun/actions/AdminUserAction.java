package com.drsun.actions;

import java.util.ArrayList;
import java.util.List;






import com.drsun.model.User;
import com.drsun.model.UserDAO;
import com.drsun.model.UserHibernateDAO;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;



public class AdminUserAction extends ActionSupport  implements  ModelDriven<User>{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user = new User();
	private List<User> userList = new ArrayList<User>();
	private UserDAO userDAO = new UserHibernateDAO();
	private int  userid;
	private String paramid;

	public String getParamid() {
		return paramid;
	}

	public void setParamid(String paramid) {
		this.paramid = paramid;
	}

	public int getUserid() {
		userid=Integer.parseInt(getParamid());
		return userid;
	}
	
	public int getUseridInt() {
		
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	@Override
	public User getModel() {
		return user;
	}
	
	public String add(){
		java.util.Date now = new java.util.Date();
		user.setCreatetime(new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(now));
		userDAO.save(user);
		return SUCCESS;
	}
	
	public String delete()
    {
        userDAO.delete(getUserid());
        return SUCCESS;
    }
	
	public String modify()
	{
		
		user=userDAO.findByPrimaryKey(getUserid());
		java.util.Date now = new java.util.Date();
		user.setModifytime(new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(now));
		//user.setName("bill");
		userDAO.update(user);
		return SUCCESS;
	}
	
	public String dialog(){
		
		 
        System.out.println("paramid: "+this.paramid);     
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
