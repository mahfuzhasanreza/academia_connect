<?php
session_start();

if (isset($_SESSION["user"])) {
    header("Location: homepage.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Design by foolishdeveloper.com -->
    <title>Login to AcademiaConnect</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <!--Stylesheet-->
    <style media="screen">
        *,
        *:before,
        *:after {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        body {
            background-color: #080710;

            /* will change #080710 */
        }

        .background {
            width: 430px;
            height: 520px;
            position: absolute;
            transform: translate(-50%, -50%);
            left: 50%;
            top: 50%;
        }

        .background .shape {
            height: 200px;
            width: 200px;
            position: absolute;
            border-radius: 50%;
        }

        .shape:first-child {
            background: linear-gradient(#1845ad,
                    #23a2f6);
            left: -80px;
            top: -80px;
        }

        .shape:last-child {
            background: linear-gradient(to right,
                    #ff512f,
                    #f09819);
            right: -30px;
            bottom: -80px;
        }

        form {
            height: 520px;
            width: 400px;
            background-color: rgba(255, 255, 255, 0.13);
            position: absolute;
            transform: translate(-50%, -50%);
            top: 50%;
            left: 50%;
            border-radius: 10px;
            backdrop-filter: blur(10px);
            border: 2px solid rgba(255, 255, 255, 0.1);
            box-shadow: 0 0 40px rgba(8, 7, 16, 0.6);
            padding: 50px 35px;
        }

        form * {
            font-family: 'Poppins', sans-serif;
            color: #ffffff;
            letter-spacing: 0.5px;
            outline: none;
            border: none;
        }

        form h3 {
            font-size: 32px;
            font-weight: 500;
            line-height: 42px;
            text-align: center;
        }

        label {
            display: block;
            margin-top: 30px;
            font-size: 16px;
            font-weight: 500;
        }

        input {
            display: block;
            height: 50px;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.07);
            border-radius: 3px;
            padding: 0 10px;
            margin-top: 8px;
            font-size: 14px;
            font-weight: 300;
        }

        ::placeholder {
            color: #e5e5e5;
        }

        button {
            margin-top: 50px;
            width: 100%;
            background-color: #ffffff;
            color: #080710;
            padding: 15px 0;
            font-size: 18px;
            font-weight: 600;
            border-radius: 5px;
            cursor: pointer;
        }

        .social {
            margin-top: 30px;
            display: flex;
        }

        .social div {
            background: red;
            width: 150px;
            border-radius: 3px;
            padding: 5px 10px 10px 5px;
            background-color: rgba(255, 255, 255, 0.27);
            color: #eaf0fb;
            text-align: center;
        }

        .social div:hover {
            background-color: rgba(255, 255, 255, 0.47);
        }

        .social .fb {
            margin-left: 25px;
        }

        .social i {
            margin-right: 4px;
        }
    </style>
</head>

<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>




    </div>

    <form action="login.php" method="post">
        <h3>Login to AConnect</h3>

        <!-- <div class="form-group">
                <input type="text" placeholder="Email or username" name="username_or_email" class="form-control">
            </div> -->
        <label for="username_or_email">Email or username</label>
        <input type="text" placeholder="Email or username" name="username_or_email" class="form-control">
        <!-- <input type="text" placeholder="Username or Email" id="username_or_email"> -->


        <!-- <div class="form-group">
                <input type="password" placeholder="Password" name="password" class="form-control">
            </div> -->

        <label for="password">Password</label>
        <input type="password" placeholder="Password" name="password" class="form-control">

        <!-- 
        <label for="password">Password</label>
        <input type="password" placeholder="Password" id="password"> -->


        <button input type="submit" value="Login" name="login" class="btn btn-primary">Log In</button>
        <!-- <div class="form-btn">
                <input type="submit" value="Login" name="login" class="btn btn-primary">
        </div> -->
        <div class="social">
            <div class="go"><i class="fab fa-google"></i> Google</div>
            <div class="fb"><i class="fab fa-facebook"></i> Facebook</div>
        </div>
    </form>

    <?php
        if (isset($_POST["login"])) { 
            $username_or_email = $_POST["username_or_email"];
            $_password = $_POST["password"];

            require_once "_dbconnect.php";
            $sql = "SELECT * FROM users WHERE email = ? OR username = ?";
            $stmt = mysqli_prepare($conn, $sql);
            mysqli_stmt_bind_param($stmt, "ss", $username_or_email, $username_or_email);
            mysqli_stmt_execute($stmt);
            $result = mysqli_stmt_get_result($stmt);
            $user = mysqli_fetch_array($result, MYSQLI_ASSOC);

            if ($user) {
                if (password_verify($_password, $user["password"])) {
               
                   echo"hdfdfdfdfdfdfdfdfdfdfdfdfdf";
       
                    $_SESSION["user"] = "true";
                    $_SESSION["username"] = $user["username"];

                  
             
                    
                    die();
                } else {
                    
                    echo '<!DOCTYPE html>
                    <html lang="en">
                    <head>
                        <meta charset="UTF-8">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <title></title>
                    </head>
                    <body>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <strong> Sorry, </strong> invalid username or password
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                    </body>
                    </html>';
                    // echo "<div class='alert alert-danger'>Password does not match</div>";
                }
            } else {
                if($username_or_email){
                    echo '<!DOCTYPE html>
                    <html lang="en">
                    <head>
                        <meta charset="UTF-8">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <title></title>
                    </head>
                    <body>
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <strong> Sorry, </strong> invalid username or password
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                    </body>
                    </html>';
                }

               

            // echo "<div class='alert alert-danger'>Email/Username not found</div>";
            }
        }
        ?>
</body>

</html>