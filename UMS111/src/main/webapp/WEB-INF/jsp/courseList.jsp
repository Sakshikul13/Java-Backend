<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course List</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f0f0f0;
      background-size: cover;
      background-repeat: no-repeat;
      background-image: url(''); /* Add your background image URL here */
    }
    .logo {
      max-height: 50px;
    }
        header {
            background-color: #DEB887;
            color: #fff;
            padding: 10px 20px;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .logo {
            max-height: 50px;
        }
        .container {
            margin-top: 20px;
        }
        .btn-primary {
            background-color: #007BFF;
            border-color: #007BFF;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .table-container {
            margin-bottom: 20px;
        }
        .btn-container {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <header>
    <img src="https://www.mbacollegesbangalore.in/wp-content/uploads/2017/10/Presidency-University.png" class="logo">
        <h1>Presidency University</h1>
        <div>
            <button class="btn btn-light rounded-pill" id="Account">Admin</button>
        </div>
    </header>
    <div class="container">
        <div class="table-container">
            <h2 class="mb-4">Course List</h2>
            <div class="btn-container">
            <a href="addCourse" class="btn btn-primary">Add New Course</a>
        	</div>
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>Course Code</th>
                        <th>Course Name</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="course" items="${courses}">
                        <tr>
                            <td>${course.courseCode}</td>
                            <td>${course.courseName}</td>
                            <td>
                                <a href="editCourse?courseCode=${course.courseCode}" class="btn btn-warning btn-sm">Edit</a>
                                <a href="deleteCourse?courseCode=${course.courseCode}" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        
    </div>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
