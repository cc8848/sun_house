package com.drsun.model;

import java.util.List;

import org.apache.log4j.Logger;

import com.drsun.helper.HibernateUtil;


import org.hibernate.*;

public class OrderHibernateDAO implements OrderDAO{
	
	
	Logger logger = Logger.getLogger(OrderHibernateDAO.class);
	List<Order> orderList = null;
	Order order = null;
	
	
	@Override
	public int save(Order order) {
		
		  int updateCount = 0;
	        
	        
		  Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	        Transaction tx=null;
	        try
	        {
	            tx=session.beginTransaction();
	            session.save(order);
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
	public int delete(int orderId) {
		
		 int updateCount = 0;
	       
	        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	        Transaction tx=null;
	        try
	        {
	            tx=session.beginTransaction();
	            Order order = new Order();
	            session.load(order,orderId);
	            session.delete(order);
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
	public List<Order> findAll() {
		
		 orderList = null;
	        
	        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	        Transaction tx=null;
	        try
	        {
	            tx=session.beginTransaction();
	            Query query = session.createQuery("from Order");
	            orderList=query.list();
	            tx.commit();
	            
	        }
	        catch(Exception ex)
	        {
	            if(tx!=null) tx.rollback();
	            System.out.println(ex.getMessage());
	            
	        }
	        

	        return orderList;               
	}

	@Override
	public Order findByPrimaryKey(int orderId) {
		 
		 order = null;
	       
	        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	        Transaction tx=null;
	        try
	        {
	            tx=session.beginTransaction();
	            order = (Order)session.get(Order.class,orderId);
	            tx.commit();
	           
	        }
	        catch(Exception ex)
	        {
	            if(tx!=null) tx.rollback();
	            System.out.println(ex.getMessage());
	           
	        }
	    
	        

	        return order;
	}

	@Override
	public int update(Order order) {
		 int updateCount = 0;
	        
	        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
	        Transaction tx=null;
	        try
	        {
	            tx=session.beginTransaction();
	            session.update(order);
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

	

	
}
