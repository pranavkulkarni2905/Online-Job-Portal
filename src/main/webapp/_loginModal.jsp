<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<%

response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
    if(session.getAttribute("token")==null){
    //response.sendRedirect(request.getContextPath() + "/LogOut.jsp");

}
%>
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
	aria-labelledby="loginModal" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header"
				style="background-color: rgb(111, 202, 203);">
				<h5 class="modal-title" id="loginModal">Login Here</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="LoginServlet" method="post">
					<div class="text-left my-2">
						<b><label for="username">Username</label></b> <input
							class="form-control" id="loginusername" name="loginusername"
							placeholder="Enter Your Username" type="text" required>
					</div>
					<div class="text-left my-2">
						<b><label for="password">Password</label></b> <input
							class="form-control" id="loginpassword" name="loginpassword"
							placeholder="Enter Your Password" type="password" required
							data-toggle="password">
					</div>
					<button type="submit" class="btn btn-success">Submit</button>
				</form>
				<p class="mb-0 mt-1">
					Don't have an account? <a href="#" data-dismiss="modal"
						data-toggle="modal" data-target="#registerModal">Sign up now</a>.
				</p>
			</div>
		</div>
	</div>
</div>
<%@include file="_registerModal.jsp" %>


<div class="modal fade" id="adminModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">

					<h5 class="modal-title" id="exampleModalLabel">Profile</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container text-center">
					<div class="text-danger">
						<i class="fa fa-user-circle-o fa-4x" aria-hidden="true"></i>
						</div><br>
						<table class="table">
							<tbody>
								<tr>
									<th>Username</th>
									<td>admin</td>
								</tr>
								<tr>
									<th>Email-Id</th>
									<td>admin@gmail.com</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>

				</div>
			</div>
		</div>
	</div>
    