<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shuttle Driver Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #008080;
            font-family: Arial, sans-serif;
        }

        .container {
            margin-top: 30px;
    background: #619b9e;
    width: 450px;
    height: 500px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    margin: auto;
    padding: 30px 0px 30px 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .welcome-msg {
            background-color: #6c757d;
            color: #fff;
            padding: 20px;
            border-radius: 10px;
            width: 200%;
        }

        .btn-container {
            margin-top: 30px;
        }

        .btn-container .btn {
            margin-bottom: 10px;
            width: 200%;
            position: center;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="welcome-msg">
                    <h2>Welcome, Shuttle Driver!</h2>
                    <p>This is your shuttle driver dashboard.</p>
                </div>
            </div>
        </div>
        <div class="row btn-container">
            <div class="col-md-6">
                <a href="addbus.php" class="btn btn-primary">Add new shuttle</a>
                <a href="shuttleactive.php" class="btn btn-primary">Update Shuttle Schedule</a>
                <a href="modify_route.php" class="btn btn-primary">Modify Route</a>
                <button onclick="location.href='logout.php'" class="btn btn-danger">Logout</button>
            </div>
        </div>
    </div>
</body>

</html>
