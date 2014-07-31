package com.drsun.model;

import java.util.List;
import org.hibernate.SessionFactory;
import com.drsun.helper.HibernateUtil;
import org.hibernate.*;

public class UserHibernateDAO implements UserDAO{
	
	private SessionFactory factory = HibernateUtil.getSessionFactory();
    public void setSessionFactory(SessionFactory factory){
        this.factory=factory;
    }

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
		
		Session session = factory.getCurrentSession();
        User user = (User) session.load(User.class, userId);
        session.delete(user);     
        return 1;
	}

	@Override
	public List<User> findAll() {
		
		Session session = factory.getCurrentSession();
        Query query = session.createQuery("from User");
        return query.list();                   
	}

	@Override
	public User findByPrimaryKey(int userId) {
		 
		Session session = factory.getCurrentSession();
	    return (User) session.load(User.class, userId);
	}

	@Override
	public int update(User user) {
		Session session = factory.getCurrentSession();
        session.update(user);
        return 1;
	}

	
}
