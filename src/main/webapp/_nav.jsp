<%@page import="com.job.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

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
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


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
		try{
		 User u=(User)session.getAttribute("admin");
		if(u!=null){
			%>
			<li class="nav-item active"><a class="nav-link" href="adminDashboard.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active"><a class="nav-link" href="addjob.jsp"><i
					class="fa fa-plus-circle" aria-hidden="true"></i> Post Jobs</a></li>
					
					<li class="nav-item active"><a class="nav-link" href="viewjob.jsp"><i
					class="fa fa-eye" aria-hidden="true"></i> View Jobs</a></li>
			</ul>
				<a href="LogoutServlet" class="btn btn-light my-2 my-sm-0"
			type="submit"><i class="fa fa-user" aria-hidden="true"></i>Admin</a>&nbsp&nbsp&nbsp
		<a href="LogoutServlet" class="btn btn-light my-2 my-sm-0"
			type="submit"><i class="fa fa-sign-out" aria-hidden="true"></i>Logout</a>
			<% 
		}
		else{
			%>
			<li class="nav-item active"><a class="nav-link" href="Index.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			</ul>
				<button type="button" class="btn btn-warning mx-2" data-toggle="modal"
			data-target="#loginModal"><i
					class="fa fa-sign-in" aria-hidden="true"></i> Login</button>
		<button type="button" class="btn btn-primary mx-2" data-toggle="modal"
			data-target="#registerModal"><i
					class="fa fa-user" aria-hidden="true"></i> SignUp</button>
			<% 
		}
		}catch(Exception e){
			e.printStackTrace();
		}
		%>
		
		
		


<%@include file="_loginModal.jsp" %>
<%@include file="_registerModal.jsp" %>
	</div>
</nav>