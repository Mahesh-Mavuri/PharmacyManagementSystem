<%@page import="com.notifications.Mailservice"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/index.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<title>Pharmacy Management System</title>
</head>
<body>
<div class="container">
		<h3>Pharmacy Management System</h3>
		<h5>Self Service to get Credentials</h5>
		<form id="forgetpwd" method="get">
			<div class="input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-user"></i></span> <input id="email" type="email"
					class="form-control" name="email" placeholder="Registered Mail Id"
					required="true">
			</div>
			<br>
			<input type="hidden" name="role" value=<%= request.getParameter("role") %>>
			<div class="text-center"><input class="btn btn-primary btn-sx" type="submit" value="Submit"></div>
			<div class="alert alert-success alert-dismissible" id="success">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>Password has been sent to your mail</strong>
			</div>
			<div class="alert alert-success alert-dismissible" id="success1">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>Sorry We can't send gmail</strong>
			</div>
			<div class="alert alert-danger alert-dismissible" id="wrong">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>Email not registered with us</strong> 
			</div>
			<div class="alert alert-danger alert-dismissible" id="failure">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>Server Down Try Again after some time</strong> 
			</div>
		</form>
	</div>
<%
if(request.getParameter("email")!=null && request.getParameter("role")!=null)
{	boolean roles=false;
	String email = request.getParameter("email");
	String who = request.getParameter("role");
	if (who.equals("admin")) {
		roles = true;
	} 
	Mailservice e = new Mailservice(email,roles);
	out.print("<script>pleasewait();</script>");
	if(e.checkemail())
	{	
		if(e.sendemail())
		{
			out.print("<script>emailsuccess();</script>");
		}
		else
		{
			out.print("<script>emailfailure();</script>");	
		}
	}
	else
	{
		out.print("<script>wrongemail();</script>");
	}
}
%>

</body>
</html>