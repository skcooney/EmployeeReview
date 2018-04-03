package spring.employeereview;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employees")
public class Employee {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private long id;
private String employeeName;
private double rateOfPay;
private int yearsOfService;
private String department;



public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getEmployeeName() {
	return employeeName;
}
public void setEmployeeName(String employeeName) {
	this.employeeName = employeeName;
}
public double getRateOfPay() {
	return rateOfPay;
}
public void setRateOfPay(double rateOfPay) {
	this.rateOfPay = rateOfPay;
}
public int getYearsOfService() {
	return yearsOfService;
}
public void setYearsOfService(int yearsOfService) {
	this.yearsOfService = yearsOfService;
}
public String getDepartment() {
	return department;
}
public void setDepartment(String department) {
	this.department = department;
}
	
	

}
