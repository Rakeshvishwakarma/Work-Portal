<%-- 
    Document   : avail
    Created on : 12 Feb, 2020, 11:41:40 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
        String KW=request.getParameter("worker");
        String TW=request.getParameter("Type");
        String Exp=request.getParameter("Exp");
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/raunak","root","Rakesh");   
       Statement st=con.createStatement();
        String st1="select * from hire where KindWork='"+KW+"'";
        ResultSet rs=st.executeQuery(st1);
        
        %>
          <% if(rs.next()){%>
   <% out.println("<h1>Already Hired<br> Thanks for interest</h1>");%>
   <%} 
else {%>
   <% out.println("<h1>Worker is Available <br> Hire Now!!!</h1>");%>
   <%}%>
  
    </body>
</html>
