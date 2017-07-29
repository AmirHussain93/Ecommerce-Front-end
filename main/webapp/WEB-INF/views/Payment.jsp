<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
</head>
<style>
body{
background-color:lightblue
}
</style>
<body>
<br><br>
<center><h1>Make payment</h1></center>
    <form action="/FadshionWorldFrontend/Payment/${citemid}" method="post">
    <br>
    <br>
    <br>
  <center>  <select name="mode" id="mymenu">
    <option>cash on delivery</option>
    <option>card</option></center>
    
    <input type="text" name="cardnumber" id="cardfield" value='0'/>
    <input type="hidden" name="cardnumber"  value='0'/>

</select>
<input type="submit" value= "Go ahead" >
    </form>
<script type="text/javascript">

var selectmenu=document.getElementById("mymenu")
selectmenu.onchange=function(){ //run some code when "onchange" event fires
 var chosenoption=this.options[this.selectedIndex] //this refers to "selectmenu"
 if (chosenoption.value=="cash on delivery"){
	  document.getElementById("cardfield").disabled = true; 
	 //open target site (based on option's value attr) in new window
 }
 if (chosenoption.value=="card"){
	  document.getElementById("cardfield").disabled = false; 
	 //open target site (based on option's value attr) in new window
}
}

</script>
</body>
</html>