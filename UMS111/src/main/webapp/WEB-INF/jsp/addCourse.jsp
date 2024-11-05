<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Course</title>
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
    }.logo {
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
    .form-container {
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
      background-color: #00FFFF;;
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
  <div class="form-container">
    <h2>Add New Course</h2>
    <form action="addCourse" method="post">
        <table>
            <tr>
                <td>Course Code:</td>
                <td><input type="text" name="courseCode" /></td>
            </tr>
            <tr>
                <td>Course Name:</td>
                <td><input type="text" name="courseName" /></td>
            </tr>
            <tr>
            <tr>
                <td colspan="2"><input type="submit" value="Add Course" /></td>
            </tr>
        </table>
    </form>
    <button><a href="courses">Back to Course List</a></button>
  </div>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>