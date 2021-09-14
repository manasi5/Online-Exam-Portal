<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
.button {
    background-color: #2b2983; 
    border: none;
    color: white;
    padding: 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 40px 20px; 
    cursor: pointer;
  }
  #button1{
      
      
      border-radius:12px;
      margin-right:16px;
      
      
  }
  #button2{
      
      
      border-radius:12px;
      margin-right :15px;
     
  
}
body {
  background-image: url('image/exam2.jpg');
  background-repeat: no-repeat;
  background-attachment:fixed;
  background-size:cover;
}


</style>
</head>
<body>
<div class="bodycenter">
<h1 style="text-align:justify" >Online Exam Portal </h1>

<div class="center">

	<form action="admin">
	<input type="submit" value="Teacher Login" class="button" id= "button1">
	</form>
	
	<!-- <form action="login">
	<input type="submit" value="Login/Register" class="button button1">
	</form>
	 -->
	<form action="studentregisteration">
	<input type="submit" value="Student Register" class="button" id="button2">
	</form>	

</div>
</div>