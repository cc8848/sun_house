package com.drsun.model;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;

import com.drsun.helper.HibernateUtil;

import org.hibernate.*;

public class UserHibernateDAO implements UserDAO{
	
	
	Logger logger = Logger.getLogger(UserHibernateDAO.class);
	
	@Override
	public int save(User user) {
		
		  int updateCount = 0;
	        
	        //Session session = HibernateUtil.getSessionFactory().openSession();
	        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	        Transaction tx=null;
	        try
	        {
	            tx=session.beginTransaction();
	            session.save(user);
	            tx.commit();
	            updateCount = 1;
	            logger.info(" User ID: "+ user.getUserid()+ " ("+user.getName()+" )  insert successful.");
	        }
	        catch(Exception ex)
	        {
	            if(tx!=null) tx.rollback();
	            System.out.println(ex.getMessage());
	            logger.error(" User ID: "+ user.getUserid()+ " ("+user.getName()+" )  insert error.");
	        }
	       
	        return updateCount;
	}

	@Override
	public int delete(int userId) {
		
		 int updateCount = 0;
	        //Session session = HibernateUtil.getSessionFactory().openSession();
	        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	        Transaction tx=null;
	        try
	        {
	            tx=session.beginTransaction();
	            User user = new User();
	            session.load(user,userId);
	            session.delete(user);
	            tx.commit();
	            updateCount = 1;
	            logger.info(" User ID: "+ userId+ "   delete successful.");
	        }
	        catch(Exception ex)
	        {
	            if(tx != null) tx.rollback();
	            System.out.println(ex.getMessage());
	            logger.error(" User ID: "+ userId+ "  delete error.");
	        }
	 

	        return updateCount;
	}

	@Override
	public List<User> findAll() {
		
		 List<User> userList = null;
	        //Session session = HibernateUtil.getSessionFactory().openSession();
	        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	        Transaction tx=null;
	        try
	        {
	            tx=session.beginTransaction();
	            Query query = session.createQuery("from User");
	            userList=query.list();
	            tx.commit();
	            logger.info(" User findALL successful.");
	        }
	        catch(Exception ex)
	        {
	            if(tx!=null) tx.rollback();
	            System.out.println(ex.getMessage());
	            logger.error(" User findALL error.");
	        }
	        

	        return userList;               
	}

	@Override
	public User findByPrimaryKey(int userId) {
		 
		 User user = null;
	        //Session session = HibernateUtil.getSessionFactory().openSession();
	        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	        Transaction tx=null;
	        try
	        {
	            tx=session.beginTransaction();
	            user = (User)session.get(User.class,userId);
	            tx.commit();
	            logger.info(" User ID: "+  userId+ " found successful.");
	        }
	        catch(Exception ex)
	        {
	            if(tx!=null) tx.rollback();
	            System.out.println(ex.getMessage());
	            logger.error(" User ID: "+  userId+ " found error.");
	        }
	    
	        

	        return user;
	}

	@Override
	public int update(User user) {
		 int updateCount = 0;
	        //Session session = HibernateUtil.getSessionFactory().openSession();
	        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	        Transaction tx=null;
	        try
	        {
	            tx=session.beginTransaction();
	            session.update(user);
	            tx.commit();
	            updateCount = 1;
	            logger.info(" User ID: "+ user.getUserid()+ " ("+user.getName()+" )  update successful.");
	        }
	        catch(Exception ex)
	        {
	            if(tx!=null) tx.rollback();
	            System.out.println(ex.getMessage());
	            logger.error(" User ID: "+ user.getUserid()+ " ("+user.getName()+" )  update error.");
	        }
	  

	        
	        return updateCount;
	}

	
}
