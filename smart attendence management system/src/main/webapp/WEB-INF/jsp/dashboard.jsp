<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f0f4f8;
            margin: 0;
            padding: 20px;
        }

        h2, h3 {
            color: #00796b;
            margin-bottom: 15px;
        }

        .dashboard-stats {
            display: flex;
            gap: 30px;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            font-size: 18px;
        }

        nav {
            background-color: #ffffff;
            padding: 15px 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
            margin-bottom: 30px;
            text-align: center;
        }

        nav a {
            text-decoration: none;
            color: #0288d1;
            font-weight: bold;
            margin: 0 10px;
            transition: color 0.3s ease;
        }

        nav a:hover {
            color: #01579b;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.08);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px 16px;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
        }

        th {
            background-color: #e0f2f1;
            color: #00695c;
        }

        tbody tr:hover {
            background-color: #f1f1f1;
        }

        strong {
            color: #2e7d32;
        }
    </style>
</head>
<body>
    <h2>Admin Dashboard</h2>

    <div class="dashboard-stats">
        <div>Total Students: <strong>${totalStudents}</strong></div>
        <div>Total Attendance Records: <strong>${totalAttendance}</strong></div>
    </div>

    <nav>
        <a href="/students">Manage Students</a> |
        <a href="/attendance">Mark Attendance</a> |
        <a href="/history">Attendance History</a>
    </nav>

    <h3>Recent Attendance</h3>

    <table>
        <thead>
            <tr>
                <th>Date</th>
                <th>Student Name</th>
                <th>Roll No</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="record" items="${recentAttendance}">
            <tr>
                <td>${record.date}</td>
                <td>${record.student.name}</td>
                <td>${record.student.rollNo}</td>
                <td>${record.status}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>
