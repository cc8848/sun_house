package com.drsun.model;

import java.util.List;

import org.apache.log4j.Logger;

import com.drsun.helper.HibernateUtil;
import com.drsun.helper.PageBean;

import org.hibernate.*;

public class UserHibernateDAO implements UserDAO{
	
	
	Logger logger = Logger.getLogger(UserHibernateDAO.class);
	List<User> userList = null;
	User user = null;
	
	
	@Override
	public int save(User user) {
		
		  int updateCount = 0;
	        
	        
		  Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	        Transaction tx=null;
	        try
	        {
	            tx=session.beginTransaction();
	            session.save(user);
	            tx.commit();
	            updateCount = 1;
	           
	        }
	        catch(Exception ex)
	        {
	            if(tx!=null) tx.rollback();
	            System.out.println(ex.getMessage());
	            
	        }
	       
	        return updateCount;
	}

	@Override
	public int delete(int userId) {
		
		 int updateCount = 0;
	       
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
	           
	        }
	        catch(Exception ex)
	        {
	            if(tx != null) tx.rollback();
	            System.out.println(ex.getMessage());
	            
	        }
	 

	        return updateCount;
	}

	@Override
	public List<User> findAll() {
		
		 userList = null;
	        
	        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	        Transaction tx=null;
	        try
	        {
	            tx=session.beginTransaction();
	            Query query = session.createQuery("from User");
	            userList=query.list();
	            tx.commit();
	            
	        }
	        catch(Exception ex)
	        {
	            if(tx!=null) tx.rollback();
	            System.out.println(ex.getMessage());
	            
	        }
	        

	        return userList;               
	}

	@Override
	public User findByPrimaryKey(int userId) {
		 
		 user = null;
	       
	        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	        Transaction tx=null;
	        try
	        {
	            tx=session.beginTransaction();
	            user = (User)session.get(User.class,userId);
	            tx.commit();
	           
	        }
	        catch(Exception ex)
	        {
	            if(tx!=null) tx.rollback();
	            System.out.println(ex.getMessage());
	           
	        }
	    
	        

	        return user;
	}

	@Override
	public int update(User user) {
		 int updateCount = 0;
	        
	        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	        Transaction tx=null;
	        try
	        {
	            tx=session.beginTransaction();
	            session.update(user);
	            tx.commit();
	            updateCount = 1;
	            
	        }
	        catch(Exception ex)
	        {
	            if(tx!=null) tx.rollback();
	            System.out.println(ex.getMessage());
	            
	        }
	  

	        
	        return updateCount;
	}

	@Override
	public PageBean getPageBean(int index, int pageSize) {
		PageBean pb=new PageBean();
		pb.setIndex(index);
		pb.setPageSize(pageSize);
		pb.setTotal(userList.size());
		List<User> pageData=userList.subList((index-1)*pageSize, index*pageSize);
		pb.setData(pageData);
		return pb;
	}

	
}
