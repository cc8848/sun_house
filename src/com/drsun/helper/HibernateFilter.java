package com.drsun.helper;

import java.io.*;
import javax.servlet.*;
import javax.servlet.Filter;

import org.hibernate.*;

public class HibernateFilter implements Filter
{
    private SessionFactory factory = null;
    @Override
    public void destroy() {}

    public void init(FilterConfig config) throws ServletException
    {
        factory=HibernateUtil.getSessionFactory();
    }

    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException
    {
        try
        {
            factory.getCurrentSession().beginTransaction();
            chain.doFilter(request, response);
            factory.getCurrentSession().beginTransaction().commit();
        }
        catch (Exception e)
        {
            
            e.printStackTrace();
            factory.getCurrentSession().beginTransaction().rollback();
        }
        
        }
}
