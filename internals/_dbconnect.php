<?php
// Script to connect to the database
$servername = "localhost";
$username = "root";
$password = "";
$database = "academia_connect";

$conn = mysqli_connect($servername, $username, $password, $database);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

echo "Connected successfully";

?>