<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>  
<html>  
<head>  
<meta name="viewport" content="width=device-width, initial-scale=1">  
<style>  
body{  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: pink;  
}  
.container {  
    padding: 50px;  
  background-color:rgb(192, 155, 214);  
}  
  
input[type=text], input[type=password], textarea {  
  width: 100%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: orange;  
  outline: none;  
}  
 div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
  background-color: #4CAF50;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 100%;  
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1;  
}  
</style>  
</head>  
<body>  
<form action="studentregisterconfig" method="post">  
  <div class="container">  
  <center>  <h1> Student Registeration Form</h1> </center>  
  <hr> 
  <label> User ID <label>
  <input type="number" name="userid" placeholder="UserId" size="15" required />
  <hr>
  <label> Firstname </label>   
<input type="text"  name="fn" placeholder= "Firstname" size="15" required />      
<label> Lastname: </label>    
<input type="text" name="ln" placeholder="Lastname" size="15"required />   
<div>  
<label>   
Course :  
</label>   
  
<select name="course">  
<option value="Course">B.E.</option>  
<option value="Computer Science">Computer Science</option>  
<option value="IT">IT</option>  
<option value="ENTC">ENTC</option>  
<!-- <option value="MBA">MBA</option>  
<option value="MCA">MCA</option>  
<option value="M.Tech">M.Tech</option>   -->
</select>  
</div>  

<div>  
<label>   
Gender :  
</label><br>  
<input type="radio" value="Male" name="gender" checked > Male   
<input type="radio" value="Female" name="gender"> Female   
<input type="radio" value="Other" name="gender"> Other  
 </div>  
 
<label>   
Phone :  
</label>  
<input type="text" name="country_code" placeholder="Country Code"  value="+91" size="2"/>   
<input type="number" name="phone" placeholder="phone no." size="10"/ required>   
<hr>
Current Address :  

<textarea cols="80" rows="5" placeholder="Current Address" value="address" required>  
</textarea>  
 <label for="email"><b>Email</b></label>  
 <input type="text" placeholder="Enter Email" name="email" required>  
  
    <label for="psw"><b>Password</b></label>  
    <input type="password" placeholder="Enter Password" name="psw" required>  
  
    <label for="psw-repeat"><b>Re-type Password</b></label>  
    <input type="password" placeholder="Retype Password" name="psw-repeat" required>  
    <button type="submit" class="registerbtn">Register</button>    
</form>  
</body>  
</html>  