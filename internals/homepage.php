<?php
include 'database.php';

session_start();

if (!isset($_SESSION["user"])) {
  header("Location: login.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Task Master</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
</head>

<body>

  <div class="container">
    <br> <br>
    <h1>My ToDo List</h1>
      <tbody>

        <?php
        $username = $_SESSION['username'];
        $sql = "Select * from `users` where username = '$username'";
        $result = mysqli_query($conn, $sql);
        if ($result) {

          while ($row = mysqli_fetch_assoc($result)) {
            $role = $row['role'];
            
            if($role=='student'){
                header("Location: studentDashboard.php");
            } else if($role== 'teacher'){
                header("Location: teacherDashboard.php");
            } else if($role== 'club_manager'){
                header("Location: clubManagerDashboard.php");
            } else if($role== 'gym_manager'){
                header("Location: gymManagerDashboard.php");
            } else if($role== 'shuttle_driver'){
                header("Location: shuttleDriverDashboard.php");
            }
            else if($role== 'canteen_staff'){
                header("Location: canteenStaffDashboard.php");
            }
            
          }
        }
        ?>


      </tbody>
    <br>
    <br>
    <a href="logout.php" class="btn btn-warning">Logout</a>

  </div>

</body>

</html>