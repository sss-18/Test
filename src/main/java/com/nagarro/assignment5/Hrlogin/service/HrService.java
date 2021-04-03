package com.nagarro.assignment5.Hrlogin.service;

import java.util.List;

import com.nagarro.assignment5.Hrlogin.model.Employee;

public interface HrService {
	String getUserByUsernameAndPassword(String username,String pass);

	Employee[] getEmployees(String username);

	Employee getEmployeeByEmployeeCode(long employeecode);

	void deleteEmployeeByEmployeeCode(long employeecode);

	void saveEmployee(Employee employee);
}
