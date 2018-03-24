package com.dbutils;

import java.sql.*;

public class ConnectDB {

	

	   // JDBC driver name and database URL
		   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
		   static final String DB_URL = "jdbc:mysql://localhost/";
		   static String dbName="pharma_master";
		   //127.0.0.1

		   //  Database credentials
		   static final String USER = "root";
		   static final String PASS = "admin";
		   /**
		     * Get a connection to database
		     * @return Connection object
		     */
		    public static Connection getConnection()
		    {Connection conn=null;
		    	
		    	try {
		    		
		    		//STEP 2: Register and Load JDBC driver
		    	      Class.forName("com.mysql.jdbc.Driver");
		            conn = DriverManager.getConnection(DB_URL+dbName, USER, PASS);
		        } catch (SQLException ex) {
		            throw new RuntimeException("Error connecting to the database", ex);
		        } catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return conn;
		    }
		   /* public static Connection getConnection(String database_name)
		    {
		    	Connection conn=null;
		    	try {
		    		
		    		//assign db name to this class member
		    		dbName=database_name;
		    		
		    		//STEP 2: Register and Load JDBC driver
		    	      Class.forName("com.mysql.jdbc.Driver");
		            conn = DriverManager.getConnection(DB_URL+dbName, USER, PASS);
		        } catch (SQLException ex) {
		            throw new RuntimeException("Error connecting to the database", ex);
		        } catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return conn;
		    }*/
		    
		    
}
