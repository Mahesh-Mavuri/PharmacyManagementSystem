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

function removeOperator(i) {
	
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
	$("#submit").on("click",function(event){
		event.preventDefault();
		var oname1=document.getElementById('oname').value;
		var obranch1=document.getElementById('obranch').value;
		var ophone1=document.getElementById('ophone').value;
		var oemail1=document.getElementById('oemail').value;
		document.getElementById('id03').style.display='none';
		//alert(oname1+" "+obranch1+" "+ophone1+" "+oemail1+" ");
		//oname="+oname1+"&obranch="+obranch1+"&ophone="+ophone1+"&oemail="+oemail1+
		$.ajax({
            url: "admin_Operatoredit.jsp?row="+id,
            type: "POST",
            data: { oname: oname1, obranch: obranch1, ophone : ophone1, oemail : oemail1},                   
            success: function(data,status,xhr)
                        {	$("#allOps1").html(data);
                        //alert("status:"+status);
                            console.log(data); 
                            
                        }/*,
                        error: function(jqXHR, exception) {
                            if (jqXHR.status === 0) {
                                alert('Not connect.\n Verify Network.');
                            } else if (jqXHR.status == 404) {
                                alert('Requested page not found. [404]');
                            } else if (jqXHR.status == 500) {
                                alert('Internal Server Error [500].');
                            } else if (exception === 'parsererror') {
                                alert('Requested JSON parse failed.');
                            } else if (exception === 'timeout') {
                                alert('Time out error.');
                            } else if (exception === 'abort') {
                                alert('Ajax request aborted.');
                            } else {
                                alert('Uncaught Error.\n' + jqXHR.responseText);
                            }
                        }*/
        });
		/*$.ajax({
			url: 'admin_Operatoredit.jsp?oname='+oname1+'&obranch='+obranch1+'&ophone='+ophone1+'&oemail='+oemail1+'&row='+id,
				
				success: function(data,status,xhr){
					 
					 $("#allOps1").text(data);
					 console.log(status);
				}
				});*/
		
	
		
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
function userExists()
{
	$(document).ready(function(){
		$("#uname").blur(function(){
			var username=$("#uname").val();
			$.ajax({
				url:"admin_Operator_userexists.jsp",
				data:{uname :username},
				success:function(data,status,xhr){
				if(data == "User already Exists")	
					{
					
					//$("#Invalid").html(data);
					
					}
				else
					{
					$("#Invalid").html(data);
					$("#Invalid").css("color","red");
					}
					//alert(data);
				}
				
				
			})
		})
	})	
}

function addOperator()
{	var form=document.getElementById('addOp');
	//alert("hi");
	document.getElementById('id01').style.display='block';
	$(document).ready(function(){
		$("#addOperator").on("click",function(event){
			event.preventDefault();
			var uname=document.getElementById('uname').value;
			var name=document.getElementById('name').value;
			var uphone=document.getElementById('uphone').value;
			var uemail=document.getElementById('uemail').value;
			document.getElementById('id01').style.display='none';
			//alert(uname+" "+name+" "+uphone+" "+uemail);
			$.ajax({
	            url: "admin_Operator_addOperator.jsp",
	            type: "POST",
	            data: { uname: uname, name: name, uphone : uphone, uemail : uemail},                   
	            success: function(data,status,xhr)
	                        {	$("#allOps1").html(data);
	                        //alert("status:"+status);
	                         //alert(data); 
	                            
	                        }
		})
	})
})
}



