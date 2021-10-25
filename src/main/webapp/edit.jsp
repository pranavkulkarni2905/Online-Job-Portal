<%@page import="com.job.model.Job"%>
<%@page import="java.util.List"%>
<%@page import="com.job.DAO.JobDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Job</title>
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
	int id=Integer.parseInt(request.getParameter("job_id"));
	JobDAO jd=new JobDAO();
	Job j=jd.getDataById(id);
	%>
	<input type="hidden" value="<%=j.getId() %>" name="job_id" >
	<div class=container-fluid">
		<div class="card "
			style="height: 620px; width: 800px; margin-left: 400px; padding: 30px; margin-top: 10px;">
			<div class="card-body">
				<div class="text-center text-danger">
					<i class="fa fa-edit fa-4x"></i>
				</div>
				<h1 class="text-center">Edit Job</h1>
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<form action="EditJobServlet" method="post">

								<div class="form-group">
									<label for="exampleInputPassword1">Enter Title</label> <input
										type="text" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Enter your Title"
										name="title" value="<%=j.getJobName() %>" readonly="readonly" required="required">
								</div>
								<div class="row">
									<div class="form-group">
										<label for="exampleInputPassword1">Location</label> <input
											type="text" class="form-control" id="exampleInputEmail1"
											aria-describedby="emailHelp"
											placeholder="Enter your Location" name="location"
											required="required" value="<%=j.getJobLocation() %>" >
									</div>
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
									<div class="form-group">
										<label for="exampleFormControlSelect1">Category</label> 
										<input
											type="text" class="form-control" id="exampleInputEmail1"
											aria-describedby="emailHelp"
											placeholder="Enter your Location" name="location"
											required="required" value="<%=j.getJobCategory() %>" >
									</div>
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
									<div class="form-group">
									<label for="exampleFormControlSelect1">Status</label> 
									<input
											type="text" class="form-control" id="exampleInputEmail1"
											aria-describedby="emailHelp"
											placeholder="Enter your Location" name="location"
											required="required" value="<%=j.getJobStatus() %>>" >
									</div>
									&nbsp&nbsp&nbsp
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Enter Description</label>
									<textarea rows="5" cols="" class="form-control"
										placeholder="Enter Your Content" name="desc"
										required="required"><%=j.getJobDesc() %></textarea>
								</div>
								<br>
								<div class="conatiner text-center">
									<button type="submit" class="btn btn-primary ">Edit
										Job</button>
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


