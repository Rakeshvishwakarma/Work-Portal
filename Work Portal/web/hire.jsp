<%-- 
    Document   : hire
    Created on : 6 Feb, 2020, 8:59:02 AM
    Author     : lenovo
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Random"%>
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
              Random r=new Random(System.currentTimeMillis());
        String id="";
        for(int i=0;i<=5;i++){
        id+=String.valueOf(r.nextInt(8));
        }
        DateFormat dateformat=new SimpleDateFormat("yyyy/MM/dd/HH:mm:ss");
        Random r1=new Random(System.currentTimeMillis());
        String id1="";
        for(int i=0;i<=5;i++){
        id1+=String.valueOf(r.nextInt(8));
        }
            String KindW=request.getParameter("worker");
            String TypeW=request.getParameter("Type");
            String Exp=request.getParameter("Exp");
            String Duration=request.getParameter("time");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/raunak","root","Rakesh");
        PreparedStatement ps=con.prepareStatement("insert into hire values(?,?,?,?,?)");
        ps.setString(1,id);
        ps.setString(2, KindW);
        ps.setString(3,TypeW);
        ps.setString(4,Exp);
        ps.setString(5,Duration);
        ps.executeUpdate();
        %>
        <jsp:forward page="hireDetail.html"/>
    </body>
    
</html>
