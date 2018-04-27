package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dbutils.ConnectDB;

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
	public String getOperatorUserNamewithId(int id) throws SQLException {
		String name = "";
		try(Connection con = ConnectDB.getConnection())
		{
			System.out.println("connected");
			
			String sqlQuery="SELECT operator_username from pharma_master.operator WHERE operator_id=?";
			PreparedStatement pstmt = con.prepareStatement(sqlQuery);
			pstmt.setInt(1,id);
			ResultSet Name = pstmt.executeQuery();
			if(Name.next())
			{
				 name = Name.getString(1);
			}
			
		}
		return name;
		
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
	public void setOperatorStatus(String operatorStatus)
	{
		this.operatorStatus = operatorStatus;
	}
	public void setOperatorStatus(String operatorStatus, int id) throws SQLException {
		/*if(operatorStatus.equals("0"))
		{*/
			try(Connection con = ConnectDB.getConnection())
			{
				System.out.println("connected");
				String sqlQuery="UPDATE operator SET operator_status=0 WHERE operator_id=?";
				PreparedStatement pstmt = con.prepareStatement(sqlQuery);
				
				pstmt.setInt(1,id);
				int updated = pstmt.executeUpdate();
				System.out.println("rows affected os"+updated);
				this.operatorStatus = operatorStatus;
			}
		
		
	}
	public String getOperatorBranch() {
		return operatorBranch;
	}
	public void setOperatorBranch(String operatorBranch) {
		this.operatorBranch = operatorBranch;
	}
	/*public void setOperatorBranch(String operatorBranch,int id) throws SQLException {
		try(Connection con = ConnectDB.getConnection())
		{
			System.out.println("connected");
			String sqlQuery="UPDATE operator SET operator_branch=? WHERE operator_id=?";
			PreparedStatement pstmt = con.prepareStatement(sqlQuery);
			
			pstmt.setString(1,operatorBranch);
			pstmt.setInt(2,id);
			int updated = pstmt.executeUpdate();
			System.out.println("rows affected ob"+updated);
			this.operatorBranch = operatorBranch;
		}
		
	}*/
	public String getOperatorEmail() {
		return operatorEmail;
	}
	public void setOperatorEmail(String operatorEmail) {
		this.operatorEmail = operatorEmail;
	}
	/*public void setOperatorEmail(String operatorEmail,int id) throws SQLException {
		try(Connection con = ConnectDB.getConnection())
		{
			System.out.println("connected");
			String sqlQuery="UPDATE operator SET operator_email=? WHERE operator_id=?";
			PreparedStatement pstmt = con.prepareStatement(sqlQuery);
			
			pstmt.setString(1,operatorEmail);
			pstmt.setInt(2,id);
			int updated = pstmt.executeUpdate();
			System.out.println("rows affected oe"+updated);
			this.operatorEmail = operatorEmail;
		}
		
	}*/
	public String getOperatorPhone() {
		return operatorPhone;
	}
	public void setOperatorPhone(String operatorPhone) {
		this.operatorPhone = operatorPhone;
	}
	/*public void setOperatorPhone(String operatorPhone,int id) throws SQLException {
		try(Connection con = ConnectDB.getConnection())
		{
			System.out.println("connected");
			String sqlQuery="UPDATE operator SET operator_phone=? WHERE operator_id=?";
			PreparedStatement pstmt = con.prepareStatement(sqlQuery);
			
			pstmt.setString(1,operatorPhone);
			pstmt.setInt(2,id);
			int updated = pstmt.executeUpdate();
			System.out.println("rows affected op"+updated);
			this.operatorPhone = operatorPhone;
		}
		
	}
*/
	public void editOperator(String name, String branch, String phone,String email, String id1) throws SQLException
	{
		int id = Integer.parseInt(id1);
		try(Connection con = ConnectDB.getConnection())
		{
			
			System.out.println("connected");
			String sqlQuery=" update operator set operator_name=?, operator_branch=?,  operator_phone=?, operator_email=? where operator_id=?";
			PreparedStatement pstmt = con.prepareStatement(sqlQuery);
			
			pstmt.setString(1,name);
			pstmt.setString(2,branch);
			pstmt.setString(3,phone);
			pstmt.setString(4,email);
			pstmt.setInt(5,id);
			int updated = pstmt.executeUpdate();
			System.out.println("rows affected "+updated);
			this.operatorName=name;
			this.operatorBranch=branch;
			this.operatorPhone=phone;
			this.operatorEmail=email;
			this.operatorId=id1;
		}
	}

	@Override
	public String toString() {
		return "OperatorPOJO [operatorId=" + operatorId + ", operatorUsername=" + operatorUsername + ", operatorName="
				+ operatorName + ", operatorDoj=" + operatorDoj + ", operatorStatus=" + operatorStatus
				+ ", operatorBranch=" + operatorBranch + ", operatorEmail=" + operatorEmail + ", operatorPhone="
				+ operatorPhone + "]";
	}
	
}

