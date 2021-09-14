<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel = "stylesheet" href="css/style1.css">
    <title>Exam Portal</title>
</head>
<body>
    <div class="container" id="exam">
         <div id="timer"></div>
        <div class="header">
            <h2 id="question">Question Text</h2>
            <ul>
                <li>
                    <input type ="radio" name="answer" id="a" class="answer">
                    <label for="a" id="a_text" >Answer</label>
                </li>

                <li>
                    <input type ="radio" name="answer" id="b" class="answer">
                    <label for="b" id="b_text" >Answer</label>
                </li>

                <li>
                    <input type ="radio" name="answer" id="c" class="answer">
                    <label for="c" id="c_text" >Answer</label>
                </li>

                <li>
                    <input type ="radio" name="answer" id="d" class="answer">
                    <label for="d" id="d_text" >Answer</label>
                </li>

            </ul>
        </div>
        <button id="submit">Submit</button>
    </div>
  

</body>
<script src="js/javascript.js"> </script>
</html>