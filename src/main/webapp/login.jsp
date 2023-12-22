<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
    
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<!--Link allcss.jsp file or call jsp file  for Css and Javascript by expression tag -->
<%@include file="all_component/allcss.jsp"%>

</head>
<body>

	<!--Link navbar.jsp file or call jsp file for navbar  -->
	<%@include file="all_component/navbar.jsp"%>


	<!-- Login form -->

	<div class="container-fluid div-bgcolor">
		<div class="row">
			<div class="col-md-5 offset-md-4">

				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-sign-in fa-3x" aria-hidden="true"></i>
						<h1>Login</h1>
					</div>
					<div class="card-body">

						<%
						String invalidMsg = (String) session.getAttribute("login-failed");
						if (invalidMsg != null) {
						%>
						<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>

						<%
						session.removeAttribute("login-failed");
						}
						%>

						<%
						String withoutLogin = (String) session.getAttribute("Login-error");
						if (withoutLogin != null) {
						%>

						<div class="alert alert-danger" role="alert"><%=withoutLogin %></div>

						<%
						session.removeAttribute("Login-error");
						}
						%>

<%
String lgMsg=(String)session.getAttribute("logoutMsg");
if(lgMsg!=null)
{%>

<div class="alert alert-success" role="alert"><%=lgMsg%></div>
<%
}
session.removeAttribute("logoutMsg");
%>


						<form action="loginServlet" method="post">

							<div class="form-group">
								<label>Enter your Email</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name=uemail>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
						</form>

					</div>
				</div>

			</div>
		</div>
	</div>
	<!--Link footer.jsp file or call jsp file   -->
	<%-- <%@include file="all_component/footer.jsp"%> --%>
<div class="container-fluid bg-dark mt-1">

<p class="text-center text-white">Note: Any Error occur then contact Ajay Pratap. Designed and developed by Ajay</p>
<p class="text-center text-white">All Right Reserved @apr-2023</p>

</div>


</body>
</html>