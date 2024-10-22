<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit student</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
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
        <img src="https://www.mbacollegesbangalore.in/wp-content/uploads/2017/10/Presidency-University.png" class="logo">
        <h1>Presidency University</h1>
        <div>
            <button class="btn btn-light rounded-pill" id="Account">Admin</button>
        </div>
    </header>
    <div class="container">
        <h2 class="text-center mb-4">Edit Student</h2>
        <div class="form-container">
            <form action="editStudent" method="post">
                <input type="hidden" name="studentId" value="${student.studentId}">
                <div class="form-group">
                    <label for="studentName">student Name:</label>
                    <input type="text" id="studentName" name="studentName" class="form-control" value="${student.studentName}">
                <label for="email">Email :</label>
                    <input type="email" id="email" name="email" class="form-control" value="${student.email}">
                
                </div>
                <input type="submit" value="Update" class="btn btn-primary">
            </form>
        </div>
    </div>
</body>
</html>