<%@page import="com.dao.OperatorPOJO"%>
<%@page import="com.dao.dashboardoperations.admin.AdminManageOperation"%>


<body>
<script type="text/javascript" src="js/admin_Operators.js"></script>

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
		}
		for(int i=0;i< re.length ;i++)
		{
			if(re[i].getOperatorStatus().equals("1"))
		{
		
		%>
		
		 <tr>
		 <td><%=k++%></td>
		   <td><%out.println(re[i].getOperatorName()); %></td>
		   <td><%out.println(re[i].getOperatorBranch()); %></td>
		   <td><%out.println(re[i].getOperatorPhone()); %></td>
		  
		   <td> <button type="button" name="<%=re[i].getOperatorId()%>" class="btn btn-default btn-xs"
		   onclick="removeOperator1(<%=re[i].getOperatorId()%>)">
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