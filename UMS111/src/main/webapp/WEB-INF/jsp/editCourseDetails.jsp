<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Course Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #DEB887;
      background-size: cover;
      background-repeat: no-repeat;
      background-image: url('https://www.dialeducation.com/assets/images/gallery/gallery_1577527692.jpeg'); /* Add your background image URL here */
    }
    .logo {
      max-height: 50px;
    }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .text-center {
            text-align: center;
        }
        h1 {
            padding-top: 30px;
            margin-bottom: 30px;
        }
        .form-label {
            font-weight: bold;
        }
        .btn-primary {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <header>
        <nav class="navbar navbar-dark bg-primary">
            <div class="container-fluid">
                <span class="navbar-brand mb-0 h1">Presidency Universitys</span>
                <button class="btn btn-light rounded-pill" id="Account">Admin</button>
            </div>
        </nav>
    </header>
    <div class="container">
        <div class="text-center">
            <h1>Edit Course Details</h1>
        </div>
        <form:form method="post" action="editCourseDetails" modelAttribute="courseDetails">
            <div class="mb-3">
                <label for="detailId" class="form-label">Detail ID</label>
                <form:input path="detailId" type="hidden" class="form-control" id="detailId" />
            </div>
            <div class="mb-3">
                <label for="courseCode" class="form-label">Course Code</label>
                <form:input path="courseCode" type="hidden" class="form-control" id="courseCode"/>
            </div>
            <div class="mb-3">
                <label for="instructor" class="form-label">Instructor</label>
                <form:input path="instructor" type="text" class="form-control" id="instructor" />
            </div>
            <div class="mb-3">
                <label for="credit" class="form-label">Credit</label>
                <form:input path="credit" type="number" class="form-control" id="credit" />
            </div>
            <div class="mb-3">
                <label for="type" class="form-label">Type</label>
                <form:input path="type" type="text" class="form-control" id="type"/>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form:form>
    </div>
</body>
</html>
