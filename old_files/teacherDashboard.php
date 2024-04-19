<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .container {
            margin-top: 50px;
        }

        .welcome-msg {
            background-color: #6c757d;
            color: #fff;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }

        .btn-container {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .btn-container .btn {
            margin-bottom: 10px;
            border-radius: 20px;
            width: 300px;
            font-size: 18px;
            text-align: center;
        }

        /* Button gradients */
        .btn-container .btn:nth-child(1) {
            background: linear-gradient(to right, #ff512f, #dd2476);
            width: 100%;
        }

        .btn-container .btn:nth-child(2) {
            background: linear-gradient(to right, #2980b9, #2c3e50);
            width: 100%;
        }

        .btn-container .btn:nth-child(3) {
            background: linear-gradient(to right, #00c6ff, #0072ff);
            width: 100%;
        }

        /* Logout button */
        .logout-btn {
            margin-top: 20px;
            width: 150px;
            height: 40px;
            font-size: 16px;
            border-radius: 5px;
            background-color: #dc3545;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="welcome-msg">
                    <h2>Welcome, Teacher!</h2>
                    <p>This is your teacher dashboard.</p>
                </div>
            </div>
        </div>
        <div class="row btn-container">
            <div class="col-md-6">
                <a href="counselling_requests.php" class="btn btn-primary">View Counselling Requests</a>
                <a href="update_availability.php" class="btn btn-primary">Update Availability</a>
                <button onclick="location.href='logout.php'" class="btn btn-danger">Logout</button>
            </div>
        </div>
    </div>
</body>

</html>
