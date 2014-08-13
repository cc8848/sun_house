package com.drsun.actions;

import java.util.List;

import com.drsun.helper.PageBean;
import com.drsun.model.User;
import com.drsun.model.UserDAO;
import com.drsun.model.UserHibernateDAO;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class AdminUserTableAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<User> gridModel; //表格資料
	private int rows=10;
	private int page=1;
	private int total=0;
	private int records=0;
	public List<User> getGridModel() {
		return gridModel;
	}
	public void setGridModel(List<User> gridModel) {
		this.gridModel = gridModel;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getRecords() {
		return records;
	}
	public void setRecords(int records) {
		this.records = records;
	}
	
	public String execute() throws Exception{
		
		UserDAO userDAO = new UserHibernateDAO();
		PageBean pb=userDAO.getPageBean(page, rows);
		total=pb.getTotalPage();
		records=pb.getTotal();
		gridModel=pb.getData();
		
		return Action.SUCCESS;
		
	}
	

}
