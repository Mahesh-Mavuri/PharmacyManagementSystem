package com.notifications;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.dao.Credentials;
import com.dbutils.ConnectDB;
public class Mailservice {
	private String emailID;
	private boolean role;

	public Mailservice(String email, boolean role) throws Exception{
	
		this.emailID = email;
		this.role = role;
	}
	public boolean checkemail() throws Exception
	{	

		
		try (Connection con = ConnectDB.getConnection()){
			String sqlQuery;
			if(role)
			{//role is true for admin
				sqlQuery="select admin_email from admin where admin_email=?";
			}
			else
			{
				sqlQuery="select operator_email from operator where operator_email=?";
			}
			PreparedStatement pstmt = con.prepareStatement(sqlQuery);
			pstmt.setString(1,emailID);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next() )
			{
				//If row exit valid credentials
				return true;
			}

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		return false;

	}
	
		
		

		public Credentials GetCredentials() throws Exception {
			Connection conn = ConnectDB.getConnection();
			
			String sql;
			System.out.println("checking for email in database");
			Credentials oc= new Credentials();
			if(role==false)
			{
			sql="select operator_username, operator_password from operator where operator_email= ?";
			oc.setRole(role);
			}
			else
			{
				sql="select admin_username, admin_password from admin where admin_email= ?";
				oc.setRole(role);
			}
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, emailID);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next())
			{
		if(oc.getRole())
		{
			oc.setUserName(rs.getString("admin_username"));
			oc.setUserPassword(rs.getString("admin_password"));
		}else
		{
		oc.setUserName(rs.getString("operator_username"));
		oc.setUserPassword(rs.getString("operator_password"));
		}
		
			}
	
	return oc;
	}
	

	public boolean sendemail() throws Exception
	{
		Credentials ac = GetCredentials();
		final String username = "project.pharmachain@gmail.com";
		final String pwd = "Passw0rd@1";
		String userEmail = emailID;
		Properties props = new Properties();
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props,
				new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, pwd);
			}
		});
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("project.pharmachain@gmail.com"));

			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(userEmail));

			message.setSubject("Credentials");
			message.setText("Hey "+ac.getUserName()+","
					+ "\n\n I am sending your Login credentials."+
					"\n UserName = "+ac.getUserName()+
					"\n Password = "+ac.getUserPassword());

			Transport.send(message);

			System.out.println("Email Sent Successfully");
			return true;

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
		

	}
	
		
		
		
		
}
