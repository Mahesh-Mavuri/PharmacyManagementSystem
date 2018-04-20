<%@page import="com.dao.OperatorPOJO"%>
<%@page import="com.dao.dashboardoperations.admin.AdminManageOperation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="js/admin_Operators.js"></script>
<script type="text/javascript" src="js/dashboard.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/dashboard.css">
<link rel="stylesheet" href="css/admin_Operators.css">
<title>Pharmacy Management System</title>
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
<div class="container" >
		<button
			onclick="addOperator()"
			style="width: auto;">Add Operator</button>
		
		<div id="id01" class="modal">
			<form class="modal-content animate" action="" id="addOp" method="post" style="padding:30px;width:30%;">
					<div class="input-group">
					<label for="uname"><b>Username</b></label> <input type="text" class="form-control"
						placeholder="Enter Username" name="uname" id="uname" onblur="userExists()" required><br>
					<div id="Invalid"></div>	
					<label for="name"><b>Name</b></label> <input type="text" class="form-control"
						placeholder="Enter Name" name="name" id="name" required><br>
					<label for="uphone"><b>Phone</b></label> <input type="text" class="form-control"
						placeholder="Enter Phone" name="uphone" id="uphone" required><br>
					<label for="uemail"><b>Email</b></label> <input type="email" class="form-control"
						placeholder="Enter Email" name="uemail" id="uemail" required><br>
					<button type="submit" id="addOperator" name="addOperator" >Submit</button>
					<button type="button"
						onclick="document.getElementById('id01').style.display='none'"
						class="cancelbtn">Cancel</button>
				</div>
			</form>
		</div>
			<div class="container" >
  <h2 >List of operators available</h2>
		<div class="table-responsive"  id="allOps1">          
  <table class="table" >
    <thead>
      <tr>
        <th>#</th>
        <th>Name</th>
        <th>Branch</th>
        <th>PhoneNumber</th>
        <th>Email</th>
        <th>Action</th>
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
		 <tr id="<%re[i].getOperatorId();%>">
		 <td><%=k++%></td>
		   <td><%out.println(re[i].getOperatorName()); %></td>
		   <td><%out.println(re[i].getOperatorBranch()); %></td>
		   <td><%out.println(re[i].getOperatorPhone()); %></td>
		   <td><%out.println(re[i].getOperatorEmail()); %></td>
		   <td>
		    
		   <button type="button" name="<%=re[i].getOperatorId()%>" class="btn btn-default btn-xs" style="color : green;border : none;padding : 0;background : none;"
		   onclick="editOperator('<%=re[i].getOperatorId()%>', '<%=re[i].getOperatorName()%>', '<%=re[i].getOperatorBranch()%>','<%=re[i].getOperatorPhone()%>', '<%=re[i].getOperatorEmail()%>')">
		 		   <span class="glyphicon glyphicon-pencil" ></span></button>
		 		 
		 	   <button type="button" name="<%=re[i].getOperatorId()%>" class="btn btn-default btn-xs" style="color : red;border : none;padding : 0;background : none;"
		   onclick="removeOperator(<%=re[i].getOperatorId()%>)">
		 		   <span class="glyphicon glyphicon-remove-sign" ></span></button>
		 		   </td> </tr>
		 		   
		   <% 
		 }
		
		}
		%>
		</tbody> 
		</table>
		  </div>
		</div>
</div>
<div id="id03" class="modal">
			<form class="modal-content animate" action="" method="post" style="padding:30px;width:30%;" id="editOp">
					<div class="input-group">
					<label for="oname"><b>Name</b></label> <input type="text" class="form-control" value=""
						placeholder="Enter Username" name="oname" id="oname" required><br>
					<label for="obranch"><b>Branch</b></label> <input type="text" class="form-control" value=""
						placeholder="Enter Branch" name="obranch" id="obranch" required><br>
					<label for="ophone"><b>Contact</b></label> <input type="text" class="form-control" value=""
						placeholder="Enter Contact" name="ophone" id="ophone" required><br>
					<label for="oemail"><b>Email</b></label> <input type="email" class="form-control" value=""
						placeholder="Enter Email" name="oemail" id="oemail" required><br>
						
					<button type="submit" value="submit" id="submit">Submit</button>
					<button type="button"
						onclick="document.getElementById('id03').style.display='none'"
						class="cancelbtn">Cancel</button>
				</div>
			</form>
		</div> 
		</body>
</html>
