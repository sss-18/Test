package com.nagarro.assignment5.Hrlogin.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nagarro.assignment5.Hrlogin.model.Employee;
import com.nagarro.assignment5.Hrlogin.model.EmployeeList;
import com.nagarro.assignment5.Hrlogin.model.Hr;
import com.nagarro.assignment5.Hrlogin.repository.HrRepository;

import aj.org.objectweb.asm.TypeReference;
@Service
public class HrServiceImpl implements HrService{
	@Autowired
	private HrRepository hrRepository;
	@Autowired
	private  RestTemplate template;
	public HrServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String getUserByUsernameAndPassword(String username,String pass) {
		Optional < Hr > optional = Optional.ofNullable(hrRepository.findByUsernameAndPassword(username, pass));
        Hr hr = null;
        if (optional.isPresent()) {
            hr = optional.get();
        } else {
            return null;
        }
        return hr.getUsername();
	}
	@SuppressWarnings("unchecked")
	@Override
	public  Employee[] getEmployees(String username){
		String url="http://localhost:8081/findEmployee/{username}";
		Employee e[] = template.getForObject(url,Employee[].class,username);
		System.out.println();
		System.out.println("the value of object is  ");
		for (Employee emps : e) {
			System.out.println(emps);
		}
		return e;
		
		
	}

	@Override
    public Employee getEmployeeByEmployeeCode(long employeecode) {
		String url="http://localhost:8081/findEmployeeByEmployeeCode/{employeecode}";
        Employee employee = template.getForObject(url,Employee.class,employeecode);
        return employee;
    }
	
	
	@Override
    public void deleteEmployeeByEmployeeCode(long employeecode) {
		String url="http://localhost:8081/deleteEmployeeByEmployeeCode/{employeecode}";
		String s = template.getForObject(url,String.class,employeecode);
		return;
    }
	@Override
	public void saveEmployee(Employee employee) {
		String url="http://localhost:8081/saveEmployee";
		String s = template.postForObject(url,employee,String.class);
		return;
		
	}
	

}
