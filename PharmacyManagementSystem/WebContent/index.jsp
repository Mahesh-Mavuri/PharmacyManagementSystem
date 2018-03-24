<%@page import="com.dao.login.Login"%>
<%@page import="com.dao.Credentials"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
		<h5>Login Portal</h5>
		<form id="login" method="post">
			<div class="input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-user"></i></span> <input id="uname" type="text"
					class="form-control" name="uname" placeholder="Username"
					required="true">
			</div>
			<div class="input-group">
				<span class="input-group-addon"><i
					class="glyphicon glyphicon-lock"></i></span> <input id="pwd"
					type="password" class="form-control" name="pwd"
					placeholder="Password" required="true">
			</div>
			<input type="hidden" id="role" name="role"> <br>
			<div class="dropdown">
				<input class="btn btn-secondary dropdown-toggle" type="submit"
					value="Forget Password" id="dropdownMenuButton" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					<a class="dropdown-item"  href="forgetpassword.jsp?role=admin">Administrator</a>
					<a class="dropdown-item"  href="forgetpassword.jsp?role=operator">Operator</a>
				</div>
			</div>
			<div class="dropdown">
				<input class="btn btn-secondary dropdown-toggle" type="submit"
					value="Login" id="dropdownMenuButton" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
					<a class="dropdown-item" onclick="adminLogin()" href="#">Administrator</a>
					<a class="dropdown-item" onclick="operatorLogin()" href="#">Operator</a>
				</div>
			</div>
			<br><br>
			<div class="alert alert-danger alert-dismissible" id="wrong">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>Wrong Credentials</strong> 
			</div>
		</form>
	</div>
	<%
		if (request.getParameter("uname") != null && request.getParameter("pwd") != null) {
			boolean role;
			String username = request.getParameter("uname");
			String password = request.getParameter("pwd");
			String user = request.getParameter("role");
			//System.out.print(username + " " + password + " " + user);
			if (user.equals("admin")) {
				role = true;
			} else {
				role = false;
			}
			Credentials oc = new Credentials(username, password, role);
			Login oda = new Login(oc);
			if (role) {
				if (oda.validateUser()) {
					session.setAttribute("name", username);
					response.sendRedirect("admin_Dashboard.jsp?role=admin");
				} else {
					out.print("<script>wrongCredentials();</script>");
					}
			} else {
				if (oda.validateUser()) {
					session.setAttribute("name", username);
					response.sendRedirect("operator_Dashboard.jsp?role=operator");
				} else {
					out.print("<script>wrongCredentials();</script>");
				}
			}
		}
	%>
</body>
</html>