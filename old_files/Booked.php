<?php
    include "database.php";
    session_start();
    $username=$_SESSION['username'];
    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $sql = "update shuttle_schedule set availabiity='1',driver_id='$username',arrival_time=now() where shuttle_number_plate='$id'";
        $conn->query($sql);
    }
    header('location:shuttleactive.php');
    exit;
?>