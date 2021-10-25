<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <html>
<head>
<title>Online Job Portal</title>
<script src="sweetalert2.all.min.js"></script>

<script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">

<style>

body, html {
  height: 100%;
}

.bg { 
  /* The image used */
  background-image: url("images/jobseek.jpg");
  top: 0;

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>
<%@include file="_nav.jsp" %>
<%
  try{
	  boolean b=(boolean)session.getAttribute("user-create");
	  if(b==true){
		  %>
		  <div class="alert alert-success alert-dismissible fade show"
			role="alert">
			<strong>Success!</strong> Registration Successfully...
			<button type="button" class="close" data-dismiss="alert"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		  <%
	  }else{
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
  }catch(Exception e){
	  e.printStackTrace();
  }
session.removeAttribute("user-create");
  %>
  
  <%
  try{
	  boolean b=(boolean)session.getAttribute("logout-msg");
	  if(b==true){
		  %>
		  <div class="alert alert-success alert-dismissible fade show"
			role="alert">
			<strong>Success!</strong> Logout Successfully...!
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
  session.removeAttribute("logout-msg");
  %>
  <%
  try{
	  boolean b=(boolean)session.getAttribute("user-login-fail");
	  if(b==false){
		  %>
		  <div class="alert alert-danger alert-dismissible fade show"
			role="alert">
			<strong>Ooops !</strong> Invalid Username or Password ..!
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
  session.removeAttribute("user-login-fail");
  %>
  <div class="bg">
  
</div>
</body>
</html>