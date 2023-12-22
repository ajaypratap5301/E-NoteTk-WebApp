<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!--Without Login not acess  -->
    <%
UserDetails user2 = (UserDetails) session.getAttribute("userD");
if (user2 == null) {
	response.sendRedirect("login.jsp");
	session.setAttribute("Login-error", "Please Login...");
}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Start takes the note </title>

<!--Link allcss.jsp file or call jsp file  for Css and Javascript by expression tag -->
<%@include file="all_component/allcss.jsp"%>

</head>
<body>

	

<div class="container-fluid p-0">
<!--Link navbar.jsp file or call jsp file for navbar  -->
	<%@include file="all_component/navbar.jsp"%>
<div class="card py-5">
<div class="card-body text-center">
<img alt="" src="img/notepad.jpg" class="img-fluid ex-auto" style="max-width:300px" >
<h1>START TAKING YOUR NOTES</h1>
<a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
</div>
</div>
</div>
<!--Link footer.jsp file or call jsp file   -->
	<%@include file="all_component/footer.jsp"%>
</body>
</html>