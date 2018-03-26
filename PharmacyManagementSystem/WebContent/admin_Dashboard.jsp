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
<title>Pharmacy Management System</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/dashboard.js"></script>
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
<div class="container-fluid">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>
<div class="carousel-inner">
      <div class="item active">
        <img src="images/1.jpg" alt="images/2.jpg" style="width:100%;">
        <div class="carousel-caption">
          <h3>Medicine is not only a science; it is also an art. It does not consist of compounding pills and plasters; it deals with the very processes of life, which must be understood before they may be guided.</h3>
          <p> - Paracelsus</p>
        </div>
      </div>

      <div class="item">
        <img src="images/2.jpg" alt="images/3.jpg" style="width:100%;">
        <div class="carousel-caption">
          <h3>One of the biggest challenges to medicine is the incorporation of information technology in our practices.</h3>
          <p>- Samuel Wilson</p>
        </div>
      </div>
    
     <div class="item">
        <img src="images/3.jpg" alt="images/4.jpg" style="width:100%;">
        <div class="carousel-caption">
          <h3>Medicine heals doubts as well as diseases.</h3>
          <p>- Karl Marx</p>
        </div>
      </div>
       <div class="item">
        <img src="images/4.jpg" alt="images/5.jpg" style="width:100%;">
        <div class="carousel-caption">
          <h3>Wherever the art of medicine is loved, there is also a love of humanity.</h3>
          <p>- Hippocrates</p>
        </div>
      </div>
      <div class="item">
        <img src="images/5.jpg" alt="images/1.jpg" style="width:100%;">
        <div class="carousel-caption">
          <h3>Medicine is the restoration of discordant elements; sickness is the discord of the elements infused into the living body.</h3>
          <p>- Leonardo da Vinci</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</body>
</html>
