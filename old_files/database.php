<?php

$hostName = "localhost";
$dbUser = "root";
$dbPassword = "";
$dbName = "academia_connect";
$conn = mysqli_connect($hostName, $dbUser, $dbPassword, $dbName);
if (!$conn) {
    die(mysqli_error($conn));
}