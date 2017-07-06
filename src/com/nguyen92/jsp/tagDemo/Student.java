package com.nguyen92.jsp.tagDemo;

public class Student {
	
	private String firstName;
	private String lastName;
	private boolean cumLaude;
	private boolean employed;
	
	
	public Student(String firstName, String lastName, boolean cumLaude, boolean employed) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.cumLaude = cumLaude;
		this.employed = employed;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public boolean isCumLaude() {
		return cumLaude;
	}


	public void setCumLaude(boolean cumLaude) {
		this.cumLaude = cumLaude;
	}
	
	public boolean isEmployed(){
		return employed;
	}
	
	public void setEmployed(boolean employed){
		this.employed = employed;
	}
	
	

}
