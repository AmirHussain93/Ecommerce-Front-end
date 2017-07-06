<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ include file="Header.jsp" %>

<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<title> Register </title>
</head>
<body>
    <div class="modal-dialog">
      <!--<div class="modal-content">-->
        <div class="modal-header">
		  <h1 class="text-center"> Register </h1>
		<!--</div>-->
		<div class="modal-body">
		   <form class="col-md-12 center block">
		      <div class="form-group">
			   <label>Name</label>
			    <input type="text" style=" height:30px" name="CustName" id="Custname" class="form-control input-lg" placeholder="Enter Your Name">
			  </div>
			  <div class="form-group">
			     <label>Username</label>
			     <input type="text" style=" height:30px" name="username" id="username" class="form-control input-lg" placeholder="username">
			  </div>
			  <div class="form-group">
			     <label>Password</label>
			     <input type="password" style=" height:30px" name="password" id="password" class="form-control input-lg" placeholder="Atleast 4 character">
			  </div>
			  <div class="form-group">
			      <label>Email</label>
			      <input type="text" style=" height:30px" name="Email" id="Email" class="form-control input-lg" placeholder="Ex xyz@gmail.com">
			  </div>
			   <div class="form-group">
			      <label>Mobile No</label>
			      <input type="text" style=" height:30px" name="Mobile" id="Mobile" class="form-control input-lg" placeholder="Enter your contact number">
			  </div>
			  <div class="form-group">
			      <label>Address</label>
			      <input type="text"  style=" height:80px"  name="Address" id="Address" class="form-control input-lg" placeholder="Enter your full address">
			  </div>
			  <div class="form-group">
			      <input type="submit" class="btn btn-block btn-lg btn-success" value="Submit">
			  </div>
		   </form>
		</div>
	  </div>
	</div>
</body>
</html>