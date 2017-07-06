

<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

<nav class="navbar navbar-default">
     <div class="container-fluid">
     <div class="navbar-header">
       <a class="navbar-brand" href="#">FashioWorld</a>
     </div>
     
     
     <c:if test="${session.Scope.loggedIn}">
     
     <ul class="nav navbar-nav">
        <li class="active"><a href="AdminHome">Home</a></li>
       <!-- <li><a href="index.jsp">Index</a></li>-->
       
        <li><a href="Category">Manage Category</a></li>
        <li><a href="Supplier">Manage Supplier</a></li>
        <li><a href="Product">Manage Product</a></li>
      
       </ul>
       
       <div class="nav navbar-nav navbar-right">
       <a href="#">${sessionScope.username}</a>
       </div>
     </c:if>
     
      <c:if test="${!session.Scope.loggedIn}">
     
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Home</a></li>
       <!-- <li><a href="index.jsp">Index</a></li>-->
       
        <li><a href="/FadshionWorldFrontend/Login">Login</a></li>
        <li><a href="/FadshionWorldFrontend/AboutUs">AboutUs</a></li>
        <li><a href="/FadshionWorldFrontend/Register">Register</a></li>
        <li><a href="/FadshionWorldFrontend/ContactUs">ContactUs</a></li>
        <li><a href="/FadshionWorldFrontend/ProductPage">Product</a></li>
       </ul>
       
       <div class="nav navbar-nav navbar-right">
       <a href="#">Sign In</a>
       </div>
     </c:if>
     
  </div>
</nav>
</body>
</html>