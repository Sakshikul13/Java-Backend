<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>student List</title>
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
            background-color: #DEB887;
            border-color: #DEB887;
        }
        .btn-primary:hover {
            background-color: #DEB887;
            border-color: #DEB887;
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
        <img src="https://th.bing.com/th/id/OIP.n6mWCKNrskV7tXxctffzNQHaHF?rs=1&pid=ImgDetMain" alt="Company Logo" class="logo">
        <h1>Presidency University</h1>
        <div>
            <button class="btn btn-light rounded-pill" id="Account">Admin</button>
        </div>
    </header>
    <div class="container">
        <div class="table-container">
            <h2 class="mb-4">student List</h2>
            <div class="btn-container">
                <a href="addStudent" class="btn btn-primary">Add student</a>
            </div>
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>student ID</th>
                        <th>student Name</th>
                        <th>Email</th>
                        <th>Actions</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="student" items="${students}">
                        <tr>
                            <td>${student.studentId}</td>
                            <td>${student.studentName}</td>
                            <td>${student.email}</td>
                            <td>
                                <a href="editstudent?studentId=${student.studentId}" class="btn btn-warning btn-sm">Edit</a>
                                <a href="deletestudent?studentId=${student.studentId}" class="btn btn-danger btn-sm">Delete</a>
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