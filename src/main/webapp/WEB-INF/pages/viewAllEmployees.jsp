<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Employees</title>
</head>
<body>
	<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td>Employee Name</td>
				<td>${item.employeeName}</td>
			</tr>
			<tr>
				<td>Rate of Pay</td>
				<td>${item.rateOfPay}</td>
			</tr>
			<tr>
				<td>Years Of Service</td>
				<td>${item.yearsOfService}</td>
			</tr>
			<tr>
				<td>Department</td>
				<td>${item.department}</td>
			</tr>
			
		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	<a href="form.mvc">Add a new Employee</a>
</body>
</html>