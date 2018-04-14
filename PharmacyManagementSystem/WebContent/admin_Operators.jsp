<%@page import="com.dao.OperatorPOJO"%>
<%@page import="com.dao.dashboardoperations.admin.AdminManageOperation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/dashboard.css">
<link rel="stylesheet" href="css/admin_Operators.css">
<title>Pharmacy Management System</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/dashboard.js"></script>
<script type="text/javascript" src="js/admin_Operators.js"></script>
</head>
<body>
<%
session = request.getSession();
if((session.getAttribute("name"))==null)
{
	response.sendRedirect("index.jsp");
}

%>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="admin_Dashboard.jsp?role=admin">Home</a>
  <a href="admin_Operators.jsp?role=admin">Operators</a>
  <a href="admin_Inventory.jsp?role=admin">Inventory</a>
  <a href="admin_Reports.jsp?role=admin">Reports</a>
  <a href="admin_Suppliers.jsp?role=admin">Suppliers</a>
  
</div>
	<div id="main">

		<span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;
			Pharmacy Management System</span> <a href="#" id="icons"> <span
			class="glyphicon glyphicon-envelope"></span>
		</a>
		<div class="dropdown" id="icons">
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
		<p>Welcome <%=request.getParameter("role") %><p>
	</div>
<div class="container" style="border:2px solid red;" id="allOps1">
		<button
			onclick="document.getElementById('id01').style.display='block'"
			style="width: auto;">Add Operator</button>
		
		<div id="id01" class="modal">
			<form class="modal-content animate" action="" method="post">
					<div class="container">
					<label for="uname"><b>Username</b></label> <input type="text"
						placeholder="Enter Username" name="uname" required>
					<button type="submit">Submit</button>
					<button type="button"
						onclick="document.getElementById('id01').style.display='none'"
						class="cancelbtn">Cancel</button>
				</div>
			</form>
		</div>
		 
		<div id="id02" class="modal">
			<form class="modal-content animate" action="" method="post">
					<div class="container">
					<label for="uname"><h2>Are You Sure?</h2></label>
					<br>
					<button type="submit">Yes</button>
					<button type="button"
						onclick="document.getElementById('id02').style.display='none'"
						class="cancelbtn">No</button>
				</div>
			</form>
		</div>
		<div class="container" >
  <h2 >List of operators available</h2>
		<div class="table-responsive">          
  <table class="table" >
    <thead>
      <tr>
        <th>#</th>
        <th>Name</th>
        <th>Branch</th>
        <th>PhoneNumber</th>
        </tr>
    </thead>
     
		  <tbody>
		<%
		AdminManageOperation ty = new AdminManageOperation();
		OperatorPOJO[] re = ty.getAllOperators();
		int k=1;
		for(int i=0;i< re.length ;i++)
		{ if(re[i].getOperatorStatus().equals("1"))
		{
		%>
		 <tr>
		 <td><%=k++%></td>
		   <td><%out.println(re[i].getOperatorName()); %></td>
		   <td><%out.println(re[i].getOperatorBranch()); %></td>
		   <td><%out.println(re[i].getOperatorPhone()); %></td>
		  
		   <td><button type="button" name="<%=re[i].getOperatorId()%>" class="btn btn-default btn-xs" 
		   onclick="removeOperator1(<%=re[i].getOperatorId()%>)">
		 		   <span class="glyphicon glyphicon-remove-sign" style="color:red;border:none;padding:0;background:none;"></span></button></td> </tr>
		   <% 
		 }
		}
		%>
		</tbody> 
		</table>
		  </div>
		</div>
</div>
</body>
</html>
