<?php

include 'database.php';

session_start();

if (!isset($_SESSION["user"])) {
    header("Location: login.php");
    exit;
}

$sql = "SELECT * FROM counselling_requests";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {

    while ($row = mysqli_fetch_assoc($result)) {
        echo "<p><strong>Student:</strong> " . $row["student_name"] . "</p>";
        echo "<p><strong>Message:</strong> " . $row["message"] . "</p>";
        echo "<hr>";
    }
} else {

    echo "<p>No counselling requests found.</p>";
}

mysqli_close($conn);
?>
