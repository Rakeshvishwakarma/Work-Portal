<%-- 
    Document   : ForCon
    Created on : 9 Nov, 2019, 8:53:32 PM
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
            String num=request.getParameter("Email");
             Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/raunak","root","Rakesh");
        PreparedStatement ps=con.prepareStatement("select Create_P from RegCon2 where Email=?");
        ps.setString(1, num);
        ResultSet rs=ps.executeQuery();
   %>
   <% if(rs.next()){%>
   <% out.println("<h1>This is your Password .<br> Please Keep It safe!!!!<br>:-"+rs.getString(1)+"</h1>");%>
   <%} 
else {%>
   <% out.println("<h1>You are not Registered Worker <br> Please Register first !!!!</h1>");%>
   <%}%>
    </body>
</html>
