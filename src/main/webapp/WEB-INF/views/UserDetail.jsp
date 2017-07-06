<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="Header.jsp"%>

<html>
<head>
<meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <title>UserDetail</title>
</head>

<body>
<c:set value ="${userdetail}" var="userinfo">
</c:set>
<form:form action="InsertUserDetail" modelAttribute="userdetail">
<table align="center">
			<tr>
				<td colspan="2"><center>User Details</center></td>
			</tr>
			<tr>
				<td>User Name</td>
				<td><form:input path="username" value="${userinfo.username}" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><form:input path="password" value="${userinfo.password}"/></td>
			</tr>
			
			<tr>
				<td>Customer Name</td>
				<td><form:select path="CustName" value="${userinfo.CustName}"/></td> 
		    </tr>
			
			<tr>
				<td>Role</td>
				<td><form:select path="role" value="${user.info.Enabled}"/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><form:input path="Email" value="${userinfo.Email}"/></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><form:input path="Address" value="${userinfo.Address}"/></td>
			</tr>
			<tr>
				<td>Mobile No</td>
				<td><form:input path="Mobile" value="${userinfo.Mobile}"/></td>
			</tr>
			<tr>
			    <td>Enabled</td>
			    <td><form:input path="Enabled" value="${userinfo.Enabled}"/></td>
			</tr>
			
			<tr>
			<td colspan="2"><input type="submit" /></td>
			</tr>
</table>
</form:form>

<!-- Displaying the UserDetail data using Table 
<table cellspacing="2" align="center" border="1">

	<tr bgcolor="pink">
		<td>User Name</td>
		<td>Password</td>
		<td>Customer Name</td>
		<td>Role</td>
		<td>Email</td>
		<td>Address</td>
		<td>Mobile</td>
		<td>Enabled</td>
		<td>Operation</td>
		
	</tr>
	<c:forEach items="${userdetaillist}" var="userdetail">
		<tr bgcolor="cyan">
			<td>${userdetail.username}</td>
			<td>${userdetail.password}</td>
			<td>${userdetail.CustName}</td>
			<td>${userdetail.Role}</td>
			<td>${userdetail.Email}</td>
			<td>${userdetail.Address}</td>
			<td>${userdetail.Mobile}</td>
			<td>${userdetail.Enabled}</td>
		    <td>${userdetail.}</td>
			<td><a href="<c:url value="deleteUserDetail/${userdetail.username}"/>">Delete</a>
				<a href="<c:url value="updateUserDetail/${userdetail.username}"/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>
 Completed Displaying Table -->

</body>
</html>

