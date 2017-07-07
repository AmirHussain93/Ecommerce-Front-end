<%@ page language="java" contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="Header.jsp"%>

<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Order Confirmation</title>
</head>

<body>
    <table cellspacing="3" align="center">
       <tr>
            <td colspan="5"><center><h3>Shpping Cart</h3></center></td>
       </tr>
       <tr bgcolor='blue'>
         <td>Product Name</td>
         <td>Quantity</td>
         <td>SubTotal</td>
         <td>Images</td>
         <td>Operation</td>
        </tr>
  <c:forEach items="${cartitems}" var="cartitem">
  <tr>
    <td>${cartitem.prodmname}</td>
    <td>${cartitem.quantity}</td>
    <td><img src="<c:url value='/resources/images/${cartitem.prodid}.jpg'/>" width="100"/></td> 
    <td>${cartitem.price * cartitem.quantity}</td>
  </tr>
  </c:forEach>
  <tr>
      <td colspan="3"> Grant total </td>
      <td>${granttotal}</td>
  </tr>
</body>
</html>