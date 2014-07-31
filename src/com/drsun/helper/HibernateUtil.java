package com.drsun.helper;

import org.hibernate.*;
import org.hibernate.cfg.*;

public class HibernateUtil
{
    private static SessionFactory factory = null;    

    static
    {
        Configuration cfg = new Configuration();
        cfg.configure();
        factory = cfg.buildSessionFactory();        
    } 
    
    public static SessionFactory getSessionFactory()
    {
        return factory;
    }
}
