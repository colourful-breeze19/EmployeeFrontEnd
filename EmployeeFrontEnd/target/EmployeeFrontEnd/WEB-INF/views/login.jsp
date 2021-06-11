<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form:form action="employee" method = "POST" >
	<b>UserName:</b>
	<input type="text" name="userId"></input>
	<br><br/><br>
	<b>Password:</b>
	<input type = "password" name="password"></input>
	<br><br><br>
	<input type="submit" value= "Login">
	</form:form>
	

</body>
</html>