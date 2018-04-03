<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body>
<h2>Employee Review Form</h2>
<mvc:form modelAttribute="employee" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="employeeName">Employee Name</mvc:label></td>
	        <td><mvc:input path="employeeName" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="rateOfPay">Rate Of Pay</mvc:label></td>
	        <td><mvc:input path="rateOfPay" /></td>
	    </tr>
   	    <tr>
	        <td><mvc:label path="yearsOfService">Years of Service</mvc:label></td>
	        <td><mvc:input path="yearsOfService" /></td>
	    </tr>
		<tr>
            <td><mvc:label path="department">Department</mvc:label></td>
            <td><mvc:select path="department" items="${department}" /></td>
        
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">View all Employees</a>
</body>
</html>