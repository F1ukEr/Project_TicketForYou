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
    <title>เกี่ยวกับเรา</title>
    <link rel="shortcut icon" href="Thailand-international-Football-team.jpg" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/popper.min.js">
  </script>
  <script src="js/bootstrap.min.js"> </script>

  <style>
         body {
     font-family: 'Charmonman', cursive;
     background-image:url('background.jpg');
   }
   .social {
    align-items: center;
    font-size: 32px;
    justify-content: space-between;
    padding: 0.5rem 1rem;
  }
  
  footer {
    position: fixed;
  left: 0;
  bottom: 0;
 
  }
  #text1 {
    font-size: 22px;
    margin-left: 14px;
    margin-right: 14px;
    margin-bottom: 4px;
    text-shadow: 5px 5px 5px black;
  }
  h2 {
    text-align: center;
    font-style: italic;
    font-weight: bold;
    text-shadow: 5px 5px 5px yellow;
    margin-top: 10px;
  }
 
  
  #text {
    border: dashed 5px #2F4F4F;
    background-color: gainsboro;
    margin-top: 100px;
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

      <div class="container" id="text">
            <h2>เกี่ยวกับเรา</h2>
            <span id="text1">เว็บไซต์เป็นส่วนหนึ่งของรายวิชา INT4102</span>
            <br><span  id="text1">คณะวิทยาศาสตร์ สาขาเทคโนโลยีสารสนเทศ มหาวิทยาลัยรามคำแหง</span>
            <br><span  id="text1">จัดทำโดย นาย ศุภณัฐ แก้ววัชระรังษี รหัสนักศึกษา 6105500059</span>
      </div>


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