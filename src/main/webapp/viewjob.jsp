<%@page import="com.job.model.Job"%>
<%@page import="java.util.List"%>
<%@page import="com.job.DAO.JobDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Job</title>
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

</head>
<body>
	<%@include file="_nav.jsp"%>

	<div class="container">
		<%
		try {
			boolean b = (boolean) session.getAttribute("delete-job");
			if (b == true) {
		%>
		<div class="alert alert-success alert-dismissible fade show"
			role="alert">
			<strong>Success!</strong> Job Has Been Deleted Successfully.
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
		session.removeAttribute("delete-job");
		%>
		<%
		try {
			boolean b = (boolean) session.getAttribute("edit-job");
			if (b == true) {
		%>
		<div class="alert alert-success alert-dismissible fade show"
			role="alert">
			<strong>Success!</strong> Job Has Been Updated Successfully.
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
		session.removeAttribute("edit-job");
		%>
		<h2 class="text-center">All Jobs :</h2>


		<div class="row">
			<div class="col-md-12">
				<%
				
					JobDAO jd = new JobDAO();
					List<Job> post = jd.getData();
					for (Job j : post) {
				%>
				<div class="card mt-3">

					<img src="images/home.png" class="card-img-top mt-2 mx-auto"
						style="max-width: 100px;">
					<div class="card-body p-4">

						<h5 class="card-title"><%=j.getJobName()%></h5>
						<p><%=j.getJobDesc()%></p>


						<div class="row">
							<div class="form-group">
								<input class="form-control" type="text"
									value="Location : <%=j.getJobLocation()%>" readonly>
							</div>
							&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							<div class="form-group">
								<input class="form-control" type="text"
									value="Category : <%=j.getJobCategory()%>" readonly>
							</div>
							&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							<div class="form-group">
								<input class="form-control" type="text"
									value="Status : <%=j.getJobStatus()%>" readonly>
							</div>
						</div>


						<p>
							<b class="text-success">Published Date : <%=j.getDate()%></b><br>
							<br> <b class="text-primary"></b>
						</p>
						<div class="container text-center mt-2">
							<a href="deleteServlet?job_id=<%=j.getId()%>"
								class="btn btn-danger"><i class="fa fa-trash"></i> Delete</a> <a
								href="edit.jsp?job_id=<%=j.getId()%>" class="btn btn-primary"
								><i class="fa fa-edit"></i> Edit</a>
						</div>
						
					</div>
				</div>
				<%
				}
				
				
				%>

			</div>
		</div>
	</div>
</body>
</html>