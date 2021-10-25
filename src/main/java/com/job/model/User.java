package com.job.model;

public class User {

	private String name;
	private String userName;
	private String email;
	private String password;
	private String qualification;
	private String role;
	public User() {
		
	}
	public User(String name, String userName, String email, String password, String qualification) {
		super();
		this.name = name;
		this.userName = userName;
		this.email = email;
		this.password = password;
		this.qualification = qualification;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
}
