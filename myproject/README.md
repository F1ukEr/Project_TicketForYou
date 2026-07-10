# TicketForYou — Desktop Admin (myproject)

แอปพลิเคชัน Desktop สำหรับ **ผู้ดูแลระบบ** ของระบบจองตั๋ว **TicketForYou** พัฒนาด้วย Java Swing และเชื่อมต่อฐานข้อมูล MySQL

## เกี่ยวกับโปรเจกต์

โปรเจกต์นี้เป็นส่วนหลังบ้าน (Back-office) ของระบบ TicketForYou ใช้จัดการข้อมูลพนักงาน รายการแข่งขัน/ตั๋ว และคำสั่งซื้อที่ลูกค้าส่งผ่านเว็บไซต์ (`projectweb`) ทั้งสองโปรเจกต์ใช้ฐานข้อมูลเดียวกันชื่อ `ticketforyou`

## ฟีเจอร์หลัก

| หมวด | รายละเอียด |
|------|------------|
| **พนักงาน (Employee)** | เพิ่ม / แก้ไข / ลบ / ดูข้อมูลพนักงาน |
| **ตั๋ว/รายการแข่งขัน (Ticket)** | เพิ่ม / แก้ไข / ลบ รายการแสดง (ID, ชื่อ, วันที่, เวลา, ราคา, ที่นั่ง) |
| **คำสั่งซื้อ (Order)** | ดูรายการสั่งซื้อจากตาราง `myorder` (ชื่อผู้ใช้, รายการ, วันที่, ที่นั่ง, ราคา, สถานะ) |
| **หน้าหลัก (Home)** | แสดงตารางรายการตั๋วทั้งหมด และเมนูนำทางไปยังฟังก์ชันต่าง ๆ |

## เทคโนโลยีที่ใช้

- Java 17
- Java Swing (GUI Forms — NetBeans)
- MySQL (Connector/J 8.0.28)
- Maven

## โครงสร้างไฟล์สำคัญ

```
src/main/java/com/mycompany/myproject/
├── loading.java        # หน้าโหลดเริ่มต้น (จุดเข้าแอป)
├── Home.java           # หน้าหลัก แสดงรายการตั๋ว
├── addemployee.java    # เพิ่มพนักงาน
├── updateemployee.java # แก้ไขพนักงาน
├── deleteemployee.java # ลบพนักงาน
├── empolyeeinfo.java   # ดูข้อมูลพนักงาน
├── addticket.java      # เพิ่มตั๋ว
├── updateticket.java   # แก้ไขตั๋ว
├── deleteticket.java   # ลบตั๋ว
└── orderticket.java    # ดูคำสั่งซื้อ
```

## ความต้องการของระบบ

- JDK 17 ขึ้นไป
- MySQL Server
- ฐานข้อมูล `ticketforyou` พร้อมตาราง `employee`, `ticket`, `myorder`

> ปรับการเชื่อมต่อฐานข้อมูล (URL, username, password) ในไฟล์ Java ให้ตรงกับเครื่องของคุณ

## วิธีรัน

```bash
# Build ด้วย Maven
mvn clean package

# รันแอป (หน้าโหลดเริ่มต้น)
mvn exec:java -Dexec.mainClass="com.mycompany.myproject.loading"
```

หรือเปิดโปรเจกต์ใน NetBeans แล้ว Run ไฟล์ `loading.java`

## ความสัมพันธ์กับ projectweb

| myproject (Desktop) | projectweb (Web) |
|---------------------|------------------|
| จัดการพนักงาน | — |
| จัดการรายการตั๋ว/แข่งขัน | แสดงและให้ลูกค้าดูรายการ |
| ดูคำสั่งซื้อทั้งหมด | ลูกค้าสั่งซื้อและดูรายการของตนเอง |
