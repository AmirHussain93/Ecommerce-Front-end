<%@ page language="java" contentType="text/html"%>


<html>
<body>
   <security:authorize access="hasRole('ROLE_ADMIN')"></security:authorize>
   <jsp:include page="WEB-INF/views/Header.jsp"></jsp:include>
   

<h2 align="center">Landing Page</h2>

<a href="Category">Category</a> | <a href="Product">Product</a> | <a href="Supplier">Supplier</a>
</body>
</html>
