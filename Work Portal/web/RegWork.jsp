<%-- 
    Document   : RegWork
    Created on : 9 Nov, 2019, 8:16:20 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
            try{
        String name=request.getParameter("Name");
        String id=request.getParameter("Email");    
        String pass=request.getParameter("Create_P");
        String count=request.getParameter("State");
        String state=request.getParameter("Landmark");    
        String phone=request.getParameter("Phone_N");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/raunak","root","Rakesh");
         Statement chkuser=con.createStatement();
        ResultSet chkuser1=chkuser.executeQuery("select * from RegWork where Phone_N='"+phone+"';");
        if(chkuser1.next()){
            %><script>
                alert("Worker Already Registered....\n\
            Please Login To Continue....");
                window.location="worker.html";
                </script><%
        }else{

       
        PreparedStatement ps=con.prepareStatement("insert into RegWork values(?,?,?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, id );
        ps.setString(3, pass);
        ps.setString(4, count);
        ps.setString(5, state);
        ps.setString(6, phone);
        ps.executeUpdate();
%><script>
         alert("Worker Successfully Registered....");
                window.location="worker.html";
                </script><%
}

        }catch(Exception e){
            out.println(e.getMessage());
        }
        %>
}
             </body>
</html>
