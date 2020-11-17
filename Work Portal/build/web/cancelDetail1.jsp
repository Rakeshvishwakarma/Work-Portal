<%-- 
    Document   : cancelDetail1
    Created on : 12 Feb, 2020, 11:23:37 PM
    Author     : lenovo
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%   
        HttpSession CancelId=request.getSession(false);
        String id=(String)CancelId.getAttribute("Id");
        
       
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/raunak","root","Rakesh");
        Statement stmt=con.createStatement();
        String st="select * from cancels where Cancel_Id='"+id+"'";
        ResultSet rs=stmt.executeQuery(st);
        %>
        <% while(rs.next()){%>
       <h2>Cancellation_Id:-<%out.println(rs.getString(1));%></h2>
        <h2>Hiring_Id:-<%out.println(rs.getString(2));%></h2><br>
        <%}%>
        
    </body>
</html>
