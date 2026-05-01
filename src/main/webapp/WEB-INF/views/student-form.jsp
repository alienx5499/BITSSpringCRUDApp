<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Form</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f8fafc; padding: 24px; }
        .card { max-width: 700px; margin: auto; background: #fff; padding: 22px; border-radius: 10px; }
        label { display: block; margin-top: 12px; font-weight: 600; }
        input, select { width: 100%; padding: 10px; margin-top: 6px; border: 1px solid #d1d5db; border-radius: 6px; }
        button { margin-top: 16px; background: #16a34a; color: #fff; border: 0; padding: 10px 14px; border-radius: 6px; }
        a { margin-left: 12px; text-decoration: none; }
    </style>
</head>
<body>
<div class="card">
    <h2><c:out value="${student.id == null ? 'Add Student' : 'Update Student'}"/></h2>
    <form action="${pageContext.request.contextPath}/students" method="post">
        <input type="hidden" name="id" value="${student.id}"/>

        <label>Name</label>
        <input type="text" name="name" value="${student.name}" required/>

        <label>Email</label>
        <input type="email" name="email" value="${student.email}" required/>

        <label>Year Level</label>
        <input type="number" name="yearLevel" value="${student.yearLevel}" min="1" max="6" required/>

        <label>Course</label>
        <select name="course.id" required>
            <c:forEach var="course" items="${courses}">
                <option value="${course.id}" ${student.course != null && student.course.id == course.id ? 'selected' : ''}>
                        ${course.code} - ${course.title}
                </option>
            </c:forEach>
        </select>

        <button type="submit">Save</button>
        <a href="${pageContext.request.contextPath}/students">Cancel</a>
    </form>
</div>
</body>
</html>
