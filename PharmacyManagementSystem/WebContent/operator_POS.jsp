<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/dashboard.css">
<title>Pharmacy Management System</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/dashboard.js"></script>
</head>
<body>
	<%
		session = request.getSession();
		if ((session.getAttribute("name")) == null) {
			response.sendRedirect("index.jsp");
		}
	%>
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="operator_Dashboard.jsp?role=operator">Home</a>
	    <a href="operator_POS.jsp?role=operator">POS</a>
		<a href="operator_Notifyadmin.jsp?role=operator">Notify Admin</a>
	</div>
	<div id="main">
		<span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;
			Pharmacy Management System</span>
		<div class="dropdown" style="float: right; right: 100px;">
			<button
				class="btn btn-primary dropdown-toggle glyphicon glyphicon-user"
				type="button" data-toggle="dropdown">
				<span class="caret"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="#">View Profile</a></li>
				<li><a href="#">Change Password</a></li>
				<li><a href="logout">Logout</a></li>
			</ul>
		</div>
		<p>
			Welcome
			<%=request.getParameter("role")%></p>
	</div>

</body>
</html>
