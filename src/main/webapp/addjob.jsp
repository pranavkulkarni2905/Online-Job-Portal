<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Post Job</title>
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
	<div class=container-fluid">
		<%try{
boolean b=(boolean)session.getAttribute("job-add");
if(b==true){
	%>
		<div class="alert alert-success alert-dismissible fade show"
			role="alert">
			<strong>Success!</strong> New Job added Successfully.
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
		session.removeAttribute("job-add");
%>
		<div class="card "style="height: 620px; width: 800px; margin-left: 400px; padding: 30px;margin-top: 10px;" >
			<div class="card-body">
			<div class="text-center text-danger">
			<i class="fa fa-user fa-4x"></i>
			</div>
		<h1 class="text-center">Add Job</h1>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<form action="addJobServlet" method="post">

							<div class="form-group">
								<label for="exampleInputPassword1">Enter Title</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter your Title"
									name="title" required="required">
							</div>
							<div class="row">
								<div class="form-group">
									<label for="exampleInputPassword1">Location</label> <input
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Enter your Location"
										name="location" required="required">
								</div>
								&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<div class="form-group">
									<label for="exampleFormControlSelect1">Category</label> <select
										class="form-control" id="exampleFormControlSelect1"
										name="category">
										<option>--Category--</option>
										<option>IT</option>
										<option>Mechanical</option>
										<option>Electrical</option>
										<option>E&TC</option>
										<option>Civil</option>
									</select>
								</div>
								&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<div class="form-group">
									<label for="exampleFormControlSelect1">Status</label> <select
										class="form-control" id="exampleFormControlSelect1"
										name="status">
										<option>--Status--</option>
										<option>Inactive</option>
										<option>Active</option>

									</select>
								</div>
								&nbsp&nbsp&nbsp
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Description</label>
								<textarea rows="5" cols="" class="form-control"
									placeholder="Enter Your Content" name="desc"
									required="required"></textarea>
							</div>
							<br>
							<div class="conatiner text-center">
								<button type="submit" class="btn btn-primary ">Publish Job</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
</body>
</html>