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
<title>Login page</title>
<body>
     <form  action="loginProcess" method="post" >
     <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" class="form-control" />
          <table align="right">
		      <thead bgcolor="pink">
			     <th colspan="2">Login</th>
		      </thead>
			  <tr bgcolor="gray">
			       <td>User Name</td>
				   <td><input type ="text" name="j_username" required /></td>
			  </tr>
			  <tr bgcolor="gray">
			       <td>Password</td>
				   <td><input type ="password" name="j_password" required /></td>
			  </tr>
			  <tr bgcolor=pink">
			  <td colspan="2"><center>
			  <input type="submit" value="submit" />
			          </center></td>
			  </tr>
	</form>
</body>
</html>