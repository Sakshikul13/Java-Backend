<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Homepage</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: rgba(240, 240, 240, 0.9);
      background-size: cover;
      background-repeat: no-repeat;
      background-image: url('https://presidencyuniversity.in/wp-content/uploads/2022/03/DSC_2991.jpg');
      position: static;
    }
    body::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(240, 240, 240, 0.9); /* Adjust transparency here */
      z-index: -1;
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
    .sections-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-around;
      align-items: center;
      padding: 20px;
      position: relative;
      z-index: 1;
    }
    .section {
      width: 100%;
      max-width: 500px;
      padding: 40px;
      text-align: center;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      color: #333;
      background-color: #7FFFD4;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
      transition: transform 0.3s, box-shadow 0.3s;
      position: static;
      z-index: 1;
    }
    .section:hover {
      transform: translateY(-5px);
      box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
    }
    h2 {
      text-align: center;
      margin-bottom: 20px;
      font-size: 24px;
      color: #333;
      position: relative;
      z-index: 1;
    }
    p {
      font-size: 16px;
      margin-bottom: 10px;
      position: relative;
      z-index: 1;
    }
    .button {
      height: 40px;
      display: inline-block;
      padding: 7px 15px;
      background-color: #DC143C;
      color: #fff;
      text-decoration: none;
      border-radius: 20px;
      transition: background-color 0.3s, transform 0.3s;
      position: relative;
      z-index: 1;
    }
    .button:hover {
      background-color: #00FFFF;
      transform: scale(1.05);
    }
    .button:active {
      background-color: #9932CC;
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
  <div>
    <h2><b>Welcome to Presidency University</b></h2>
    <h2>Student Information</h2>
    <div class="sections-container">
    <section id="manage-students" class="section">
        <h2 class="head">Manage students Information</h2>
        <a href="addStudent" class="button btn-sm">Student</a>
        <br>
        <p>Check Student Information</p>
      </section>
      <section id="manage-courses" class="section">
        <h2 class="head">Manage Courses</h2>
        <a href="addCourse" class="button btn-sm">Manage Courses</a>
        <br>
        <p>Add, edit, or delete courses from the curriculum.</p>
      </section>

      <!--  <section id="manage-course-details" class="section">
        <h2 class="head">Manage Course Details</h2>
        <a href="addCourseDetailsForm" class="button btn-sm">Manage Course Details</a>
        <br>
        <p>Update and maintain course descriptions and details.</p>
      </section>-->
     
       <section id="manage-enrollments" class="section">
        <h2 class="head">Manage Enrollments</h2>
        <a href="addEnrollment" class="button btn-sm">Manage Enrollments</a>
        <br>
        <p>Add the enrollments</p>
      </section>
       <div class=section>
      <a href="enrollments" class="button ">Check Student Information</a>
  </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
