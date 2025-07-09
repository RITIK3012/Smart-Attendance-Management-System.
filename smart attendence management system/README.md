Smart Attendance Management System

A Java Spring Boot-based attendance management system using facial recognition, with a JSP/CSS/JavaScript frontend and MySQL backend.

Features
- Facial Recognition Attendance: Mark attendance by uploading a photo (OpenCV integration point).
- Admin Dashboard: View total students, total attendance records, and recent attendance.
- Student Management: Add, view, and manage students.
- Attendance History: View all attendance records.
- Modern JSP Frontend: Responsive, styled admin interface using JSP, CSS, and JSTL.

#Tech Stack
- Backend: Java, Spring Boot, Spring Data JPA
- Frontend: JSP,CSS, JavaScript
- Database: MySQL
- Facial Recognition: (Pluggable via OpenCV/JavaCV)

# Project Structure

smart attendence management system/
├── src/main/java/com/example/attendance/         # Java source code
│   ├── controller/                              # Spring controllers (REST + JSP views)
│   ├── model/                                   # JPA entities
│   ├── repository/                              # Spring Data JPA repositories
│   └── service/                                 # Business logic
├── src/main/webapp/WEB-INF/jsp/                 # JSP frontend pages
├── src/main/resources/static/css/               # CSS styles
├── src/main/resources/application.properties    # App config
├── pom.xml                                      # Maven build file
└── README.md


# Setup & Run
1. Install Java 11+ and Maven
2. Install MySQL** and create a database named `attendance_db`.
3. **Configure DB credentials** in `src/main/resources/application.properties`:
   
   spring.datasource.username=root
   spring.datasource.password=root123
   
4. Build and run the project:
   
   cd "smart attendence management system"
   mvn clean install
   mvn spring-boot:run
   ```
5. Access the app:
   - Admin dashboard: [http://localhost:8080/dashboard](http://localhost:8080/dashboard)
   - Student management: [http://localhost:8080/students](http://localhost:8080/students)
   - Attendance: [http://localhost:8080/attendance](http://localhost:8080/attendance)
   - History: [http://localhost:8080/history](http://localhost:8080/history)

# Notes
- Facial recognition logic is a placeholder; integrate OpenCV/JavaCV as needed.
- All backend logic is in Java/Spring Boot; frontend is JSP-based.
- For any issues, check your MySQL connection and Maven dependencies.

---
*Developed for academic/demo purposes.*