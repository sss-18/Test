package com.nagarro.assignment5.Hrlogin.model;


import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
public class Employee {

   
    private long employeecode;
    
    private String employeename;


    private String location;


    private String email;
    
    private String dateofbirth;
    private String username;

   
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

    public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public long getEmployeeCode() {
        return employeecode;
    }
    public void setEmployeeCode(long employeecode) {
        this.employeecode = employeecode;
    }
    @Override
	public String toString() {
		return "Employee [employeecode=" + employeecode + ", employeename=" + employeename + ", location=" + location
				+ ", email=" + email + ", dateofbirth=" + dateofbirth + ", username=" + username+"]";
	}
	public String getEmployeeName() {
        return employeename;
    }
    public void setEmployeeName(String employeename) {
        this.employeename = employeename;
    }
    public String getLocation() {
        return location;
    }
    public void setLocation(String location) {
        this.location = location;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
}