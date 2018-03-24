package com.dao;

public class AdminPOJO {

	private String adminId;
	private String adminUserName;
	private String adminName;
	private String adminEmail;
	private String adminPhone;
	
	
	public AdminPOJO()
	{
		
	}
	
	
	public AdminPOJO(String adminId,String adminUserName, String adminName, String adminEmail, String adminPhone) {
		super();
		this.adminId = adminId;
		this.adminUserName = adminUserName;
		this.adminName = adminName;
		this.adminEmail = adminEmail;
		this.adminPhone = adminPhone;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	
	
	public String getAdminUserName() {
		return adminUserName;
	}


	public void setAdminUserName(String adminUserName) {
		this.adminUserName = adminUserName;
	}


	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminPhone() {
		return adminPhone;
	}
	public void setAdminPhone(String adminPhone) {
		this.adminPhone = adminPhone;
	}


	@Override
	public String toString() {
		return "AdminPOJO [adminId=" + adminId + ", adminUserName=" + adminUserName + ", adminName=" + adminName
				+ ", adminEmail=" + adminEmail + ", adminPhone=" + adminPhone + "]";
	}

	
	
	
}
