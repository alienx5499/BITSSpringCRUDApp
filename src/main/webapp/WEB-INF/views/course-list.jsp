<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Courses</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f5f7fb; margin: 0; padding: 24px; }
        .container { max-width: 850px; margin: auto; background: #fff; padding: 20px; border-radius: 10px; }
        a.btn { text-decoration: none; background: #2563eb; color: #fff; padding: 10px 14px; border-radius: 6px; margin-right: 8px; }
        table { width: 100%; border-collapse: collapse; margin-top: 16px; }
        th, td { border: 1px solid #dbe3ef; padding: 10px; text-align: left; }
        th { background: #eef4ff; }
    </style>
</head>
<body>
<div class="container">
    <h2>Course Management</h2>
    <a class="btn" href="${pageContext.request.contextPath}/courses/new">Add Course</a>
    <a class="btn" href="${pageContext.request.contextPath}/students">Back to Students</a>

    <table>
        <tr>
            <th>ID</th>
            <th>Code</th>
            <th>Title</th>
            <th>Action</th>
        </tr>
        <c:forEach var="course" items="${courses}">
            <tr>
                <td>${course.id}</td>
                <td>${course.code}</td>
                <td>${course.title}</td>
                <td><a href="${pageContext.request.contextPath}/courses/edit/${course.id}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
