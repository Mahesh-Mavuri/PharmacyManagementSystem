package com.dao;
public class Credentials {
	private String userName;
	private String userPassword;
	private boolean role;
	public Credentials()
	{
		
	}
	public Credentials(String userName, String userPassword, boolean role) {
		super();
		this.userName = userName;
		this.userPassword = userPassword;
		this.role = role;
		System.out.println("Credentials file assessed");
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String adminUserName) {
		this.userName = adminUserName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String adminPassword) {
		this.userPassword = adminPassword;
	}
	public boolean getRole() {
		return role;
	}
	public void setRole(boolean role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "Credentials [userName=" + userName + ", userPassword=" + userPassword + ", role=" + role + "]";
	}
}
