package com.drsun.model;
import java.util.*;


public interface UserDAO {
	
	public abstract int save(User user);
    public abstract int delete(int userId);
    public abstract List<User> findAll();
    public abstract User findByPrimaryKey(int userId);
    public abstract User findByNid(String nid);
    public abstract int update(User user);
    
   
    

}
