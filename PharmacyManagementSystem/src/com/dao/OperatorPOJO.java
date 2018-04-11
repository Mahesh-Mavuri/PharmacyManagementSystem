package com.dao;

public class OperatorPOJO {
	
	private String operatorId;
	private String operatorUsername;
	private String  operatorName;
	private String  operatorDoj;
	private String  operatorStatus;
	private String  operatorBranch;
	private String  operatorEmail;
	private String  operatorPhone;
	
	
	public OperatorPOJO()
	{
		
	}
	
	
	
	public OperatorPOJO(String operatorId, String operatorUsername, String operatorName, String operatorDoj,
			String operatorStatus, String operatorBranch, String operatorEmail, String operatorPhone) {
		//super();
		this.operatorId = operatorId;
		this.operatorUsername = operatorUsername;
		this.operatorName = operatorName;
		this.operatorDoj = operatorDoj;
		this.operatorStatus = operatorStatus;
		this.operatorBranch = operatorBranch;
		this.operatorEmail = operatorEmail;
		this.operatorPhone = operatorPhone;
	}



	public String getOperatorId() {
		return operatorId;
	}
	public void setOperatorId(String operatorId) {
		 this.operatorId = operatorId;
		
	}
	
	public String getOperatorUsername() {
		return operatorUsername;
	}
	public void setOperatorUsername(String operatorUsername) {
		this.operatorUsername = operatorUsername;
	}
	public String getOperatorName() {
		return operatorName;
	}
	public void setOperatorName(String operatorName) {
		this.operatorName = operatorName;
	}
	public String getOperatorDoj() {
		return operatorDoj;
	}
	public void setOperatorDoj(String operatorDoj) {
		this.operatorDoj = operatorDoj;
	}
	public String getOperatorStatus() {
		return operatorStatus;
	}
	public void setOperatorStatus(String operatorStatus) {
		this.operatorStatus = operatorStatus;
	}
	public String getOperatorBranch() {
		return operatorBranch;
	}
	public void setOperatorBranch(String operatorBranch) {
		this.operatorBranch = operatorBranch;
	}
	public String getOperatorEmail() {
		return operatorEmail;
	}
	public void setOperatorEmail(String operatorEmail) {
		this.operatorEmail = operatorEmail;
	}
	public String getOperatorPhone() {
		return operatorPhone;
	}
	public void setOperatorPhone(String operatorPhone) {
		this.operatorPhone = operatorPhone;
	}



	@Override
	public String toString() {
		return "OperatorPOJO [operatorId=" + operatorId + ", operatorUsername=" + operatorUsername + ", operatorName="
				+ operatorName + ", operatorDoj=" + operatorDoj + ", operatorStatus=" + operatorStatus
				+ ", operatorBranch=" + operatorBranch + ", operatorEmail=" + operatorEmail + ", operatorPhone="
				+ operatorPhone + "]";
	}
	
}

