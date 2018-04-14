// Get the modal
var modal = document.getElementById('id01');
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
var modal = document.getElementById('id02');
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