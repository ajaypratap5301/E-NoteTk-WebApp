<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
.back-img {
	background: url("img/bgn.jpg");
	height: 80vh;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

<meta charset="UTF-8">
<title>Home Page</title>

<!--Link jsp file or call jsp file  for Css and Javascript -->
<%@include file="all_component/allcss.jsp"%>

</head>
<body>

	<!--Link jsp file or call jsp file for navbar  -->
	<%@include file="all_component/navbar.jsp"%>
	
	
	
 

	 
	
	

	<div class="container-fluid back-img">
	<div class="text-center">
	<h1 class="text-grey"><i class="fa fa-book" aria-hidden="true"></i>E Notes-Save Your Notes</h1>
	<a href="login.jsp" class="btn btn-light"><i class="fa fa-sign-in" aria-hidden="true"></i>Login</a>
		<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
	</div>
	
	</div>
	
		<!--Link footer.jsp file or call jsp file   -->
	<%@include file="all_component/footer.jsp"%>

</body>
</html>