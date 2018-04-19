<%@page import="com.dao.OperatorPOJO"%>
<%@page import="com.dao.dashboardoperations.admin.AdminManageOperation"%>

<%		String name = request.getParameter("uname");
		boolean status = false; 
		AdminManageOperation ty = new AdminManageOperation();
		status = ty.userexists(name);
		//System.out.print(name);
		//System.out.print(status);
		if(status)
		{%>
			User already Exists
		<%
		}
		else
		{%>
			
		<%
		}
		%>