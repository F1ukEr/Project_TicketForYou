<%-- 
    Document   : contract
    Created on : May 6, 2022, 3:40:50 PM
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
    <title>ติดต่อเรา</title>
    <link rel="shortcut icon" href="Thailand-international-Football-team.jpg" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/popper.min.js">
  </script>
  <style media="screen">
    body {
      font-family: 'Charmonman', cursive;
    }
  
    h3 {
      text-align: center;
      font-style: italic;
      font-weight: bold;
      text-shadow: 5px 5px 5px yellow;
      margin-top: 64px;
    }
  
    .container #head {
      font-size: 24px;
      text-align: center;
      margin-top: 22px;
    }
  
    .contact {
      text-align: center;
    }
  
    .sub {
      text-align: center;
    }
  
    #day {
      font-size: 28px;
      font-weight: bold;
      font-style: oblique;
      text-shadow: 5px 5px 5px yellow;
    }
  
    #head {
      text-shadow: 5px 5px 5px yellow;
    }
  
    h5 {
      font-size: 28px;
      margin-top: 22px;
      font-weight: bold;
      font-style: oblique;
      text-shadow: 5px 5px 5px yellow;
    }
  
    .sub p {
      margin-top: 20px;
      justify-content: space-around;
      font-size: 22px;
  
    }
  
    .social {
      align-items: center;
      font-size: 32px;
      justify-content: space-between;
      padding: 0.5rem 1rem;
      margin-top: 16px;
    }
  
    .footer-bottom {
      font-size: 22px;
    }
  
    #addres {
      font-size: 18px;
    }
  </style>
  
</head>
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
      <br><br><br><br>

      <div class="container">
        <h3 class="text-warning">ติดต่อเรา</h3>
        <p id="head" class="text-warning">ท่านสามารถติดต่อเราได้ตามช่องทางเหล่านี้</p>
        <div class="contact ">
          <p id="day" class="text-warning">วันและเวลาทำการ</p>
          <span class="text-danger">บริษัทเปิด: วันจันทร์ – ศุกร์ เวลา 08.30-17.00 น.
            <br>*หยุดวันอาทิตย์และวันหยุดนักขัตฤกษ์</span>
          <div class="sub ">
            <h5 class="text-warning">ช่องทางการติดต่อ</h5>
            <p class="text-info">เบอร์โทรศัพท์ : <span class="text-info">(02)555-5555</span> </p>
            <p class="text-info">E-mail : <span class="text-info">TicketForYou@gmail.com</span> </p>
            <p class="text-info">Facebook : <span class="text-info">TicketForYou</span> </p>
          </div>
          <p id="addres" class="text-info">2086 ซอย รามคำแหง 24 แยก 18 แขวง หัวหมาก เขตบางกะปิ กรุงเทพมหานคร 10240</p>
          <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3875.353826163283!2d100.61379341488858!3d13.757523600867254!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30e29e1eefa6a9f7%3A0x96f9d0f2459e080f!2z4Lih4Lir4Liy4Lin4Li04LiX4Lii4Liy4Lil4Lix4Lii4Lij4Liy4Lih4LiE4LmN4Liy4LmB4Lir4LiH!5e0!3m2!1sth!2sth!4v1625115742414!5m2!1sth!2sth"
            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
    </div>
    <br><br><br>

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
