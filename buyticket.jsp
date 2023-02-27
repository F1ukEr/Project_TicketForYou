<%-- 
    Document   : buyticket
    Created on : May 6, 2022, 4:22:43 PM
    Author     : user
--%>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
  request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
%>
<%
    String user = request.getParameter("username"); 
String nameshow = request.getParameter("nameshow"); 
String date = request.getParameter("dateshow"); 
String seat = request.getParameter("seat"); 
String price = request.getParameter("price"); 

Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost/ticketforyou?useSSL=false","root","supanat2541");
             
String query = "Insert Into myorder(username,nameshow,dateshow,seat,price)"
                    + " values (?,?,?,?,?)";
PreparedStatement preparedStmt = c.prepareStatement(query);
                     preparedStmt.setString(1, user);
                     preparedStmt.setString(2, nameshow);
                     preparedStmt.setString(3, date);
                     preparedStmt.setString(4, seat);
                     preparedStmt.setString(5, price);
                        preparedStmt.execute();

            c.close();
 if (preparedStmt!=null) {
         out.print(" Success!!");
        response.sendRedirect("index.jsp");
      
    } else {
        out.print(" Unsuccess!");
        response.sendRedirect("showdata.jsp");
    }
%>
