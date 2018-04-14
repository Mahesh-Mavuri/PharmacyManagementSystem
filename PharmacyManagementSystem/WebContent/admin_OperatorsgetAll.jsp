<%@page import="com.dao.OperatorPOJO"%>
<%@page import="com.dao.dashboardoperations.admin.AdminManageOperation"%>

<body>
<script type="text/javascript" src="js/admin_Operators.js"></script>
<!-- <div class="container"  id="allOps1">
		<button
			onclick="document.getElementById('id01').style.display='block'"
			style="width: auto;">Add Operator</button>
<div class="container" >
  <h2 >List of operators available</h2> -->
		<div class="table-responsive" id="allOps1">          
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
		int j= Integer.parseInt(request.getParameter("row"))-1;
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
			if(i==j)
			{
				continue;
			}
		%>
		
		 <tr>
		 <td><%=k++%></td>
		   <td><%out.println(re[i].getOperatorName()); %></td>
		   <td><%out.println(re[i].getOperatorBranch()); %></td>
		   <td><%out.println(re[i].getOperatorPhone()); %></td>
		<%  System.out.println("hello");%>
		   <td> <button type="button" name="<%=re[i].getOperatorId()%>" class="btn btn-default btn-xs" style="color : red;border : none;padding : 0;background : none;"
		   onclick="removeOperator1(<%=re[i].getOperatorId()%>)">
		   <span class="glyphicon glyphicon-remove-sign"></span></button></td> </tr>
		   <% 
		 }
		}
		%>
		</tbody> 
		</table>
		  </div>
		<!-- </div>
</div> -->
</body>
</html>