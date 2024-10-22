<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Course Details</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f0f0f0;
      background-size: cover;
      background-repeat: no-repeat;
      background-image: url('https://www.dialeducation.com/assets/images/gallery/gallery_1577527692.jpeg'); /* Add your background image URL here */
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
    }
    .logo {
      max-height: 50px;
    }
    .container {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      min-height: calc(100vh - 70px);
      padding: 20px;
    }
    form {
      background-color: #fff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 500px;
    }
    table {
      width: 100%;
      border-collapse: collapse;
    }
    td {
      padding: 10px;
      text-align: left;
    }
    input[type="text"], input[type="number"] {
      width: calc(100% - 20px);
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    input[type="submit"] {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 5px;
      background-color: #007BFF;
      color: white;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    input[type="submit"]:hover {
      background-color: #0056b3;
    }
    a {
      display: block;
      text-align: center;
      margin-top: 10px;
      color: #007BFF;
      text-decoration: none;
    }
    a:hover {
      text-decoration: underline;
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
        <h2>Enroll Student</h2>
        <form action="editenrollment" method="post">
        	<div class="form-group">
                <label for="enrollmentId">Enrollment ID:</label>
                <input type="number" class="form-control" id="enrollmentId" name="enrollmentId" value="${course.courseCode}" required>
            </div>
        
            <div class="form-group">
                <label for="studentId">Student ID:</label>
                <input type="number" class="form-control" id="studentId" name="studentId" required>
            </div>
            <div class="form-group">
                <label for="studentName">Student Name :</label>
                <input type="text" class="form-control" id="studentName" name="studentName" required>
            </div>
            <div class="form-group">
                <label for="courseCode">Course Code:</label>
                <input type="text" class="form-control" id="courseCode" name="courseCode" required>
            </div>
            <div class="form-group">
                <label for="detailId">Course Name:</label>
                <input type="text" class="form-control" id="detailId" name="detailId" required>
            </div>
            <button type="submit" class="btn btn-success">Enroll</button>
        </form>
        <button><a  href="enrollments">Back to Enrollment List</a></button>
    </div>
      
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
