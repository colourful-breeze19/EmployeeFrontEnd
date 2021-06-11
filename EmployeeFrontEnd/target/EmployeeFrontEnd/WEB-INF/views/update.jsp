<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="id" value="${employee}" />
	
	

	<form:form method="POST">
	Employee Code:
	<input type = "number" name = "code" value="${employee.getCode()}" readonly="readonly"></input>
	<br><br>
	Employee Name:
	<input type="text" name="name" value="${employee.getName()}"></input>
	<br><br>
	Location:
	<input type="text" name="location" value="${employee.getLocation()}"></input>
	<br><br>
	Email:
	<input type="text" name="email" value="${employee.getEmail()}"></input>
	<br><br>
	Date Of Birth:
	<input type="text" name="dob" value="${employee.getDob()}"></input>
	<br><br>
	<button type = "submit">Save</button>
	<button type= "submit">cancel</button>
	
	</form:form>

</body>
</html>