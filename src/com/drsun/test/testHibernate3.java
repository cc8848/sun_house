package com.drsun.test;

import java.sql.Date;
import com.drsun.model.User;
import com.drsun.model.UserDAO;
import com.drsun.model.UserHibernateDAO;

public class testHibernate3 {

	public static void main(String[] args) {
		
		 UserDAO userDAO = new UserHibernateDAO();
		 User user=new User();
		 
		 user.setName("test");
		 user.setEmail("poop@");
		 user.setCreatetime(new Date(0));
		 userDAO.save(user);

	}

}
