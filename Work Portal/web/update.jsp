<%-- 
    Document   : update
    Created on : 12 Feb, 2020, 4:50:52 PM
    Author     : lenovo
--%>

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
    <body><%
        String pass=request.getParameter("pass");
        String Npass=request.getParameter("Npass");
       
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/raunak","root","Rakesh");
        PreparedStatement ps=con.prepareStatement("update RegCon2 set Create_P=? where Create_P='"+pass+"';");
        ps.setString(1,Npass);
        ps.executeUpdate();
        %>
        <jsp:forward page="contrator.html"/>
    </body>
</html>
