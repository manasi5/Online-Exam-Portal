<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login And Register</title>
    <link rel = "stylesheet" href="css/style.css">
</head>
<body>
    <div class="container">
        <div class="card" >
            <div class ="button-box" id="btn" >
                <!-- <div id="btn"> -->
                <button type="button" class="toggle-btn" onclick="login()">Log In</button>
                <button type="button" class="toggle-btn" onclick="register()">Register</button>
             </div>
            
                    <form id="login" class="input-group" method="post">
                        <input type="email" class="input-box" placeholder="Please enter your email-id "required>
                        <input type="password" class="input-box" placeholder="Password"required>
                        <input type ="checkbox" class="checkbox"><span>Remember Me</span>
                        <button type="submit"  class="submit-btn">Log In</button>
                    </form>
                  <form id="register" class="input-group"method="post">
                        <input type="name" class="input-box" placeholder="Please enter your Name "required>
                        <input type="email" class="input-box" placeholder="Please enter your email-id "required>
                        <input type="password" class="input-box" placeholder="Password"required>
                        <input type="password" class="input-box" placeholder="Re-type Password"required>
                        <input type ="checkbox" class="checkbox"><span>I Agree to the terms and conditions</span>
                        <button type="submit"  class="submit-btn">Register</button>
                   </form>
            </div>

        </div>
        

        </div>
    </div>

    <script>
        var x= document.getElementById("login");
        var y= document.getElementById("register");
        var z=document.getElementById("btn");

        function register(){
            x.style.left="-400px";
            y.style.left="50px";
            z.style.left="110px";
        }

        function login(){
            x.style.left="50px";
            y.style.left="450px";
            z.style.left="0px";
        }
    </script>
    
    
</body>
</html>