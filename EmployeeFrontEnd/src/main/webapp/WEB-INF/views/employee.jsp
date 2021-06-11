<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Listing</title>
</head>
<body align="center">
	<h1 text-align= "center"><u>List Of Employees</u></h1>
	
	<br></br><br>
	<table cellspacing="10" border="2" cellpadding="5" width="100%">
	<tr>
	<th>Employee Code</th>
	<th>Employee Name</th>
	<th>Location</th>
	<th>Email</th>
	<th>Date of Birth</th>
	<th>Action</th>
	</tr>
	<c:if test="${not empty employees}">
    <c:forEach items="${employees}" var="employees">
    <tr>
    <td><c:out value="${employees.getCode()}"></c:out></td>
    <td><c:out value="${employees.getName()}"></c:out></td>
    <td><c:out value="${employees.getLocation()}"></c:out></td>
    <td><c:out value="${employees.getEmail()}"></c:out></td>
    <td><c:out value="${employees.getDob()}"></c:out></td>
    <td><a href="update/${employees.getId()}"> Edit</a></td>
    
	</tr>    	
    </c:forEach>
    </c:if>
	
	</table>
	
<style>
body{
		background-color: #ADD8E6;
		}
		
h1 {
	color: blue;
	font-style: italic;
	text-align: center;
	text-decoration: blink;
	text-shadow: aqua;
}		
		
		
</style>	
</body>
</html>