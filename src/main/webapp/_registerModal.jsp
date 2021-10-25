<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="loginModal" aria-hidden="true">
					<div class="modal-dialog" role="document">
					  <div class="modal-content">
						<div class="modal-header" style="background-color: rgb(111 202 203);">
						  <h5 class="modal-title" id="loginModal">Register Here</h5>
						  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						  </button>
						</div>
						<div class="modal-body">
						  <form action="RegisterServlet" method="post">
						  <div class="text-left my-2">
								<b><label for="username">FullName</label></b>
								<input class="form-control" id="loginusername" name="name" placeholder="Enter Your Full Name" type="text" required>
							</div>
							<div class="text-left my-2">
								<b><label for="username">Username</label></b>
								<input class="form-control" id="loginusername" name="username" placeholder="Enter Your Username" type="text" required>
							</div>
							<div class="text-left my-2">
								<b><label for="username">Qualification</label></b>
								<input class="form-control" id="loginusername" name="qualification" placeholder="Enter Your Qualification" type="text" required>
							</div>
							<div class="text-left my-2">
								<b><label for="username">Email Id</label></b>
								<input class="form-control" id="loginusername" name="email" placeholder="Enter Your email id" type="email" required>
							</div>
							<div class="text-left my-2">
								<b><label for="password">Password</label></b>
								<input class="form-control" id="loginpassword" name="password" placeholder="Enter Your Password" type="password" required data-toggle="password">
							</div>
							<button type="submit" class="btn btn-success">Submit</button>
						  </form>
						  <p class="mb-0 mt-1">Already Have an Account ? <a href="#" data-dismiss="modal" data-toggle="modal" data-target="#loginModal">Login Here</a>.</p>
						</div>
					  </div>
					</div>
				  </div>
