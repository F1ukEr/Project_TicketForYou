<%-- 
    Document   : reg
    Created on : May 6, 2022, 5:12:41 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
  request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html  lang="th" dir="ltr">
    <head>
         <meta charset="utf-8">
  <title>ลงทะเบียน</title>
  <link rel="shortcut icon" href="Thailand-international-Football-team.jpg" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"> </script>
    </head>
    <style media="screen">
         body {
    font-family: 'Charmonman', cursive;
    background-image: url(Thailand-international-Football-team.jpg);
  }
   #reg {
    background-color: #F5F5DC;
    margin-top: 50px;
    width: 30%;
    border: solid #000000 1px;
    border-radius: 22px;
  }
  
   input {
    width: 100%;
  }

  h3 {
    margin-top: 25px;
    text-align: center;
    font-size: 32px;
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

  footer {
    margin-top: 42px;
  }
        
    </style>
    <body>
        <body class="bg-light">
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
      
      <div class="container" id="reg">
          <h3>ลงทะเบียน</h3>
          <form action="registration.jsp">
               Username : <input type="text" name="username" required > <br><br>
               Password : <input type="password" name="password" required ><br><br>
                First name :  <input type="text" name="fname" required ><br><br>
                 Last name :  <input type="text" name="lname" required ><br><br>
               E-mail :  <input type="text" name="email" required ><br><br>
               address :  <input type="text" name="address" required ><br><br>
               <p align="right"><button type="submit" id="reg1" class="btn btn-info " align="right">ลงทะเบียน</button></p>
          </form>
            <a href="login.html"><span> มีบัญชีแล้ว ลงชื่อเข้าใช้</span></a><br><br>
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
      <span><a href="contract.html" class="text-light">ติดต่อเรา</a></span>
    </p>
    <br>
  </footer>
    </body>
</html>

