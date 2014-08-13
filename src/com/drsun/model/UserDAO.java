package com.drsun.model;
import java.util.*;

import com.drsun.helper.PageBean;
public interface UserDAO {
	
	public abstract int save(User user);
    public abstract int delete(int userId);
    public abstract List<User> findAll();
    public abstract User findByPrimaryKey(int userId);
    public abstract int update(User user);
    
    public PageBean getPageBean(int index,int pageSize);
    

}
