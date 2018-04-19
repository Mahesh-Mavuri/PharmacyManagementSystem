package com.dao.dashboardoperations.admin;
import com.dao.OperatorPOJO;


public interface IAdminManageOperation {

	
	public OperatorPOJO[] getAllOperators();
	public boolean addOperator(String uname, String name, String phone,String email);
	public OperatorPOJO getOperatorByUserName(String operatorUserName);
	

}
