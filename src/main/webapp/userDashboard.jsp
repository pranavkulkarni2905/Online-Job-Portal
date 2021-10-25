<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	User u2=(User)session.getAttribute("user-login-success");
	if(u2==null){
		response.sendRedirect("Index.jsp");
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Pannel | Job Portal</title>
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
</head>
<body>
	<%@include file="_nav.jsp"%>
 <%
  try{
	  boolean b=(boolean)session.getAttribute("user-login");
	  if(b==true){
		  %>
		  <div class="alert alert-success alert-dismissible fade show"
			role="alert">
			<strong>Success !</strong> You Has Been Logged In Successfully..!
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		  <%
	  }
  }catch(Exception e){
	  e.printStackTrace();
  }
 session.removeAttribute("user-login");
  %>
  
  <%
		try {
			boolean b = (boolean) session.getAttribute("edit-profile");
			if (b == true) {
		%>
		<div class="alert alert-success alert-dismissible fade show"
			role="alert">
			<strong>Success!</strong> Your Profile Has Been Updated Successfully...
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<%
		} else {
		%>
		<div class="alert alert-warning alert-dismissible fade show"
			role="alert">
			<strong>Ooops !</strong> Something Went Wrong on Server.
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>

		<%
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		session.removeAttribute("edit-profile");
		%>
	<h1
		style="font-family: Algerian; font-size: 50px; text-align: center; margin-top: 20px; color: maroon;">
		WELCOME TO USER PANNEL</h1>

</body>
</html>