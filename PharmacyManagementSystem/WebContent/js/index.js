function adminLogin()
{	var form = document.getElementById("login");
	document.getElementById("role").setAttribute("value","admin");
	form.submit();
}
function operatorLogin()
{	var form = document.getElementById("login");
	document.getElementById("role").setAttribute("value","operator");
	form.submit();
}
function wrongCredentials()
{
	document.getElementById("wrong").style.display="block";
}
function wrongemail()
{
	document.getElementById("wrong").style.display="block";
}
function emailfailure()
{
	document.getElementById("failure").style.display="block";
}
function emailsuccess()
{
	document.getElementById("success").style.display="block";
	document.getElementById("success1").style.display="none";
}
function pleasewait()
{
	document.getElementById("success1").style.display="block";
}