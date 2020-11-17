<%-- 
    Document   : Cancels
    Created on : 10 Feb, 2020, 10:59:15 PM
    Author     : lenovo
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cancellation of Worker</title>
    </head>
    <body>
          <%
        String id1=request.getParameter("text");    
        Random r=new Random(System.currentTimeMillis());
        String id="";
        for(int i=0;i<=5;i++){
        id+=String.valueOf(r.nextInt(8));
        }
        DateFormat dateformat=new SimpleDateFormat("yyyy/MM/dd/HH:mm:ss");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/raunak","root","Rakesh");   
        PreparedStatement ps1=con.prepareStatement("insert into cancel1 values(?,?)");
         PreparedStatement ps=con.prepareStatement("delete from TypeWorker1 where id=?");
         
         ps1.setString(1,id);
        ps1.setString(2,id1);
        ps1.executeUpdate();
        HttpSession CancelId=request.getSession();
        CancelId.setAttribute("Id",id);
        ps.setString(1, id1);
       ps.executeUpdate();
     %>
        
        
        <jsp:forward page="cancelDetail.jsp"/>  
   
        
            </body>
</html>
