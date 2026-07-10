<%-- 
    Document   : registration
    Created on : May 4, 2022, 5:15:20 PM
    Author     : user
--%>
<%@ page contentType="text/html; charset=tis-620" %>
<%@ page import ="java.sql.*" %>
<% 
  request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
%>
<%
    String user = request.getParameter("username");    
    String pwd = request.getParameter("password");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    Class.forName("com.mysql.jdbc.Driver");
    Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticketforyou?useSSL=false","root", "supanat2541");
    
    String query = "Insert Into customer(username,password,fname,lname,email,address)"
                    + " values (?,?,?,?,?,?)";
                    
                    PreparedStatement preparedStmt = c.prepareStatement(query);
                     preparedStmt.setString(1, user);
                     preparedStmt.setString(2, pwd);
                     preparedStmt.setString(3, fname);
                     preparedStmt.setString(4, lname);
                     preparedStmt.setString(5, email);
                      preparedStmt.setString(6, address);
                        preparedStmt.execute();

            c.close();
    if (preparedStmt!=null) {
        session.setAttribute("username", user);
        response.sendRedirect("index.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("reg.html");
    }
%>

