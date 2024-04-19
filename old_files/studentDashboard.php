<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #linear-gradient(to bottom, #232526, #414345);
            font-family: Arial, sans-serif;
        }

        .container {
            margin-top: 50px;
            max-width: 1170px;
            width: 100%;
        }

        .welcome-msg {
            background-color: #007bff;
            color: #fff;
            padding: 20px;
            border-radius: 10px;
        }

        .btn-container {
            margin-top: 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .btn-container .btn {
            margin-bottom: 10px;
            border-radius: 20px;
            width: 48%; /* Adjust width for two buttons in a row */
            height: 100px;
            font-size: 18px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Button gradients */
        .btn-container .btn:nth-child(1) {
            background: linear-gradient(to right, #ff512f, #dd2476);
        }

        .btn-container .btn:nth-child(2) {
            background: linear-gradient(to right, #2980b9, #2c3e50);
        }

        .btn-container .btn:nth-child(3) {
            background: linear-gradient(to right, #00c6ff, #0072ff);
        }

        .btn-container .btn:nth-child(4) {
            background: linear-gradient(to right, #ff758c, #ff7eb3);
        }

        .btn-container .btn:nth-child(5) {
            background: linear-gradient(to right, #1d976c, #93f9b9);
        }

        .btn-container .btn:nth-child(6) {
            background: linear-gradient(to right, #ff9966, #ff5e62);
        }

        /* Logout button */
        .logout-btn {
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
                    <h2>Welcome, <?php echo isset($student['full_name']) ? $student['full_name'] : 'Student'; ?>!</h2>
                    <p>This is your student dashboard.</p>
                </div>
            </div>
        </div>
        <div class="row btn-container">
            <a href="teacher_availability.php" class="btn btn-primary">View Teacher Availability</a>
            <a href="join_club.php" class="btn btn-primary">Join Club</a>
            <a href="marketplace.php" class="btn btn-primary">Marketplace</a>
            <a href="gym_membership.php" class="btn btn-primary">Gym Membership</a>
            <a href="canteen_menu.php" class="btn btn-primary">View Canteen Menu</a>
            <a href="shuttle_bus_schedule.php" class="btn btn-primary">Shuttle Bus Schedule</a>
        </div>
        <form action="logout.php" method="post">
            <button type="submit" class="logout-btn">Logout</button>
        </form>
    </div>
</body>

</html>
