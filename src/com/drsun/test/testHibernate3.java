package com.drsun.test;


import com.drsun.model.User;
import com.drsun.model.UserDAO;
import com.drsun.model.UserHibernateDAO;

public class testHibernate3 {

	public static void main(String[] args) {
		
		 UserDAO userDAO = new UserHibernateDAO();
		
		 User user=new User();
		 
		 user.setName("¤ý¬f«Ø");
		 user.setEmail("poop@");
		 java.util.Date now = new java.util.Date();
		 user.setCreatetime(new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(now));
		 
		 userDAO.save(user);

	}

}
