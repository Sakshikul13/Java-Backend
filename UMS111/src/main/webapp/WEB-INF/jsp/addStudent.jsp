<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add student</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
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
        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
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
        label {
            font-weight: bold;
        }
        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #DEB887;
            color: black;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #00FFFF;
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
            <button class="btn btn-light rounded-pill" id="Account">Admin</button>
        </div>
    </header>
    <div class="container">
        <h2 class="text-center mb-4">Add student</h2>
        <div class="form-container">
            <form action="addStudent" method="post">
            <label for="studentName">Student ID:</label>
                <input type="text" name="studentId" class="form-control" value="${student.studentId}">
                <div class="form-group">
                    <label for="studentName">Student Name:</label>
                    <input type="text" id="studentName" name="studentName" class="form-control" value="${student.studentName}">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" class="form-control" value="${student.email}">
                </div>
                <input type="submit" value="Update" class="btn btn-primary">
            </form>
        </div>
    </div>
      <a href="students">Back to Student List</a>
</body>
</html>