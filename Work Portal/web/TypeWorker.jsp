<%-- 
    Document   : TypeWorker
    Created on : 23 Dec, 2019, 2:53:41 PM
    Author     : lenovo
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Type of Worker which has been done!</title>
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
        String KindWorker=request.getParameter("worker");
        String typeWorker=request.getParameter("TypeWorker");
        String exp=request.getParameter("Exp");
        String time=request.getParameter("Time");
        String wage=request.getParameter("Wage");
            
             Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/raunak","root","Rakesh");
        PreparedStatement pstmt = con.prepareStatement("insert into TypeWorker1 values(?,?,?,?,?,?)");
        
        HttpSession Type=request.getSession();
        Type.setAttribute("Id",id);
        
        pstmt.setString(1, id);
        pstmt.setString(2, KindWorker);
        pstmt.setString(3, typeWorker);
        pstmt.setString(4, exp);
        pstmt.setString(5, time);
        pstmt.setString(6, wage);
        pstmt.executeUpdate();
        
        
        %>
        <jsp:forward page="Details.jsp"/>
    </body>
</html>
