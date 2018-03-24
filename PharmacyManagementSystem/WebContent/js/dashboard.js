function openNav() {
    document.getElementById("mySidenav").style.width = "20%";
    document.getElementById("main").style.marginLeft = "20%";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
}
function destroySession()
{
	var form = document.getElementById("logoutform");
	document.getElementById("out").setAttribute("value","getout");
	form.submit();
	
	}