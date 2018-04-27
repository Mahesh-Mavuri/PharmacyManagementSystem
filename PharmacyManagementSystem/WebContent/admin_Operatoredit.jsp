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
		OperatorPOJO[] re = ty.getAllOperators();
		int k=1;
		String oname= request.getParameter("oname");
		String obranch= request.getParameter("obranch");
		String ophone= request.getParameter("ophone");
		String oemail= request.getParameter("oemail");
		String oid=request.getParameter("row");
		System.out.println("Hello "+oname+" "+obranch+" "+ophone+" "+oemail+" "+oid);
		int j = Integer.parseInt(request.getParameter("row"));
		OperatorPOJO re1 = new OperatorPOJO();
		String cUname = re1.getOperatorUserNamewithId(j);
		System.out.println(cUname);
		for(int i=0;i< re.length ;i++)
		{
			if(re[i].getOperatorStatus().equals("1"))
		{
				if(re[i].getOperatorUsername().equals(cUname))
				{
					/* re[i].setOperatorName(oname,Integer.parseInt(re[i].getOperatorId()));
					re[i].setOperatorBranch(obranch,Integer.parseInt(re[i].getOperatorId()));
					re[i].setOperatorPhone(ophone,Integer.parseInt(re[i].getOperatorId()));
					re[i].setOperatorEmail(oemail,Integer.parseInt(re[i].getOperatorId()));
					System.out.println("data set in database"); */
					re[i].editOperator(oname,obranch,ophone,oemail,oid);
				}
				%>
		 <tr>
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
		   <span class="glyphicon glyphicon-remove-sign"></span></button></td> </tr>
		   <% 
		 }
		}
		%>
		</tbody> 
		</table>
		  </div>
		</body>