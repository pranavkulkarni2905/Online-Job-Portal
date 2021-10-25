package com.job.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.job.DAO.JobDAO;
import com.job.model.Job;

/**
 * Servlet implementation class addJobServlet
 */
@WebServlet("/addJobServlet")
public class addJobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addJobServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String  title=request.getParameter("title");
		String location=request.getParameter("location");
		String category=request.getParameter("category");
		String status=request.getParameter("status");
		String desc=request.getParameter("desc");
		
		Job j=new Job(title, location, category, status, desc);
		JobDAO jd=new JobDAO();
		boolean b=jd.addJob(j);
		HttpSession session=request.getSession();
		session.setAttribute("job-add", b);
		response.sendRedirect("addjob.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
