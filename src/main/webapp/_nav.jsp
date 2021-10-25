<%@page import="com.job.model.User"%>
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
	<a class="navbar-brand" href="">Job Portal</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">

			<%
			try {
				User u = (User) session.getAttribute("admin");
				if (u != null) {
			%>
			<li class="nav-item active"><a class="nav-link"
				href="adminDashboard.jsp">Home <span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link"
				href="addjob.jsp"><i class="fa fa-plus-circle"
					aria-hidden="true"></i> Post Jobs</a></li>

			<li class="nav-item active"><a class="nav-link"
				href="viewjob.jsp"><i class="fa fa-eye" aria-hidden="true"></i>
					View Jobs</a></li>
		</ul>
		<a href="LogoutServlet" class="btn btn-light my-2 my-sm-0"
			type="submit" data-toggle="modal" data-target="#adminModal"><i
			class="fa fa-user" aria-hidden="true"></i> Admin</a>&nbsp&nbsp&nbsp <a
			href="LogoutServlet" class="btn btn-light my-2 my-sm-0" type="submit"><i
			class="fa fa-sign-out" aria-hidden="true"></i>Logout</a>
		<%
		} else {
		User u1 = (User) session.getAttribute("user-login-success");
		if (u1 != null) {
		%>
		<li class="nav-item active"><a class="nav-link"
			href="userDashboard.jsp">Home <span class="sr-only">(current)</span>
		</a></li>


		<li class="nav-item active"><a class="nav-link"
			href="user_viewjob.jsp"><i class="fa fa-eye" aria-hidden="true"></i>
				View Jobs</a></li>
		</ul>
		<a href="LogoutServlet" class="btn btn-light my-2 my-sm-0"
			type="submit" data-toggle="modal" data-target="#userModal"><i
			class="fa fa-user" aria-hidden="true"></i> <%=u1.getUserName()%></a>&nbsp&nbsp&nbsp
		<a href="LogoutServlet" class="btn btn-light my-2 my-sm-0"
			type="submit"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a>


		<div class="modal fade" id="userModal" tabindex="-1" role="dialog"
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
							</div>
							<br>
							<table class="table">
								<tbody>
									<tr>
										<th>User Id</th>
										<td><%=u1.getId()%></td>


									</tr>
									<tr>
										<th>Username</th>
										<td><%=u1.getUserName()%></td>
									</tr>
									<tr>
										<th>Full Name</th>
										<td><%=u1.getName()%></td>
									</tr>
									<tr>
										<th>Email-Id</th>
										<td><%=u1.getEmail()%></td>
									</tr>
									<tr>
										<th>Qualification</th>
										<td><%=u1.getQualification()%></td>
									</tr>
									<tr>
										<th>Registered Timestamp</th>
										<td><%=u1.getDate()%></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="modal-footer">
					<a href="editUserProfile.jsp?user_id=<%=u1.getId()%>" class="btn btn-primary"
								data-toggle="modal" data-target="#editUserProfileModal" ><i class="fa fa-edit"></i> Edit</a>&nbsp&nbsp
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal"><i class="fa fa-close"></i> Close</button>

					</div>
				</div>
			</div>
		</div>
		
		
		<div class="modal fade" id="editUserProfileModal" tabindex="-1" role="dialog" aria-labelledby="loginModal" aria-hidden="true">
					<div class="modal-dialog" role="document">
					  <div class="modal-content">
						<div class="modal-header" style="background-color: rgb(111 202 203);">
						  <h5 class="modal-title" id="loginModal">Edit Profile</h5>
						  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						  </button>
						</div>
						<div class="modal-body">
						  <form action="EditUserProfileServlet" method="post">
						  <input type="hidden" value="<%=u1.getId() %>" name="user_id" >
						  <div class="text-left my-2">
								<b><label for="username">FullName</label></b>
								<input class="form-control"  id="loginusername" name="name" placeholder="Enter Your Full Name" type="text" required value="<%=u1.getName() %>" readonly="readonly" >
							</div>
							<div class="text-left my-2">
								<b><label for="username">Username</label></b>
								<input class="form-control" value="<%=u1.getUserName() %>" id="loginusername" name="username" placeholder="Enter Your Username" type="text" required>
							</div>
							<div class="text-left my-2">
								<b><label for="username">Qualification</label></b>
								<input class="form-control" value="<%=u1.getQualification() %>" id="loginusername" name="qualification" placeholder="Enter Your Qualification" type="text" required>
							</div>
							<div class="text-left my-2">
								<b><label for="username">Email Id</label></b>
								<input class="form-control" value="<%=u1.getEmail() %>"  id="loginusername" name="email" placeholder="Enter Your email id" type="email" required>
							</div>
							<div class="text-left my-2">
								<b><label for="password">Password</label></b>
								<input class="form-control" value="<%=u1.getPassword() %>" id="loginpassword" name="password" placeholder="Enter Your Password" type="password" required data-toggle="password">
							</div>
							<button type="submit" class="btn btn-success"><i class="fa fa-edit"></i> Update Profile</button>
						  </form>
						 <p>Here You can change your password.</p>
						</div>
					  </div>
					</div>
				  </div>


		<%
		} else {
		%>
		<li class="nav-item active"><a class="nav-link" href="Index.jsp">Home
				<span class="sr-only">(current)</span>
		</a></li>
		</ul>
		<button type="button" class="btn btn-warning mx-2" data-toggle="modal"
			data-target="#loginModal">
			<i class="fa fa-sign-in" aria-hidden="true"></i> Login
		</button>
		<button type="button" class="btn btn-primary mx-2" data-toggle="modal"
			data-target="#registerModal">
			<i class="fa fa-user" aria-hidden="true"></i> SignUp
		</button>
		<%
		}
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>





		<%@include file="_loginModal.jsp"%>
		<%@include file="_registerModal.jsp"%>
	</div>
	
	
</nav>