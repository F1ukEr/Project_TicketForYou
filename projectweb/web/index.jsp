<%-- 
    Document   : index
    Created on : May 5, 2022, 5:01:08 PM
    Author     : user
--%>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
  request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TicketForYou</title>
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
        .carousel-inner img {
            width: 100%;
            height: 450px;
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
        <br>
        <div class="carousel slide" data-ride="carousel" id="football">
            <ul class="carousel-indicators">
                <li data-target="#football" data-slide-to="0" class="active"></li>
                <li data-target="#football" data-slide-to="1"></li>
                <li data-target="#football" data-slide-to="2"></li>

            </ul>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="pexels-riccardo-41257.jpg" alt="football1" width="400" height="150">
                </div>
                <div class="carousel-item">
                    <img src="pexels-dom-le-roy-3991976.jpg" alt="football2" width="400" height="150 ">
                </div>
                <div class="carousel-item ">
                    <img src="00_A5B2356987C2E1280.png" alt="football3" width="400" height="150">
                </div>

            </div>
            <a class="carousel-control-prev" href="#football" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#football" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
        <br>

        <%
            String keyword = "";
  if(request.getParameter("txtKeyword") != null) {
  
  keyword = request.getParameter("txtKeyword");

  }
        %>
        <div class="container">
            <from metod="get" action="index.jsp">
                <input name="txtKeyword" type="text" id="txtKeyword" value="<%=keyword%>"> 
                <input type="submit" value="Search">
            </from>
            
            <br><br>
            <%
                 Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection c = DriverManager.getConnection("jdbc:mysql://localhost/ticketforyou?useSSL=false","root","supanat2541");
        Statement s = c.createStatement();
        ResultSet r = s.executeQuery("Select * from ticket");
            %>
            <br>
            <h1>การแข่งขันในขณะนี้</h1>

            <div class="card-deck" id="card">          
            
               <%
                     while(r.next()) {
                %>
   <div class="card mb-3">
                    <img src="thaileague.jpg" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-tittle"><%=r.getString("nameshow")%></h5>
                        <p class="card-text mb-3  text-danger "><%=r.getString("dateshow")%></p>
                        <p class="card-text mb-3  text-info"  ><%=r.getString("price")%>  บาท</p>
                        <a href="showdata.jsp?idshow=<%=r.getString("idshow")%>"> <button  class="btn btn-danger float-right" type="button" >ดูรายละเอียด</button></a>
                    </div>

                </div>
                    
                    <br><br>
                <%
             }
    s.close();
    r.close();
                %>

            </div>

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
                <span><a href="ติดต่อเรา.html" class="text-light">ติดต่อเรา</a></span>
            </p>
            <br>
        </footer>

    </body>
</html>