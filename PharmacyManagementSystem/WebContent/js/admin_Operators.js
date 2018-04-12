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
function removeOperator(element)
{
	document.getElementById('id02').style.display='block';
	document.getElementById('re').value='1';
}