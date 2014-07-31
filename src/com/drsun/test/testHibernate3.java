package com.drsun.test;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.drsun.model.User;
import com.drsun.model.UserDAO;
import com.drsun.model.UserHibernateDAO;

public class testHibernate3 {

	public static void main(String[] args) {
		 final Log log = LogFactory.getLog(testHibernate3.class);
			
		 UserDAO userDAO = new UserHibernateDAO();
		 User user=new User();
		 user.setName("test");
		 user.setEmail("poop@");
		 userDAO.save(user);

	}

}
