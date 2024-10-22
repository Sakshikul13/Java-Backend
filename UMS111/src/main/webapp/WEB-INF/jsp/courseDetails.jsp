<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
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
            margin-bottom: 20px;
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
        <div class="text-center">
            <h1 class="pt-3">Course Details</h1>
        </div>
        <div class="mb-3">
            <!-- Add a link to the addCourseDetailsForm -->
            <a href="addCourseDetailsForm" class="btn btn-primary">Add Course Details</a>
        </div>
        <table class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>Detail ID</th>
                    <th>Course Code</th>
                    <th>Instructor</th>
                    <th>Credit</th>
                    <th>Type</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterate through the list of course details -->
                <c:forEach var="courseDetails" items="${list}">
                    <tr>
                        <td>${courseDetails.detailId}</td>
                        <td>${courseDetails.courseCode}</td>
                        <td>${courseDetails.instructor}</td>
                        <td>${courseDetails.credit}</td>
                        <td>${courseDetails.type}</td>
                        <td>
                            <a href="editCourseDetails?detailId=${courseDetails.detailId}" class="btn btn-warning btn-sm">Edit</a>
							<a href="deleteCourseDetails?detailId=${courseDetails.detailId}" class="btn btn-danger btn-sm">Delete</a>

                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
</body>
</html>
