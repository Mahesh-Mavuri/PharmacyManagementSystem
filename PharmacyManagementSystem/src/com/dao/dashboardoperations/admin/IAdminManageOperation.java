package com.dao.dashboardoperations.admin;


import com.dao.Credentials;
import com.dao.OperatorPOJO;


public interface IAdminManageOperation {

	
	public OperatorPOJO[] getAllOperators();
	public boolean addOperator(Credentials auth,OperatorPOJO operatorInfo);
	public OperatorPOJO getOperatorByUserName(String operatorUserName);
	

}
