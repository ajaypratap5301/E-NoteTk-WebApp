	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>

<!--Link allcss.jsp file or call jsp file  for Css and Javascript by expression tag -->
<%@include file="all_component/allcss.jsp"%>

</head>
<body>

	<!--Link navbar.jsp file or call jsp file for navbar  -->
	<%@include file="all_component/navbar.jsp"%>


	<!-- Registration form -->

	<div class="container-fluid div-bgcolor">
		<div class="row">
			<div class="col-md-5 offset-md-4">

				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h1>Registration</h1>
					</div>



					<%
					String regMsg = (String) session.getAttribute("reg-sucess");
					if (regMsg != null) {
					%>
					<!--alert  -->
					<div class="alert alert-success" role="alert">
					<%=regMsg %>
					Login
					<a href="login.jsp">Click Here</a>
					</div>
					<%
					
					}
					session.removeAttribute("reg-sucess");
					%>


					<%
					String FailedMsg = (String) session.getAttribute("failed-msg");
					if (FailedMsg != null) {
					%>
					<!--alert  -->
					<div class="alert alert-danger" role="alert">
					<%=FailedMsg %>
					
					</div>
					<%
					
					}
					session.removeAttribute("failed-msg");
					%>



					<div class="card-body">


						<form action="UserServlet" method="post">
							<div class="form-group">
								<label>Enter Full Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname">
							</div>
							<div class="form-group">
								<label>Enter your Email</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>
						</form>

					</div>
				</div>

			</div>
		</div>
	</div>
	<!--Link footer.jsp file or call jsp file   -->
	<%@include file="all_component/footer.jsp"%>

</body>
</html>