package com.nguyen92.jsp.tagDemo;

public class Student {
	
	private String firstName;
	private String lastName;
	private boolean cumLaude;
	
	
	public Student(String firstName, String lastName, boolean cumLaude) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.cumLaude = cumLaude;
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
	
	

}
