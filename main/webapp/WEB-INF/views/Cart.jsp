<%@ page language="java" contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="Header.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>

<body>

<table cellspacing="3" align="center">
<tr>
    <td colspan="5"><center><h3><font color="blue">Shopping Cart</font></h3></center></td>
</tr>
 <tr class="blank_row">
            <td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
 </tr>
    <tr bgcolor="lightblue">
		<td width=25%>Product Name</td>
		<td width=25%>Quantity</td>
		<td>Price</td>
		<td>Image</td>
		<td>Operation</td>
	</tr>
	
	 <tr class="blank_row">
            <td bgcolor="#FFFFFF" colspan="3">&nbsp;</td>
     </tr>

<c:forEach items="${cartitems}" var="cartitem">
       
    
<tr>
    <form action="<c:url value="/updateCartItem/${cartitem.citemid}"/>" method="get">
    <td>${cartitem.prodname}</td>
    <td><input type="text" value="${cartitem.quantity}" name="quantity"/></td>
 
    <td>${cartitem.price * cartitem.quantity}</td>
    
    <td><img src="<c:url value='/resources/images/${cartitem.prodid}.jpg'/>" width="100"/></td> 
    <td>
       <input type="submit" class="btn btn-success" value="UPDATE" name="update">
        
        <a href="<c:url value="/deleteCartItem/${cartitem.citemid}"/>" class="btn btn-danger">DELETE</a>
    </td>
    </form>
</tr>
</c:forEach>
<tr>
    <td> <a href="/FadshionWorldFrontend/ProductPage" class="btn btn-primary"> ContinueShopping </a><br></td>
  
    <td> <a href="/FadshionWorldFrontend/Checkout" class="btn btn-info">CheckOut</a></td>
</tr>

</table>

</body>
</html>