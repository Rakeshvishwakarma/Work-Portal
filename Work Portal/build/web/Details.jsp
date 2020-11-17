<%-- 
    Document   : Details
    Created on : 10 Feb, 2020, 10:59:31 PM
    Author     : lenovo
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details of Worker</title>
    </head>
    <body><%
        HttpSession CancelId=request.getSession(false);
        String id=(String)CancelId.getAttribute("Id");
        
       
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/raunak","root","Rakesh");
        Statement stmt=con.createStatement();
        String st="select * from TypeWorker1 where id='"+id+"'";
        ResultSet rs=stmt.executeQuery(st);
        %>
       
        <% while(rs.next()){%>
        <h1>Worker ID :-<%out.println(rs.getString(1));%></h1>
        <h1>Kinds Of Worker:-<%out.println(rs.getString(2));%></h1>
        <h1>Types Of Worker:-<%out.println(rs.getString(3));%></h1>
        <h1>Worker Experience:-<%out.println(rs.getString(4));%></h1>
        <h1>Work Timing :-<%out.println(rs.getString(5));%></h1>
        <h1>Worker's Wages:-<%out.println(rs.getString(6));%></h1>
        <%}%>
    </body>
</html>
