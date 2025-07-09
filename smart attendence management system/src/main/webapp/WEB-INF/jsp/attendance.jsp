<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mark Attendance</title>
    <style>
        body {
            background: linear-gradient(to right, #e0f7fa, #e1f5fe);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            padding: 20px;
            margin: 0;
        }

        h2 {
            margin-bottom: 20px;
            color: #00796b;
        }

        a {
            text-decoration: none;
            color: #0288d1;
            margin-bottom: 20px;
            font-size: 14px;
        }

        a:hover {
            color: #01579b;
        }

        form {
            background-color: white;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        label {
            display: block;
            margin-bottom: 15px;
            font-size: 16px;
            color: #333;
        }

        input[type="file"] {
            padding: 6px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 6px;
            width: 100%;
        }

        button[type="submit"] {
            background-color: #00796b;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 10px;
            width: 100%;
        }

        button[type="submit"]:hover {
            background-color: #004d40;
        }

        #attendance-result {
            margin-top: 20px;
            font-size: 15px;
            color: #388e3c;
            text-align: center;
        }
    </style>
</head>
<body>
    <h2>Mark Attendance</h2>
    <a href="/dashboard">Back to Dashboard</a>
    <form id="mark-attendance-form" method="post" action="/attendance/mark" enctype="multipart/form-data">
        <label>Select Student:
            <select name="studentId" required>
                <option value="">--Select--</option>
                <c:forEach var="student" items="${students}">
                    <option value="${student.id}">${student.name} (${student.rollNo})</option>
                </c:forEach>
            </select>
        </label><br>
        <label>Upload Photo: <input type="file" name="image" accept="image/*" required></label><br>
        <button type="submit">Mark Attendance</button>
    </form>
    <div id="attendance-result"></div>
</body>
</html>
