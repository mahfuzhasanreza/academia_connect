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
  <title>Teacher Availability</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
</head>

<body>

  <div class="container">
    <br> <br>
    <h1>Teacher Availability</h1>
    <br><br>

    <table class="table">
      <thead>
        <tr>
          <th scope="col">Teacher Name</th>
          <th scope="col">Available Date & Time</th>
          <th scope="col">Request for Counceling</th>

        </tr>
      </thead>

      <tbody>

        <?php
        $username = $_SESSION['username'];
        $sql = "Select * from `counseling_availability`";
        $result = mysqli_query($conn, $sql);
        if ($result) {

          while ($row = mysqli_fetch_assoc($result)) {
            $id = $row['id'];
            $teacher_name = $row['teacher_name'];
            $available_time = $row['available_time'];

            echo '<tr>
            <td>' . $teacher_name . '</td>
            <td>' . $available_time . '</td>

            <td>

            <button class="btn btn-primary"><a href="complete.php?
            completeid=' . $id . '" class="text-light">Request for Counceling</a></button>
    </td>
          </tr>';

          }
        }
        ?>


      </tbody>
    </table>
    <br>
    <br>

  </div>

</body>

</html>