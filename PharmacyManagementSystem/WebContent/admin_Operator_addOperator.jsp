<%@page import="com.dao.OperatorPOJO"%>
<%@page import="com.dao.dashboardoperations.admin.AdminManageOperation"%>
<body>
<script type="text/javascript" src="js/admin_Operators.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<div class="table-responsive" id="allOps1">          
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
		boolean update=false;
		String uname = request.getParameter("uname");
		String name = request.getParameter("name");
		String uphone =request.getParameter("uphone");
		String uemail= request.getParameter("uemail");
		System.out.println(" "+uname+" "+name+" "+uphone+" "+uemail);
		update = ty.addOperator(uname, name, uphone, uemail);
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
		</body>
		