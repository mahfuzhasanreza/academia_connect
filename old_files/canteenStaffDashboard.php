<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Canteen Staff Dashboard</title>
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
        }

        .btn-container {
            margin-top: 20px;
        }

        .btn-container .btn {
            margin-bottom: 10px;
            width: 100%;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="welcome-msg">
                    <h2>Welcome, Canteen Staff!</h2>
                    <p>This is your canteen staff dashboard.</p>
                </div>
            </div>
        </div>
        <div class="row btn-container">
            <div class="col-md-6">
                <a href="update_menu.php" class="btn btn-primary">Update Menu</a>
                <a href="view_orders.php" class="btn btn-primary">View Orders</a>
                <br>
                <button onclick="location.href='logout.php'" class="btn btn-danger">Logout</button>
            </div>
        </div>
    </div>
</body>

</html>
