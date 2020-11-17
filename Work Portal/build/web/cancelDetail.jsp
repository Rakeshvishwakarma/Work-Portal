<%-- 
    Document   : cancelDetail
    Created on : 11 Feb, 2020, 9:13:52 AM
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
        <title>Cancellation History</title>
    </head>
    <body>
       <%   
        HttpSession CancelId=request.getSession(false);
        String id=(String)CancelId.getAttribute("Id");
        
       
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/raunak","root","Rakesh");
        Statement stmt=con.createStatement();
        String st="select * from cancel1 where Cancel_Id='"+id+"'";
        ResultSet rs=stmt.executeQuery(st);
        %>
        <% while(rs.next()){%>
       <h2>Cancellation_Id:-<%out.println(rs.getString(1));%></h2>
        <h2>Booking_Id:-<%out.println(rs.getString(2));%></h2><br>
        <%}%>
        
    </body>
</html>
