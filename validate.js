function emailid()
{
	var i=document.getElementByld("eid").value;
	var p=i.search(/^[a-zA-Z0-9+_.-]+@(.+)$/);
	if(p!=0)
		alert(i+"is wrong");
}