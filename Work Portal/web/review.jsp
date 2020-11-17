<%-- 
    Document   : review
    Created on : 13 Feb, 2020, 7:59:55 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        String Phone=request.getParameter("Num");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/raunak","root","Rakesh");   
        PreparedStatement ps1=con.prepareStatement("insert into view2 values(?,?,?)"); 
        ps1.setString(1,id);
        ps1.setString(2,name);
        ps1.setString(3,Phone);
        ps1.executeUpdate();
                %>
 <jsp:forward page="reviewThanks.html"/>  

    </body>
</html>
