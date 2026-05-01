<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Students</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f5f7fb; margin: 0; padding: 24px; }
        .container { max-width: 1100px; margin: auto; background: #fff; padding: 20px; border-radius: 10px; }
        .actions a { text-decoration: none; background: #2563eb; color: #fff; padding: 10px 14px; margin-right: 8px; border-radius: 6px; }
        table { width: 100%; border-collapse: collapse; margin-top: 16px; }
        th, td { border: 1px solid #dbe3ef; padding: 10px; text-align: left; }
        th { background: #eef4ff; }
        .section-title { margin-top: 26px; }
        .edit-link { color: #1d4ed8; text-decoration: none; }
    </style>
</head>
<body>
<div class="container">
    <h2>Student Management</h2>
    <div class="actions">
        <a href="${pageContext.request.contextPath}/students/new">Add Student</a>
        <a href="${pageContext.request.contextPath}/courses/new">Add Course</a>
        <a href="${pageContext.request.contextPath}/courses">View Courses</a>
    </div>

    <h3 class="section-title">All Students</h3>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Year</th>
            <th>Course</th>
            <th>Action</th>
        </tr>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.email}</td>
                <td>${student.yearLevel}</td>
                <td>${student.course.code} - ${student.course.title}</td>
                <td><a class="edit-link" href="${pageContext.request.contextPath}/students/edit/${student.id}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>

    <h3 class="section-title">Inner Join Result: Students with Courses</h3>
    <table>
        <tr>
            <th>Student Name</th>
            <th>Email</th>
            <th>Year</th>
            <th>Course Code</th>
            <th>Course Title</th>
        </tr>
        <c:forEach var="row" items="${joinedRows}">
            <tr>
                <td>${row.studentName}</td>
                <td>${row.studentEmail}</td>
                <td>${row.yearLevel}</td>
                <td>${row.courseCode}</td>
                <td>${row.courseTitle}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
