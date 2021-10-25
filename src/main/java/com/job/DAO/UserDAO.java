package com.job.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.job.model.Job;
import com.job.model.User;

public class UserDAO {

	Connection con=null;
	PreparedStatement ps=null;
	public boolean createUser(User u) {
		boolean b=false;
		SimpleDateFormat f=new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		java.util.Date date=new Date();
		con=DBconnection.getConnection();
		try {
			ps=con.prepareStatement("insert into job_profile(name,username,qualification,email,password,user_date) values(?,?,?,?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getUserName());
			ps.setString(3, u.getQualification());
			ps.setString(4, u.getEmail());
			ps.setString(5, u.getPassword());
			ps.setString(6, f.format(date));
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
	public User checkUser(String uName,String password) {
		User u=null;
		con=DBconnection.getConnection();
		try {
			ps=con.prepareStatement("select * from job_profile where username=? and password=?");
			ps.setString(1, uName);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				u=new User();
				u.setId(rs.getString(1));
				u.setName(rs.getString(2));
				u.setUserName(rs.getString(3));
				u.setQualification(rs.getString(4));
				u.setEmail(rs.getString(5));
				u.setPassword(rs.getString(6));
				u.setDate(rs.getString(7));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
	}
	public boolean editProfile(User u,String id) {
		boolean b=false;
		SimpleDateFormat f=new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
		java.util.Date date=new Date();
		con=DBconnection.getConnection();
		try {
			ps=con.prepareStatement("update job_profile set name=?,username=?,qualification=?,email=?,user_date=?,password=? where id=?");
			ps.setString(1, u.getName());
			ps.setString(2, u.getUserName());
			ps.setString(3, u.getQualification());
			ps.setString(4, u.getEmail());
			ps.setString(5, f.format(date));
			ps.setString(6, u.getPassword());
			ps.setString(7, id);
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
	
}
