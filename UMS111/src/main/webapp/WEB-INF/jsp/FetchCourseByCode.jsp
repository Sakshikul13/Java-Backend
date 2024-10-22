<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Fetch Course by Code</title>
</head>
<body>
    <h2>Fetch Course by Code</h2>
    <form action="fetchCourse" method="get">
        <label for="courseCode">Course Code:</label>
        <input type="text" id="courseCode" name="courseCode" />
        <input type="submit" value="Fetch Course" />
    </form>
    
    <%-- Display course details if available --%>
    <c:if test="${not empty course}">
        <h3>Course Details:</h3>
        <p>Course Code: ${course.courseCode}</p>
        <p>Course Name: ${course.courseName}</p>
        <p>Department ID: ${course.departmentId}</p>
    </c:if>
    
    <%-- Display error message if course not found --%>
    <c:if test="${not empty errorMessage}">
        <h3>Error:</h3>
        <p>${errorMessage}</p>
    </c:if>
</body>
</html>
