<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="AdminHeader.jsp"%>

<html>
<head>
 <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <title>Category</title>
</head>
<style>
body {
  background-color:#E3DAD8;
}
</style>
<body>

<!-- Category Form Started -->
<c:if test="${flag}">
	<form action="/FadshionWorldFrontend/UpdateCategory" method="post">
</c:if>
<c:if test="${!flag}">
<form action="AddCategory" method="post">
</c:if>

	<table align="center" cellspacing="2">
	
	        &nbsp; <center> <h2>Category Details</h2></center>&nbsp;
		<tr>
			<c:if test="${flag}">
			<input type="text" name="catid" value="${category.catid}" />
			</c:if>
		</tr>
		<tr>
			<td>Category Name</td>
			<c:if test="${flag}">
				<td><input type="text" name="catname" value="${category.catname}" /></td>
			</c:if>
			<c:if test="${!flag}">
				<td><input type="text" name="catname" required/></td>
			</c:if>
		</tr>
		<tr>
			<td>Category Description</td>
			<c:if test="${flag}">
				<td><input type="text" name="catdesc" value="${category.catdesc}" /></td>
			</c:if>
			<c:if test="${!flag}">
			<td><input type="text" name="catdesc" required/></td>
			</c:if>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="AddCategory" /></td>
		</tr>
	</table>
</form>
<!-- Category Form Completed -->
&nbsp;&nbsp;
<!-- Displaying the Category data using Table -->
<table cellspacing="2" align="center" border="1">

	<tr  style="background-color:rgb(128,128,128);color:white">
		<td width=20%>Category ID</td>
		<td width=30%>Category Name</td>
		<td width=35%>Category Desc</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${catdetail}" var="category">
		<tr style="background-color:rgb(200,200,200);color:black">
			<td height="30">${category.catid}</td>
			<td>${category.catname}</td>
			<td>${category.catdesc}</td>
			<td><a href="<c:url value="/deleteCategory/${category.catid}"/>">Delete</a>
				<a href="<c:url value="/updateCategory/${category.catid}"/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>
<!-- Completed Displaying Table -->

</body>
</html>
