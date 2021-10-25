package com.job.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.job.DAO.UserDAO;
import com.job.model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();

		String username=request.getParameter("loginusername");
		String password=request.getParameter("loginpassword");
		
		User u=new User();
		
		
		if(username.contentEquals("admin")&&password.contentEquals("admin")) {
			u.setRole("admin");
			session.setAttribute("admin", u);
			response.sendRedirect("adminDashboard.jsp");
		}
		UserDAO ud=new UserDAO();
		u=ud.checkUser(username, password);
		if(u!=null) {
			session.setAttribute("user-login-success", u);
			session.setAttribute("user-login", true);
			response.sendRedirect("userDashboard.jsp");
		}
		else {
			session.setAttribute("user-login-fail", false);
			response.sendRedirect("Index.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
