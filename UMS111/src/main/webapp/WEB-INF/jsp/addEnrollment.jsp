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
      background-color: #DEB887;
      color: white;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    input[type="submit"]:hover {
      background-color: #DEB887;
    }
    a {
      display: block;
      text-align: center;
      margin-top: 10px;
      color: #DEB887;
      text-decoration: none;
    }
    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <header>
    <img src="https://th.bing.com/th/id/OIP.n6mWCKNrskV7tXxctffzNQHaHF?rs=1&pid=ImgDetMain" class="logo">
    <h1><B>PRESIDENCY UNIVERSITY</B></h1>
    <div>
      <button class="btn btn-light rounded-pill" id="Account"></button>
    </div>
  </header>
    <div class="container">
        <h2>Enroll Student</h2>
        <form action="addEnrollment" method="post">
            <div class="form-group">
                <label for="studentId">Student ID:</label>
                <input type="number" class="form-control" id="studentId" name="studentId" required>
            </div>
            <div class="form-group">
                <label for="student">Student Name:</label>
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
        
    </div>
      
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
