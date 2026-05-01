<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Course Form</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f8fafc; padding: 24px; }
        .card { max-width: 650px; margin: auto; background: #fff; padding: 22px; border-radius: 10px; }
        label { display: block; margin-top: 12px; font-weight: 600; }
        input { width: 100%; padding: 10px; margin-top: 6px; border: 1px solid #d1d5db; border-radius: 6px; }
        button { margin-top: 16px; background: #16a34a; color: #fff; border: 0; padding: 10px 14px; border-radius: 6px; }
        a { margin-left: 12px; text-decoration: none; }
    </style>
</head>
<body>
<div class="card">
    <h2>${course.id == null ? 'Add Course' : 'Update Course'}</h2>
    <form action="${pageContext.request.contextPath}/courses" method="post">
        <input type="hidden" name="id" value="${course.id}"/>

        <label>Course Code</label>
        <input type="text" name="code" value="${course.code}" required/>

        <label>Course Title</label>
        <input type="text" name="title" value="${course.title}" required/>

        <button type="submit">Save</button>
        <a href="${pageContext.request.contextPath}/courses">Cancel</a>
    </form>
</div>
</body>
</html>
