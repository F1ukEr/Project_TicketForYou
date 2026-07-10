# TicketForYou — Web Application (projectweb)

เว็บไซต์สำหรับ **ลูกค้า** ของระบบจองตั๋ว **TicketForYou** พัฒนาด้วย JSP และ Bootstrap เชื่อมต่อฐานข้อมูล MySQL

## เกี่ยวกับโปรเจกต์

โปรเจกต์นี้เป็นส่วนหน้าบ้าน (Front-end) ของระบบ TicketForYou ให้ผู้ใช้ทั่วไปดูรายการแข่งขัน สมัครสมาชิก เข้าสู่ระบบ และสั่งซื้อตั๋วออนไลน์ ข้อมูลจะถูกบันทึกลงฐานข้อมูล `ticketforyou` ซึ่งใช้ร่วมกับแอป Desktop ในโฟลเดอร์ `myproject`

## ฟีเจอร์หลัก

| หน้า | รายละเอียด |
|------|------------|
| `index.jsp` | หน้าหลัก แสดงรายการแข่งขัน/ตั๋ว |
| `showdata.jsp` | รายละเอียดการแข่งขัน และฟอร์มสั่งซื้อ |
| `buyticket.jsp` | บันทึกคำสั่งซื้อลงตาราง `myorder` |
| `login.jsp` / `login.html` | เข้าสู่ระบบ |
| `registration.jsp` / `reg.jsp` | สมัครสมาชิก |
| `myorder.jsp` | ดูรายการสั่งซื้อของตนเอง |
| `about.jsp` | เกี่ยวกับเรา |
| `contract.jsp` | ติดต่อเรา |
| `logout.jsp` | ออกจากระบบ |

## เทคโนโลยีที่ใช้

- Java 17
- JSP / Servlet (Jakarta EE 9)
- MySQL (Connector/J 8.0.28)
- Bootstrap, jQuery, Font Awesome
- GlassFish Server (NetBeans)

## โครงสร้างไฟล์สำคัญ

```
web/
├── index.jsp           # หน้าหลัก
├── showdata.jsp        # รายละเอียด + ฟอร์มซื้อตั๋ว
├── buyticket.jsp       # ประมวลผลการสั่งซื้อ
├── login.jsp           # ตรวจสอบการเข้าสู่ระบบ
├── registration.jsp    # ลงทะเบียนผู้ใช้
├── myorder.jsp         # รายการของฉัน
├── about.jsp           # เกี่ยวกับเรา
├── contract.jsp        # ติดต่อเรา
├── css/                # Bootstrap, Font Awesome
└── js/                 # jQuery, Bootstrap JS
```

## ความต้องการของระบบ

- JDK 17 ขึ้นไป
- MySQL Server
- GlassFish Server (หรือ Application Server ที่รองรับ Jakarta EE 9)
- ฐานข้อมูล `ticketforyou` พร้อมตาราง `ticket`, `customer`, `myorder`

> ปรับการเชื่อมต่อฐานข้อมูล (URL, username, password) ในไฟล์ JSP ให้ตรงกับเครื่องของคุณ

## วิธีรัน

1. เปิดโปรเจกต์ใน NetBeans
2. ตั้งค่า GlassFish Server และ MySQL Connector/J
3. Deploy โปรเจกต์ (สร้างไฟล์ `projectweb.war`)
4. เปิดเบราว์เซอร์ไปที่ `http://localhost:8080/projectweb/`

## ความสัมพันธ์กับ myproject

| projectweb (Web) | myproject (Desktop) |
|------------------|---------------------|
| ลูกค้าดูและสั่งซื้อตั๋ว | ผู้ดูแลจัดการรายการตั๋ว |
| สมัครสมาชิก / เข้าสู่ระบบ | จัดการข้อมูลพนักงาน |
| ดูรายการของตนเอง | ดูคำสั่งซื้อทั้งหมดในระบบ |
