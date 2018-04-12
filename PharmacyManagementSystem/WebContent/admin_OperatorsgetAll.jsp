<%@page import="com.dao.OperatorPOJO"%>
<%@page import="com.dao.dashboardoperations.admin.AdminManageOperation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
		int j= Integer.parseInt(request.getParameter("row"));
		for(int i=0;i< re.length ;i++)
		{
			if(i==j)
			{
				re[i].setOperatorStatus("0",Integer.parseInt(re[i].getOperatorId()));
			}
			if(re[i].getOperatorStatus().equals("1"))
		{
		
		%>
		
		 <tr>
		 <td><%=k++%></td>
		   <td><%out.println(re[i].getOperatorName()); %></td>
		   <td><%out.println(re[i].getOperatorBranch()); %></td>
		   <td><%out.println(re[i].getOperatorPhone()); %></td>
		  
		   <td> <button type="button" class="btn btn-default btn-xs">
		   <span class="glyphicon glyphicon-trash"></span></button></td> </tr>
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