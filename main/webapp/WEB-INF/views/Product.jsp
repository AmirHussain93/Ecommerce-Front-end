<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="AdminHeader.jsp"%>

<html>
<head>
 <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <title>Product</title>
</head>
<style>
body {
  background-color:#E3DAD8;
}
</style>

<body>
<c:set value ="${product}" var="myprod">

</c:set>


<form:form action="/FadshionWorldFrontend/InsertProduct" modelAttribute="product" enctype="multipart/form-data"  method="post">


<table align="center">
			<tr>
				<td colspan="2"><h2><center>Product Details</center></h2></td>
			</tr>
			<tr>
				<td>Product ID</td>
				<c:if test="${flag}">
<td><form:input path="prodid" value="0"  readonly="true"/></td>
				</c:if>
				<c:if test="${!flag}">
<td><form:input path="prodid" value="${myprod.prodid}"  readonly="true"/></td>
				</c:if>
			
				
			</tr>
			<tr>
				<td>Product Name</td>
				<c:if test="${flag}">
				<td><form:input path="prodname" value="${myprod.prodname}"/></td>
				</c:if>
				<c:if test="${!flag}">
				<td><form:input path="prodname" /></td>
				</c:if>
			</tr>
			
			<tr>
				<td>Category</td>
				<td><form:select path="catid">
						<form:option value="0" label="----Select----" />
						<form:options items="${catlist}" />
					</form:select>
				</td>
			</tr>
			
			<tr>
				<td>Supplier</td>
				<td><form:select path="suppid"> 
				        <form:option value="0" label="----Select----" />
				        <form:options items="${supplist}" />
				    </form:select>
				</td>
			</tr>
			<tr>
				<td>Price</td>
				<c:if test="${flag}">
				<td><form:input path="price" value="${myprod.price}"/></td>
				</c:if>
				<c:if test="${!flag}">
				<td><form:input path="price" /></td>
				</c:if>
			</tr>
			<tr>
				<td>Stock</td>
				<c:if test="${flag}">
				<td><form:input path="quantity" value="${myprod.quantity}"/></td>
				</c:if>
				<c:if test="${!flag}">
				<td><form:input path="quantity"  /></td>
				</c:if> 
			</tr>
			<tr>
				<td>Product Desc</td>
				<c:if test="${flag}">
				<td><form:textarea path="prodDesc" value="${myprod.prodDesc}"/></td>
				</c:if>
				<c:if test="${!flag}">
					<td><form:textarea path="prodDesc" /></td>
					</c:if>
			</tr>
			<tr>
			    <td>Product Image</td>
			    <td><form:input type="file" path="pimage" /></td>
			</tr>
			
			<tr>
			<td colspan="2"><input type="submit" /></td>
			</tr>
</table>
</form:form>

<!-- Displaying the Product data using Table -->
<table cellspacing="2" align="center" border="1">

	<tr style="background-color:rgb(128,128,128);color:white">
		<td width="40">Product ID</td>
		<td width="30">Product Name</td>
		<td width="30">Image</td>
		<td width="40">Price</td>
		<td width="30">Quantity</td>
		<td width="35">Category Id</td>
		<td width="35">Supplier Id</td>
		<td width="30">Operation</td>
	</tr>
	<c:forEach items="${prodlist}" var="product">
		<tr style="background-color:rgb(200,200,200);color:black">
			<td height="30">${product.prodid}</td>
			<td>${product.prodname}</td>
			<td><img src="<c:url value='/resources/images/${product.prodid}.jpg'/>" width="100"/></td>
			<td>${product.price}</td>
			<td>${product.quantity}</td>
			<td>${product.catid}</td>
			<td>${product.suppid}</td>
			<td><a href="<c:url value="/deleteProduct/${product.prodid}"/>">Delete</a>
				<a href="<c:url value="/updateProduct/${product.prodid}"/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>
<!-- Completed Displaying Table -->

</body>
</html>