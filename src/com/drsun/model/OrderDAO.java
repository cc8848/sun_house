package com.drsun.model;
import java.util.*;


public interface OrderDAO {
	
	public abstract int save(Order order);
    public abstract int delete(int orderId);
    public abstract List<Order> findAll();
    public abstract Order findByPrimaryKey(int orderId);
    public abstract int update(Order order);
    
   
    

}
