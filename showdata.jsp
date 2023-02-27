<%-- 
    Document   : showdata
    Created on : May 5, 2022, 5:53:02 PM
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
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>รายละเอียดการแข่งขัน</title>
        <link rel="shortcut icon" href="Thailand-international-Football-team.jpg" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js">
        </script>
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
          h5 {
           text-align: center;
           padding-top: 10px;
           margin-bottom: 32px;
           
        }
          h1 {
           text-align: center;
           margin-bottom: 32px;
          
        }
        #info {
             text-align: center;
           color :blue;
            font-style: italic;     
            padding-bottom: 10px;
        }
        .container {
            border-radius: 5px;
             background-color: #f2f2f2;       
        }
        .btn {
            margin-bottom: 10px;
        }
        #img {
         display: block;
  margin-left: auto;
  margin-right: auto;
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
                    <li> <a href="myorder.jsp"> <span class="nav-link glyphicon glyphicon-user">รายการของฉัน</span></a></li>
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
        String sql = "SELECT * FROM  ticket WHERE idshow = '" + request.getParameter("idshow") + "'  ";     
 ResultSet r = s.executeQuery(sql);
  if (r != null) {
       r.next();
        %>
        <div class="container" id="info">
            <h1 class="text-info">รายละเอียด</h1>
            <img src="thaileague.jpg" height="300" id="img"> 
            <br>
            <span>ID Show :   <span> <%=r.getString("idshow")%></span> </span> <br>
            <span>Name Show :   <span> <%=r.getString("nameshow")%></span> </span> <br>
            <span >Date:   <span> <%=r.getString("dateshow")%></span> </span> <br>
            <span >Time :   <span> <%=r.getString("time")%></span> </span> <br>
            <span >Price :   <span> <%=r.getString("price")%></span> </span> <br>
        </div>

        <% } %>
        
        <br><br>
        <div class="container" >
            <form action="buyticket.jsp">
                <h5 class="text-success">การสั่งซื้อ</h5>
                Username : <input type="text" name="username" value="<%=session.getAttribute("username")%>">
                Name Show : <input type="text" name="nameshow" value="<%=r.getString("nameshow")%>"> <br> <br>
                Date : <input type="text" name="dateshow" value="<%=r.getString("dateshow")%>">
                Seat : <input type="number" name="seat" max="5" min="0" > <br> <br>
                Price : <input type="number" name="price" min="0" ><br> <br>
                <button  class="btn btn-info " type="submit" >ยืนยัน</button>
                
            </form>
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
