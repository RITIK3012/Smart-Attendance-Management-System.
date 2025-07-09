<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance History</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f9fc;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #00796b;
            margin-bottom: 15px;
        }

        a {
            text-decoration: none;
            color: #0288d1;
            font-size: 14px;
            margin-bottom: 20px;
            display: inline-block;
        }

        a:hover {
            color: #01579b;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.07);
        }

        th, td {
            padding: 14px 16px;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
            font-size: 15px;
        }

        th {
            background-color: #e0f2f1;
            color: #004d40;
        }

        tbody tr:hover {
            background-color: #f1f1f1;
        }

        /* Color-coded status */
        td:last-child {
            font-weight: bold;
        }

        .status-present {
            color: #2e7d32;
        }

        .status-absent {
            color: #c62828;
        }

        /* Responsive design */
        @media (max-width: 600px) {
            table, thead, tbody, th, td, tr {
                display: block;
            }

            thead {
                display: none;
            }

            tr {
                margin-bottom: 15px;
                background-color: #ffffff;
                border-radius: 8px;
                box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
                padding: 10px;
            }

            td {
                position: relative;
                padding-left: 50%;
                border-bottom: none;
            }

            td::before {
                position: absolute;
                left: 15px;
                top: 14px;
                font-weight: bold;
                color: #555;
            }

            td:nth-of-type(1)::before { content: "Date"; }
            td:nth-of-type(2)::before { content: "Student Name"; }
            td:nth-of-type(3)::before { content: "Roll No"; }
            td:nth-of-type(4)::before { content: "Status"; }
        }
    </style>
</head>
<body>
    <h2>Attendance History</h2>
    <a href="/dashboard">← Back to Dashboard</a>

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
            <c:forEach var="record" items="${attendanceRecords}">
                <tr>
                    <td>${record.date}</td>
                    <td>${record.student.name}</td>
                    <td>${record.student.rollNo}</td>
                    <td class="${record.status eq 'Present' ? 'status-present' : 'status-absent'}">
                        ${record.status}
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
