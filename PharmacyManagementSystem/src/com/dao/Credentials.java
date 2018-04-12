package com.dao;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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
		//System.out.println("Credentials file assessed");
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String adminUserName) {
		this.userName = adminUserName;
	}
	public String getUserPassword() {
		String pwd= userPassword;
		String pwdhash = null;
		 try {
	            MessageDigest md = MessageDigest.getInstance("MD5");
	            md.update(pwd.getBytes());
	            byte[] bytes = md.digest();
	            StringBuilder sb = new StringBuilder();
	            for (int i = 0; i < bytes.length; i++) {
	                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
	            }
	            pwdhash = sb.toString();

	        } catch (NoSuchAlgorithmException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
		 //System.out.println(pwdhash);
		return pwdhash;
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
