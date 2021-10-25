<%@page import="java.util.List"%>
<%@page import="com.job.model.Job"%>
<%@page import="com.job.DAO.JobDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User view job</title>
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
 <h2 class="text-center">All Jobs :</h2>
    <form action="user_viewjob.jsp" method="post">
			<div class="input-group text-center" style="margin-left: 30%;">
				<div class="form-outline text-center row">
				
					<div class="form-group">
									 <select
										class="form-control" id="exampleFormControlSelect1" 
										name="Category"  required  style="width:200px;">
										<option>--Category--</option>
										<option>IT</option>
										<option>Mechanical</option>
										<option>Electrical</option>
										<option>E&TC</option>
										<option>Civil</option>
									</select>
								</div>
								&nbsp &nbsp &nbsp &nbsp &nbsp 
					<div class="form-group">
				   <input type="search" id="form1" class="form-control text-center"
						name="Location" placeholder="Location" required />	
						</div>
						&nbsp &nbsp &nbsp &nbsp &nbsp 		
				</div>
				
				<button type="submit" class="btn btn-primary" style="height:40px;" >
					<i class="fa fa-search"  ></i>
					Search
				</button>
			</div>
			
		</form>

		<div class="row">
			<div class="col-md-12">
				<%
				    List<Job> post=null;
					JobDAO jd = new JobDAO();
				    String cat=request.getParameter("Category");
				    String loc=request.getParameter("Location");
				    if(cat!=null && loc!=null)
				    {
				    	post=jd.searchJob(cat, loc);
				    }
				    else
				    {
					  post = jd.getData();
					  
				    }
				    
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
						
						
					</div>
				</div>
				
				<%
				}
					
				if(post.isEmpty())
				{
				%>
					
			    <h1 style="font-family: Algerian; font-size: 50px; text-align: center; margin-top: 20px; color: maroon;">No data Found</h1>
				 <%	
				}
				
				%>
              
			</div>
		</div>
	</div>
	
</body>
</html>