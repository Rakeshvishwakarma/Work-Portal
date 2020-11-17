de<%-- 
    Document   : contrator
    Created on : 9 Nov, 2019, 9:58:06 AM
    Author     : lenovo
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        String id=request.getParameter("Email");    
        String pass=request.getParameter("Create_P");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/raunak","root","Rakesh");
        PreparedStatement ps=con.prepareStatement("select Name from RegCon2 where Email=? and Create_P=?");
        ps.setString(1, id);
        ps.setString(2,pass);
        ResultSet rs=ps.executeQuery();
   %>
   <% if(rs.next()){%>
   <% out.println("<h1>Login Successfull "+rs.getString(1)+"</h1>");%>
   <jsp:forward page="hire.html"/>
   <%} 
else {%>
   <% out.println(null+"<h1>Alert You entered wrong details......Please try with Correct Details!</h1>");%>
   <%}%>
   
    </body>
</html>
