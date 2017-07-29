<%@page language="java" contentType="text/html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    
    <%@ include file="Header.jsp" %>

<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Shippment Address</title>
</head>
<body>
<c:if test="${!flag}">
<form action="/FadshionWorldFrontend/InsertOrderDetails" name = "OrderDetails" method="post">
</c:if>
<form action="/OrderDetails" method="post">
   <div class="modal-dialog">
      <!--<div class="modal-content">-->
        <div class="modal-header">
		  <h1 class="text-center"> Shippment Address Details </h1>
		<!--</div>-->
		<div class="modal-body">
		   <form class="col-md-12 center block">
		   
		      <div class="form-group">
			   <label>Name</label>
			      <c:if test="${!flag}">
			        <input type="text" style="height:30px" name="username" id="username" class="form-control input-lg" required>
			      </c:if>
			  </div>
			  <div class="form-group">
			      <label>Address</label>
			          <c:if test="${!flag}">
			            <input type="text"  style=" height:30px"  name="address" id="address" class="form-control input-lg" placeholder="Enter your full address" required>
			          </c:if>
			  </div>
			  <div class="form-group">
			      <input type="submit" class="btn btn-block btn-lg btn-success" value="Submit" >
			  </div>
			  
		 </form>
		</div>
	  </div>
	</div>
</body>
</html>