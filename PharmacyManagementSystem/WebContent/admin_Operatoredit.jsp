<%@page import="com.dao.OperatorPOJO"%>
<%@page import="com.dao.dashboardoperations.admin.AdminManageOperation"%>

<body>
<script type="text/javascript" src="js/admin_Operators.js"></script>

		
		  <tbody>
		<%
		AdminManageOperation ty = new AdminManageOperation();
		OperatorPOJO[] re = ty.getAllOperators();
		int k=1;
		String oname= request.getParameter("oname");
		String obranch= request.getParameter("obranch");
		String ophone= request.getParameter("ophone");
		String oemail= request.getParameter("oemail");
		//System.out.println("Hello "+oname+" "+obranch+" "+ophone+" "+oemail);
		int j = Integer.parseInt(request.getParameter("row"))-1;
		for(int i=0;i< re.length ;i++)
		{
			if(re[i].getOperatorStatus().equals("1"))
		{
				if(i==j)
				{
					/* re[i].setOperatorName(oname,Integer.parseInt(re[i].getOperatorId()));
					re[i].setOperatorBranch(obranch,Integer.parseInt(re[i].getOperatorId()));
					re[i].setOperatorPhone(ophone,Integer.parseInt(re[i].getOperatorId()));
					re[i].setOperatorEmail(oemail,Integer.parseInt(re[i].getOperatorId()));
					System.out.println("data set in database"); */
					re[i].editOperator(oname,obranch,ophone,oemail,re[i].getOperatorId());
				}
		
		%>
		
		 
		   <button type="button" name="<%=re[i].getOperatorId()%>" class="btn btn-default btn-xs" style="color : green;border : none;padding : 0;background : none;"
		   onclick="editOperator('<%=re[i].getOperatorId()%>', '<%=re[i].getOperatorName()%>', '<%=re[i].getOperatorBranch()%>','<%=re[i].getOperatorPhone()%>', '<%=re[i].getOperatorEmail()%>')">
		 		   <span class="glyphicon glyphicon-pencil" ></span></button>
		    <button type="button" name="<%=re[i].getOperatorId()%>" class="btn btn-default btn-xs" style="color : red;border : none;padding : 0;background : none;"
		   onclick="removeOperator1(<%=re[i].getOperatorId()%>)">
		   <span class="glyphicon glyphicon-remove-sign"></span></button></td> </tr>
		   <% 
		 }
		}
		%>
		</tbody> 
		</table>
		  </div>
		</body>
