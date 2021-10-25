package com.job.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.job.model.Job;

public class JobDAO {

	Connection con=null;
	PreparedStatement ps=null;
	public boolean addJob(Job j) {
		boolean b=false;
		SimpleDateFormat f=new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		java.util.Date date=new Date();
		con=DBconnection.getConnection();
		try {
			ps=con.prepareStatement("insert into job_info(job_name,location,category,status,description,job_date) values(?,?,?,?,?,?)");
			ps.setString(1,j.getJobName() );
			ps.setString(2, j.getJobLocation());
			ps.setString(3, j.getJobCategory());
			ps.setString(4, j.getJobStatus());
			ps.setString(5, j.getJobDesc());
			ps.setString(6, f.format(date));
			int i=ps.executeUpdate();
			if(i>0) {
				b=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch bloc
			e.printStackTrace();
		}
		return b;
	}
	public List<Job> getData(){
		List<Job> list=new ArrayList<Job>();
		Job j=null;
		con=DBconnection.getConnection();
		try {
			ps=con.prepareStatement("select * from job_info order by job_date desc");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				j=new Job();
				j.setId(rs.getString(1));
				j.setJobName(rs.getString(2));
				j.setJobLocation(rs.getString(3));
				j.setJobCategory(rs.getString(4));
				j.setJobStatus(rs.getString(5));
				j.setJobDesc(rs.getString(6));	
				j.setDate(rs.getString(7));
				list.add(j);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public boolean deleteJob(String id) {
		boolean b=false;
		con=DBconnection.getConnection();
		try {
			ps=con.prepareStatement("delete from job_info where job_id=?");
			ps.setString(1, id);
			int i=ps.executeUpdate();
			if(i>0) {
				b=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return b;
	}
	public Job getDataById(String id){
		Job j=null;
		con=DBconnection.getConnection();
		try {
			ps=con.prepareStatement("select * from job_info where job_id=?");
			ps.setString(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				j=new Job();
				j.setId(rs.getString(1));
				j.setJobName(rs.getString(2));
				j.setJobLocation(rs.getString(3));
				j.setJobCategory(rs.getString(4));
				j.setJobStatus(rs.getString(5));
				j.setJobDesc(rs.getString(6));	
				j.setDate(rs.getString(7));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return j;
	}
	public boolean editJob(Job j,String id) {
		boolean b=false;
		SimpleDateFormat f=new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		java.util.Date date=new Date();
		con=DBconnection.getConnection();
		try {
			ps=con.prepareStatement("update job_info set location=?,category=?,status=?,description=?,job_date=? where job_id=?");
			ps.setString(1, j.getJobLocation());
			ps.setString(2, j.getJobCategory());
			ps.setString(3, j.getJobStatus());
			ps.setString(4, j.getJobDesc());
			ps.setString(5, f.format(date));
			ps.setString(6, id);
			int i=ps.executeUpdate();
			if(i>0) {
				b=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
	public List<Job> searchJob(String category,String location ){
		List<Job> list=new ArrayList<Job>();
		Job j=null;
		con=DBconnection.getConnection();
		try {
			ps=con.prepareStatement("select * from job_info where category=? and location=? order by job_date desc ");
			ps.setString(1, category);
			ps.setString(2, location);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				j=new Job();
				j.setId(rs.getString(1));
				j.setJobName(rs.getString(2));
				j.setJobLocation(rs.getString(3));
				j.setJobCategory(rs.getString(4));
				j.setJobStatus(rs.getString(5));
				j.setJobDesc(rs.getString(6));	
				j.setDate(rs.getString(7));
				list.add(j);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
