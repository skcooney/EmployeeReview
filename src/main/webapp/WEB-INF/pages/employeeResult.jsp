<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC From Handling</title>
</head>
<body> <h2>Employee Review Result</h2>
    <table>
        <tr>
            <td>Employee Name</td>
            <td>${u.employeeName}</td>
        </tr>
        <tr>
            <td>Rate of Pay</td>
            <td>${u.rateOfPay}</td>
        </tr>
        <tr>
            <td>Years Of Service</td>
            <td>${u.yearsOfService}</td>
        </tr>
        <tr>
            <td>Department</td>
            <td>${u.department}</td>
        </tr>
        </table>
<a href = "viewAll.mvc">View all Employees</a>
</body>
</html>