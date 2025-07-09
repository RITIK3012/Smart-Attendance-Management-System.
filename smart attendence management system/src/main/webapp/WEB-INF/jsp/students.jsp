<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Management</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #00796b;
            margin-bottom: 10px;
        }

        a {
            text-decoration: none;
            color: #0288d1;
            font-size: 14px;
        }

        a:hover {
            color: #01579b;
        }

        #student-list {
            margin-top: 20px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 3px 12px rgba(0, 0, 0, 0.1);
        }

        #add-student-form {

            margin-top: 30px;
            background-color: #ffffff;
            padding: 25px 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            max-width: 500px;
        }

        #add-student-form h3 {
            color: #00695c;
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 15px;
            color: #333;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        button[type="submit"] {
            background-color: #00796b;
            color: white;
            border: none;
            padding: 10px 16px;
            font-size: 15px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #004d40;
        }

        @media (max-width: 600px) {
            #add-student-form {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <h2>Student Management</h2>
    <a href="/dashboard">← Back to Dashboard</a>

    <!-- Student list -->
    <div id="student-list">
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Roll No</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="student" items="${students}">
                    <tr>
                        <td>${student.name}</td>
                        <td>${student.rollNo}</td>
                        <td>${student.email}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Add student form -->
    <form id="add-student-form" method="post" action="/students/add">
        <h3>Add Student</h3>
        <label>
            Name:
            <input type="text" name="name" required>
        </label>
        <label>
            Roll No:
            <input type="text" name="rollNo" required>
        </label>
        <label>
            Email:
            <input type="email" name="email" required>
        </label>
        <button type="submit">Add Student</button>
    </form>
</body>
</html>
