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
	<h1>Welcome To HR Management System</h1>
	<br>
	<h2>Please LOGIN to continue!!</h2>
	<br>
	
	<div class="middle">
	<hr>
	<div class="x"></div>
	
	<form:form action="employee" method = "POST" >
	<b>UserId:</b>
	<input type="text" name="userId"></input>
	<br><br/>
	<b>Password:</b>
	<input type = "password" name="password"></input>
	<br><br><br>
	<input type="submit" value= "Login">
	</form:form>
	
	</div>
	</div>
<style>
h1, h2 {
	color: blue;
	font-style: italic;
	text-align: center;
	text-decoration: blink;
	text-shadow: aqua;
}

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
    font-size: 16px;
    height: 0px;
}

hr:after {
    background: #fff;
    content: 'Login';
    padding: 0 4px;
    position: relative;
    top: -15px;
}

.x{
	margin: auto;
}

.middle{
	height:85%;
	width: 98%;
	border: solid 2px black;
	border-top: none;
	margin: auto;
	text-align: center;
	font-size: 20px;
}

</style>
	

</body>
</html>