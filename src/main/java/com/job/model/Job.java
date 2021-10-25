package com.job.model;

public class Job {

	private String jobName;
	private String jobLocation;
	private String jobCategory;
	private String jobStatus;
	private String jobDesc;
	private String date;
	private String id;
	public Job() {
		
	}
	
	public Job(String jobName, String jobLocation, String jobCategory, String jobStatus, String jobDesc) {
		super();
		this.jobName = jobName;
		this.jobLocation = jobLocation;
		this.jobCategory = jobCategory;
		this.jobStatus = jobStatus;
		this.jobDesc = jobDesc;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public String getJobLocation() {
		return jobLocation;
	}
	public void setJobLocation(String jobLocation) {
		this.jobLocation = jobLocation;
	}
	public String getJobCategory() {
		return jobCategory;
	}
	public void setJobCategory(String jobCategory) {
		this.jobCategory = jobCategory;
	}
	public String getJobStatus() {
		return jobStatus;
	}
	public void setJobStatus(String jobStatus) {
		this.jobStatus = jobStatus;
	}
	public String getJobDesc() {
		return jobDesc;
	}
	public void setJobDesc(String jobDesc) {
		this.jobDesc = jobDesc;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
	
}

