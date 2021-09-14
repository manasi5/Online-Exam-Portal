<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
  background-color:pink;
}
</style>
</head>
<body>
<h1>Succesful Login !<h1>

       <H1>Student Registeration Data </H1>
       <%
          Connection con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/onlineexam","root","Kalemannu@1234");
          
           Statement statement = con.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from student") ;
       %>
      <TABLE BORDER="1">
      <TR>
      <TH>user_id</TH>
      <TH>course</TH>
      <TH>email</TH>
      <TH>first_name</TH>
      <TH>gender</TH>
      <TH>last_name</TH>
      <TH>password</TH>
      <TH>ph_number</TH>
      </TR>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getInt(1) %></td>
       <TD> <%= resultset.getString(2) %></TD>
       <TD> <%= resultset.getString(3) %></TD>
       <TD> <%= resultset.getString(4) %></TD>
       <TD> <%= resultset.getString(5) %></TD>
       <TD> <%= resultset.getString(6) %></TD>
       <TD> <%= resultset.getString(7) %></TD>
       <TD> <%= resultset.getInt(8) %></TD>
      </TR>
      <% } %>
     </TABLE>
</body>
</html>