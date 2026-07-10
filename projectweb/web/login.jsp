<%-- 
    Document   : login
    Created on : 13-May-2016, 09:47:50
    Author     : ComSCIv3400
--%>

<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ticketforyou?useSSL=false",
            "root", "supanat2541");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from customer where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("username", userid);//rs.getString("name")
        out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("index.jsp");
    } else {
        response.sendRedirect("login.html");
    }
%>