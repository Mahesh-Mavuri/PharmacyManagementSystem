package com.dao.dashboardoperations.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Arrays;
import java.util.Iterator;

import com.dao.Credentials;
import com.dao.OperatorPOJO;
import com.dbutils.ConnectDB;

public class AdminManageOperation implements IAdminManageOperation {
	
	public OperatorPOJO[] getAllOperators() {

		OperatorPOJO[] operatorList = null;
		try(Connection con = ConnectDB.getConnection()) {

			String sql = "select * from operator";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet result = pstmt.executeQuery();
			System.out.println(result);
			//Get row count by pointing to last row
			result.last();
			//System.out.println(result.last());
			int row = result.getRow();
			System.out.print(row);
			result.beforeFirst();
			result.next();
		
			operatorList = new OperatorPOJO[row];

			for(int i=0;i<row;i++)
			{
				//OperatorPOJO o = new OperatorPOJO();
				OperatorPOJO o = new OperatorPOJO(result.getString(1),result.getString(2),result.getString(3),result.getString(4),result.getString(5),result.getString(6),result.getString(7),result.getString(8));
				
				o.setOperatorId(result.getString("operator_id"));
				
				o.setOperatorUsername(result.getString("operator_username"));
				o.setOperatorName(result.getString("operator_name"));
				o.setOperatorDoj(result.getString("operator_doj"));
				o.setOperatorBranch(result.getString("operator_branch"));
				o.setOperatorStatus(result.getString("operator_status"));
				o.setOperatorEmail(result.getString("operator_email"));
				o.setOperatorPhone(result.getString("operator_phone"));

				operatorList[i] = o;
				//System.out.println(operatorList[i].getOperatorName());
				result.next();

			}
			/*else
			{
				System.out.println("dfgd");
			}

*/


		} catch (Exception e) {

			System.out.println(e.getMessage() );
		}

		return operatorList;
	}


	


	public boolean addOperator(Credentials auth, OperatorPOJO operatorInfo) {


		boolean flag=false;

		try(Connection con = ConnectDB.getConnection()) {


			// SQL statement for insert into operator table
			String queryString="insert into operator("+
					"operator_username,operator_name,operator_password,operator_doj,operator_status,operator_branch,operator_phone,operator_email)"
					+"values(?,?,?,?,?,?,?,?)";
			//creating prepare statement using insert queryString
			PreparedStatement pstmt = con.prepareStatement(queryString);

			// setting values to prepare statements;
			pstmt.setString(1, auth.getUserName());
			pstmt.setString(2, operatorInfo.getOperatorName());
			pstmt.setString(3, auth.getUserPassword());
			pstmt.setString(4, operatorInfo.getOperatorDoj());
			pstmt.setString(5, operatorInfo.getOperatorStatus());
			pstmt.setString(6, operatorInfo.getOperatorBranch());
			pstmt.setString(7, operatorInfo.getOperatorPhone());
			pstmt.setString(8, operatorInfo.getOperatorEmail());


			// execute the query :Add new operator to table
			int affected_row = pstmt.executeUpdate();

			if(affected_row>0) {
				flag = true;
			}

		} catch (Exception e) {

			System.out.println(e.getMessage());
		}

		return flag;
	}


	public boolean removeOperator(String operatorUserName) {

		boolean flag = false;

		try(Connection con = ConnectDB.getConnection()) {

			String queryString="update operator set operator_status=? where operator_username=?";
			PreparedStatement pstmt = con.prepareStatement(queryString);
			/*
			 * 
			 * retrive the status and change it
			 * 
			 * */
			pstmt.setString(2, operatorUserName);

			int affected_row = pstmt.executeUpdate();
			if(affected_row>0)
			{
				flag = true;
			}




		} catch (Exception e) {

			System.out.println(e.getMessage());
		}

		return flag;

	}


	public boolean updateOperatorStatus(String operatorUserName,String status) {

		boolean flag = false;

		try(Connection con = ConnectDB.getConnection()) {

			String queryString="update operator set operator_status=? where operator_username=?";
			PreparedStatement pstmt = con.prepareStatement(queryString);
			pstmt.setString(1, status);
			pstmt.setString(2, operatorUserName);

			int affected_row = pstmt.executeUpdate();
			if(affected_row>0)
			{
				flag = true;
			}




		} catch (Exception e) {

			System.out.println(e.getMessage());
		}

		return flag;
	}

	public boolean updateOperatorBranch(String operatorUserName,String branch) {

		boolean flag = false;

		try(Connection con = ConnectDB.getConnection()) {

			String queryString="update operator set operator_branch=? where operator_username=?";
			PreparedStatement pstmt = con.prepareStatement(queryString);
			pstmt.setString(1, branch);
			pstmt.setString(2, operatorUserName);

			int affected_row = pstmt.executeUpdate();
			if(affected_row>0)
			{
				flag = true;
			}




		} catch (Exception e) {

			System.out.println(e.getMessage());
		}

		return flag;

	}

	public OperatorPOJO getOperatorByUserName(String operatorUserName) {

		OperatorPOJO operator=null;

		try(Connection con = ConnectDB.getConnection()) {

			String queryString="select operator_id,operator_username,operator_name,operator_doj,operator_status,"
					+ "operator_branch,operator_phone,operator_email"
					+ " from operator where operator_username=?";
			PreparedStatement pstmt = con.prepareStatement(queryString);

			pstmt.setString(1, operatorUserName);

			ResultSet result = pstmt.executeQuery();

			if(result.next())
			{
				operator = new OperatorPOJO();
				operator.setOperatorId(""+result.getInt("operator_id"));
				operator.setOperatorUsername(result.getString("operator_username"));
				operator.setOperatorName(result.getString("operator_name"));
				operator.setOperatorDoj(result.getString("operator_doj"));
				operator.setOperatorStatus(""+result.getBoolean("operator_status"));
				operator.setOperatorBranch(result.getString("operator_branch"));
				operator.setOperatorPhone(result.getString("operstor_phone"));
				operator.setOperatorEmail(result.getString("operator_email"));
			}
		} catch (Exception e) {

			System.out.println(e.getMessage());
		}


		return operator;
	}


	public static void main(String[] args) {
		AdminManageOperation ty = new AdminManageOperation();
		OperatorPOJO[] re = ty.getAllOperators();
		for(int i=0;i< re.length ;i++)
		{
			System.out.println(re[i].getOperatorName());
		}

	}
}


	




