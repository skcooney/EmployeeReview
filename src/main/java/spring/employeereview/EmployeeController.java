package spring.employeereview;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class EmployeeController {
	@Autowired employeeDao dao;
	
private static final String [] department = {"Accounting", "Shipping", "IT", "Sales"};

	@RequestMapping(value = "/form") 
	public ModelAndView employee() {
		ModelAndView modelAndView = new ModelAndView();
	
		modelAndView.setViewName("employeeForm");
		modelAndView.addObject("employee", new Employee());
		modelAndView.addObject("department", department);
	
		return modelAndView;
		
	}
		
	@RequestMapping(value = "/result")
	public ModelAndView processUser(Employee employee) {
		System.out.println("In processEmployee");
		ModelAndView modelAndView = new ModelAndView();
		System.out.println("Value in getName" +employee.getEmployeeName());
		dao.insertEmployee(employee);
		modelAndView.setViewName("employeeResult");
		modelAndView.addObject("e", employee);
		return modelAndView;
			
		}
	
	
	@RequestMapping(value = "/viewAll") 
	public ModelAndView viewAll() {
		ModelAndView modelAndView = new ModelAndView();
		List<Employee>allEmployees = dao.getAllEmployees();
		modelAndView.setViewName("viewAllEmployees");
		modelAndView.addObject("all", allEmployees);
		return modelAndView;
	}
	
	
	@Bean
		public employeeDao dao() {
			employeeDao bean = new employeeDao();
			return bean;
	
	}
}

