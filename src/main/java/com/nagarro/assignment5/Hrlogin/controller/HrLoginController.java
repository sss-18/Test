package com.nagarro.assignment5.Hrlogin.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.nagarro.assignment5.Hrlogin.model.Employee;
import com.nagarro.assignment5.Hrlogin.service.HrService;


@Controller
@EnableAutoConfiguration
public class HrLoginController {
	@Autowired
	private HrService hrService;
	@GetMapping("/")
	public String Main() {
		return "login";
	}
	@GetMapping("/home")
    public String viewHomePage() {
        return "login";
    }
	
	@SuppressWarnings("null")
	@RequestMapping(value = "/loginUp", method = RequestMethod.POST)
	public String loginUp(@RequestParam("username") String username,@RequestParam("pass") String pass,Model m) {
		String name = hrService.getUserByUsernameAndPassword(username, pass);

		if(name==null) {
			return "login";
		}else {
			Employee[] employees = hrService.getEmployees(name);
			 //employees.forEach(System.out::println);
			for (Employee emps : employees) {
				System.out.println(emps);
			}
			m.addAttribute("ListEmployees",employees);
			m.addAttribute("username", name);
			return "index";
		}
	}
	
	@RequestMapping(value = "/showFormForUpdate/{employeecode}", method = RequestMethod.GET)
    public String showFormForUpdate(@PathVariable(value = "employeecode") long employeecode, Model model) {

        // get employee from the service
        Employee employee = hrService.getEmployeeByEmployeeCode(employeecode);

        // set employee as a model attribute to pre-populate the form
        String username = employee.getUsername();
        model.addAttribute("employee", employee);
        model.addAttribute("username",username);
        return "update_employee";
    }
	
	
	@RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
    public String saveEmployee(@RequestParam("employeename") String employeename,@RequestParam("employeecode") long employeecode,Employee employee,Model m) {
        // save employee to database
    	employee.setEmployeeName(employeename);
    	employee.setEmployeeCode(employeecode);
    	hrService.deleteEmployeeByEmployeeCode(employeecode);
        hrService.saveEmployee(employee);
        String username = employee.getUsername();
        return "redirect:/view/"+username;
    }
	
	
	
	@RequestMapping(value = "/view/{username}", method = RequestMethod.GET)
	public String view(@PathVariable(value="username") String username,Model m) {
		System.out.println("inside view controller   uname" + username);

		if(username==null) {
			return "login";
		}else {
			Employee[] employees = hrService.getEmployees(username);
			m.addAttribute("ListEmployees",employees);
			m.addAttribute("username", username);
			return "index";
		}
	}
	
    @RequestMapping(value = "/showNewEmployeeForm/{username}", method = RequestMethod.GET)
    public String showNewEmployeeForm(@PathVariable(value="username") String username,Model m) {
    	m.addAttribute("username", username);
        return "new_employee";
    }
	
    @RequestMapping(value = "/saveNewEmployee", method = RequestMethod.POST)
    public String saveNewEmployee(@RequestParam("employeename") String employeename,@RequestParam("username") String username,@RequestParam("employeecode") long employeecode,Employee employee,Model m) {
        // save employee to database
    	employee.setEmployeeName(employeename);
    	employee.setEmployeeCode(employeecode);
    	employee.setUsername(username);
    	Employee e=hrService.getEmployeeByEmployeeCode(employeecode);
    	if(e!=null) {
    		m.addAttribute("username", username);
    		return "new_employee";
    	}else {
    		hrService.saveEmployee(employee);
    		return "redirect:/view/"+username;
    	}  
        
    }
	
}
