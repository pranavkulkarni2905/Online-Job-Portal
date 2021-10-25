package com.job.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
}
