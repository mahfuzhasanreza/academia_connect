<!-- used on progress -->

<?php
session_start();
if (isset($_SESSION["user"])) {
    header("Location: homepage.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="container">
        <?php
        if (isset($_POST["submit"])) {
            $username = $_POST["username"];
            $fullName = $_POST["fullname"];
            $email = $_POST["email"];
            $password = $_POST["password"];
            $passwordRepeat = $_POST["repeat_password"];
            $role = $_POST["role"];

            $passwordHash = password_hash($password, PASSWORD_DEFAULT);

            $errors = array();

            if (empty($username) or empty($fullName) or empty($email) or empty($password) or empty($passwordRepeat) or empty($role)) {
                array_push($errors, "All fields are required");
            }

            $usernameValidation = '/^[a-zA-Z0-9_]{5,20}$/';
            if (!preg_match($usernameValidation, $username)) {
                array_push($errors, "Username is not valid; Username should be 5-20 characters, alphanumeric with underscores allowed");
            }
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                array_push($errors, "Email is not valid");
            }
            if (strlen($password) < 8) {
                array_push($errors, "Password must be at least 8 charactes long");
            }
            if ($password !== $passwordRepeat) {
                array_push($errors, "Password does not match");
            }

            require_once "_dbconnect.php";
            $sql = "SELECT * FROM users WHERE email = '$email'";
            $result = mysqli_query($conn, $sql);
            $rowCount = mysqli_num_rows($result);
            if ($rowCount > 0) {
                array_push($errors, "Email already exists!");
            }
            $sql = "SELECT * FROM users WHERE username = '$username'";
            $result = mysqli_query($conn, $sql);
            $rowCount = mysqli_num_rows($result);
            if ($rowCount > 0) {
                array_push($errors, "Username already exists!");
            }

            if (count($errors) > 0) {
                foreach ($errors as $error) {
                    echo "<div class='alert alert-danger'>$error</div>";
                }
            } else {
                $sql = "INSERT INTO users (username, full_name, email, password, role) VALUES ( ?, ?, ?, ?, ? )";
                $stmt = mysqli_stmt_init($conn);
                $prepareStmt = mysqli_stmt_prepare($stmt, $sql);
                if ($prepareStmt) {
                    mysqli_stmt_bind_param($stmt, "sssss", $username, $fullName, $email, $passwordHash, $role);
                    mysqli_stmt_execute($stmt);
                    echo "<div class='alert alert-success'>You are registered successfully.</div>";
                } else {
                    die("Something went wrong");
                }
            }


        }
        ?>
        <form action="/academia_connect/internals/_signup.php" method="post">
            <div class="form-group">
                <input type="text" class="form-control" name="username" placeholder="Username">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" name="fullname" placeholder="Full name">
            </div>
            <div class="form-group">
                <input type="email" class="form-control" name="email" placeholder="Email address">
            </div>
            <p>What's your role?</p>
            <div class="regular">
                <input type="radio" name="role" id="rad1" value="student">
                <label for="rad1">Student</label> <br>
                <input type="radio" name="role" id="rad2" value="teacher">
                <label for="rad2">Teacher</label> <br>
                <input type="radio" name="role" id="rad3" value="club_manager">
                <label for="rad3">Club Manager</label> <br>
                <input type="radio" name="role" id="rad4" value="gym_manager">
                <label for="rad4">Gym Manager</label> <br>
                <input type="radio" name="role" id="rad5" value="shuttle_driver">
                <label for="rad5">Shuttle Driver</label>
                <br>
                <input type="radio" name="role" id="rad5" value="canteen_staff">
                <label for="rad5">Canteen Staff</label>
            </div>
            <br>
            <div class="form-group">
                <input type="password" class="form-control" name="password" placeholder="Password">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="repeat_password" placeholder="Confirm password">
            </div>
            <div class="form-btn">
                <input type="submit" class="btn btn-primary" value="Register" name="submit">
            </div>
        </form>
        <div>
            <div>
                <p>Already Registered? <a href="login.php">Login Here</a></p>
            </div>
        </div>
    </div>
</body>

</html>