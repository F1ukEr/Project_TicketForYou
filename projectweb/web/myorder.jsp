<%-- 
    Document   : myorder
    Created on : May 6, 2022, 5:18:48 PM
    Author     : user
--%>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
  request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>รายการของฉัน</title>
        <link rel="shortcut icon" href="Thailand-international-Football-team.jpg" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <style>
        body {
            font-family: 'Charmonman', cursive;
        }
        .social {
            align-items: center;
            font-size: 32px;
            justify-content: space-between;
            padding: 0.5rem 1rem;
        }
        h1 {
            text-align: center;
            margin-bottom: 32px;
            text-shadow: 2px 2px 4px #000000;
        }
    </style>
    <body>
        <nav class="navbar navbar-expand-sm navbar-dark fixed-top bg-danger" id="nav1">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="#" class="navbar-brand">
                        <img src="Thailand-international-Football-team.jpg" alt="logo" height="30" >
                        TicketForYou
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="navbar-nav bg-danger">
                        <li class="nav-item">
                            <a href="index.jsp" class="nav-link active">หน้าหลัก</a>
                        </li>
                        <li class="nav-item"><a href="about.jsp" class="nav-link ">เกี่ยวกับเรา</a></li>
                        <li class="nav-item"><a href="contract.jsp" class="nav-link">ติดต่อเรา</a></li>
                    </ul>

                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li> <a href="#"> <span class="nav-link glyphicon glyphicon-user">รายการของฉัน</span></a></li>
                        <%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
                        %>
                    <li> <a href="login.html"> <span class="nav-link glyphicon glyphicon-user">เข้าสู่ระบบ</span></a></li>
                        <%} else {
                        %>
                    <li> <span class="nav-link glyphicon glyphicon-user"> <%=session.getAttribute("username")%>  <a href='logout.jsp'>ออกจากระบบ</a></span></li>
                        <%
                            }
                        %>
                </ul>
            </div>
        </nav>
        <br> <br> <br> <br> 
        <%
         Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection c = DriverManager.getConnection("jdbc:mysql://localhost/ticketforyou?useSSL=false","root","supanat2541");
                Statement s = c.createStatement();
                String sql = "SELECT * FROM  myorder WHERE username like '%" +  session.getAttribute("username")+ "%' " +" ORDER BY username";
              //  ResultSet r = s.executeQuery("Select * from myorder where  username = 'session.getAttribute("username") ' ");
              ResultSet r = s.executeQuery(sql);
        %>
        <h1 class="text-info">รายการของฉัน</h1>
        <div class="container">
            <table class="table table-dark ">
                <thead>
                    <tr>
                        <th scope="col">Username</th>
                        <th scope="col">Name Show</th>
                        <th scope="col">Date</th>
                        <th scope="col">Seat</th>
                        <th scope="col">Price</th>
                        <th scope="col">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                      while(r.next()) {
                    %>
                    <tr>

                        <th scope="row" name="username"><%=r.getString("username")%></th>
                        <td name="nameshow"><%=r.getString("nameshow")%></td>
                        <td name="dateshow"><%=r.getString("dateshow")%></td>
                        <td name="seat"><%=r.getString("seat")%></td>
                        <td name="price"><%=r.getString("price")%></td>
                        <td name="status"><%=r.getString("status")%></td>
                         </tr>


                    <%
                        }
    s.close();
    r.close();
                    %>
                </tbody>
            </table>

        </div>

        <br><br>
        <footer class="container-fluid text-center bg-danger text-white">
            <br>
            <img src="Thailand-international-Football-team.jpg"   height="50" alt=""><br><br>
            <div class="social">
                <a href="https://www.facebook.com"><i class="fab fa-facebook"></i></a>
                <a href="https://twitter.com/home?lang=th"><i class="fab fa-twitter"></i></a>
                <a href="https://www.youtube.com"><i class="fab fa-youtube"></i></a>
                <a href="https://www.instagram.com"><i class="fab fa-instagram"></i></a>
            </div>

            <p class="footer-bottom"> <span><a href="#" class="text-light">คำถามที่พบบ่อย</a></span>
                <span><a href="#" class="text-light">นโยบายความเป็นส่วนตัว</a></span>
                <span><a href="contract.jsp" class="text-light">ติดต่อเรา</a></span>
            </p>
            <br>
        </footer>

    </body>
</html>
