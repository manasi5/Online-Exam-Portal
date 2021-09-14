<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

table.center {
  margin-left: auto; 
  margin-right: auto;
}
table {
  width: 100%;
}
</style>
</head>
<body>

<h2><%{out.println(request.getAttribute("fname"));} %>'s Report Card</h2>

<table class="center">
�<tr>
��� <th>Firstname</th>
��� <th>Lastname</th> 
��� <th>Phone no.</th>
	<th>Gender</th>
	<th>Course</th>
	<th>Test  Marks</th>
	
� </tr>
� <tr>
��� <td><%{out.println(request.getAttribute("firstName"));} %> </td>
��� <td><%{out.println(request.getAttribute("lastName"));} %> </td>
��� <td><%{out.println(request.getAttribute("phNumber"));} %> </td>
<td><%{out.println(request.getAttribute("gender"));} %> </td>
	<td><%{out.println(request.getAttribute("course"));} %> </td>
	<td><%{out.println(request.getAttribute("test"));} %> </td>
	
� </tr>
</table>

</body>
</html>