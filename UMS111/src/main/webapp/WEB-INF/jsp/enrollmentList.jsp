<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>enrollment List</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        header {
      background-color: rgba(240, 240, 240, 0.9);
      color: #000;
      padding: 10px 20px;
      text-align: center;
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 20px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      position: relative;
      z-index: 1;
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
        h2{
        text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <img src="https://th.bing.com/th/id/OIP.n6mWCKNrskV7tXxctffzNQHaHF?rs=1&pid=ImgDetMain" alt="Company Logo" class="logo">
        <h1><b>PRESIDENCY UNIERSITY</b></h1>
        <div>
            <button class="btn btn-light rounded-pill" id="Account">Admin</button>
        </div>
    </header>
    <div class="container">
        <div class="table-container">
            <h2 class="mb-4"><b>Student Information</b></h2>
            <div class="btn-container">
                <!--  <a href="addEnrollment" class="btn btn-success">Enroll</a>-->
            </div>
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                    	<th>Enrollment ID</th>
                        <th>Student ID</th>
                        <th>Student Name</th>
                        <th>Course Code</th>
                        <th>Course Name</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="enrollment" items="${enrollments}">
                        <tr>
                        	<td>${enrollment.enrollmentId}</td>
                            <td>${enrollment.studentId}</td>
                            <td>${enrollment.studentName}</td>                            
                            <td>${enrollment.courseCode}</td>
                            <td>${enrollment.detailId}</td>
                            <td>
                                <a href="editenrollment?enrollmentId=${enrollment.enrollmentId}" class="btn btn-warning btn-sm">Edit</a>
                                <a href="deleteenrollment?enrollmentId=${enrollment.enrollmentId}" class="btn btn-danger btn-sm">Delete</a>
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
                       