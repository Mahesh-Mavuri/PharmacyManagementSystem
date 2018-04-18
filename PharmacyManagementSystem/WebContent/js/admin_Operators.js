// Get the modal
var modal = document.getElementById('id01');
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
var modal = document.getElementById('id03');
window.onclick = function(event) {
 if (event.target == modal) {
     modal.style.display = "none";
 }
}

function removeOperator1(i) {
	
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
		 
		  if (this.readyState == 4 && this.status == 200) {
	      document.getElementById("allOps1").innerHTML = this.responseText;
	      console.log(this.responseText);
	    }
	  };
	  xhttp.open("GET", "admin_OperatorsgetAll.jsp?row="+i, true);
	  xhttp.send();
	}
function editOperator(id,name,branch,phone,email)
{	
	
	var form=document.getElementById('editOp');
	document.getElementById('oname').value=name;
	document.getElementById('obranch').value=branch;
	document.getElementById('ophone').value=phone;
	document.getElementById('oemail').value=email;
	document.getElementById('id03').style.display='block';
	$(document).ready(function(){
	$("#editOp").submit(function(){
		var oname1=document.getElementById('oname').value;
		var obranch1=document.getElementById('obranch').value;
		var ophone1=document.getElementById('ophone').value;
		var oemail1=document.getElementById('oemail').value;

		$.ajax("admin_Operatoredit.jsp?oname="+oname1+"&obranch="+obranch1+"&ophone="+ophone1+"&oemail="+oemail1+"&row="+id,
				{
				success: function(data,status,xhr){
			
			$("#allOps1").append(data);
			//console.log(data);
				}
				});
		
	//alert("Data Updated");
		
	});
	});
	/*form.onsubmit = function(){
		document.getElementById('id03').style.display='none';	

	var oname1=document.getElementById('oname').value;
	var obranch1=document.getElementById('obranch').value;
	var ophone1=document.getElementById('ophone').value;
	var oemail1=document.getElementById('oemail').value;
	//alert(oname1+" "+obranch1+" "+ophone1+" "+oemail1+" ");
	
	 var xhttp = new XMLHttpRequest();
	 
	  xhttp.onreadystatechange = function() {
		 	
	  
	   if (this.readyState == 4 && this.status == 200) {
		 
	      document.getElementById("allOps1").innerHTML = this.responseText;  
	      console.log(this.responsetext);
	   }
	  };
	  xhttp.open("GET", "admin_Operatoredit.jsp?oname="+oname1+"&obranch="+obranch1+"&ophone="+ophone1+"&oemail="+oemail1+"&row="+id, true);
	  
	  xhttp.send();
	  alert("data changed");
}*/
}
