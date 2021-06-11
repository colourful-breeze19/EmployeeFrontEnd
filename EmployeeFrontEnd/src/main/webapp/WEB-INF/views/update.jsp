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
	
	<div class="container">
	<hr>
	<div class="x">
	
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
	<button type = "submit" class="b">Save</button>
	<button type= "submit" class="b">cancel</button>
	
	</form:form>
	</div>
	</div>
<style>
	body {
	background-color: 	#ADD8E6;
	text-align: center;
	text-color: black;
}

hr {
    border: 3px solid #333;
    border-top:none;
 
    color: #333;
    overflow: visible;
    text-align: left;
    font-size: 25px;
    height: 0px;
}

hr:after {
    background: #fff;
    content: 'Edit Employee Details';
    padding: 0 4px;
    position: relative;
    top: -15px;
}

.x{
	margin:127px auto 127px auto;
}

body{
	height: 100vh;
	width: 100vw;
}

.container{
	height:100%;
	width: 98%;
	border: solid 1px black;
	border-top: none;
	margin: 20px auto 0px auto;
	text-align: center;
	font-size: 28px;
}
.b{
	width: 50px;
	height:30px;
	border-radius: 5px;
}
</style>
</body>
</html>