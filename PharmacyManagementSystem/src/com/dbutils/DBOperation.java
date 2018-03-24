package com.dbutils;

import java.sql.*;
import java.util.ArrayList;



public class DBOperation {
	
	private Connection con=null;
	

	
	public DBOperation(Connection con) {
		super();
		this.con = con;
	}

	
	
	
	
	
	public ResultSet selectFromTable(String tableName,ArrayList<String> selectParamterList)
	{
		
		ResultSet result=null;
		String queryString="select ";
		int count=0;
		
		
		for(String s:selectParamterList)
		{
			count++;
			if(count<selectParamterList.size())
			{
				queryString+=s+",";
			}
			else
			{
				queryString+=s;
			}
		}
		queryString+=" from "+tableName;
		
		try {
			
			
			PreparedStatement pstmt = con.prepareStatement(queryString);
			
			result = pstmt.executeQuery();
		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	
	

}
