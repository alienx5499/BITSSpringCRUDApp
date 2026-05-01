<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <style>
        body { font-family: Arial, sans-serif; background: #fef2f2; padding: 24px; }
        .error-card { max-width: 800px; margin: auto; background: #fff; border-left: 6px solid #dc2626; padding: 20px; border-radius: 10px; }
        h2 { color: #b91c1c; }
        p { color: #1f2937; }
        a { text-decoration: none; color: #1d4ed8; }
    </style>
</head>
<body>
<div class="error-card">
    <h2>Operation Failed</h2>
    <p><strong>Reason:</strong> ${errorMessage}</p>
    <p><strong>Details:</strong> ${errorDetails}</p>
    <a href="${pageContext.request.contextPath}/students">Go Back</a>
</div>
</body>
</html>
