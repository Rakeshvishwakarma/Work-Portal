<%-- 
    Document   : Details1
    Created on : 12 Feb, 2020, 10:30:27 PM
    Author     : lenovo
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/raunak","root","Rakesh");
        Statement st=con.createStatement();
        String stp="select * from hire";
        ResultSet rs=st.executeQuery(stp);
        %>
        <% while(rs.next()){%>
        <h1>Hire ID :-<%out.println(rs.getString(1));%></h1>
        <h1>Kinds Of Worker:-<%out.println(rs.getString(2));%></h1>
        <h1>Types Of Worker:-<%out.println(rs.getString(3));%></h1>
        <h1>Worker Experience:-<%out.println(rs.getString(4));%></h1>
        <h1>Work Timing :-<%out.println(rs.getString(5));%></h1>
        
        <%}%>
    </body>
</html>
