<%@ page language="java" contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="Header.jsp"%>

<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Order Confirmation</title>
</head>

<body>
    <table cellspacing="4" align="center" >
       <tr>
            <td colspan="5"><center><h2><font color="black"> Shopping Cart</font></h2></center></td>
       </tr>
       
       <tr class="blank_row">
            <td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
       </tr>
       
       <tr style="background-color:rgb(128,128,128);color:white">
         <td width=40%>Product Name</td>
         <td width=20%>Quantity</td>
         <td width=30%>Images</td>
         <td width=25%>SubTotal</td>
       </tr>
       
       <tr class="blank_row">
            <td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
       </tr>
       
       
  <c:forEach items="${cartitems}" var="cartitem">
  <tr>
    <td>${cartitem.prodname}</td>
    <td>${cartitem.quantity}</td>
    <td><img src="<c:url value='/resources/images/${cartitem.prodid}.jpg'/>" width="100"/></td> 
    <td>${cartitem.price * cartitem.quantity}</td>
    
  </tr>
  <c:set var="pid" value="${cartitem.citemid}"/>
  </c:forEach>
  
   <tr class="blank_row">
            <td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
   </tr>
  <tr>
      <td colspan="3"> Grand total </td>
      <td>${grandtotal}</td>
  </tr>
   <tr>
   <td> <br><br><br><a href="/FadshionWorldFrontend/Payment/${pid}" class="btn btn-primary"> Make Payment</a></td>
  </tr>
 
  
</body>
</html>