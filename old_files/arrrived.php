<?php
    include "database.php";

    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $sql = "update shuttle_schedule set availabiity='0',driver_id='',destination_time=now() where shuttle_number_plate='$id'";
        $con->query($sql);
    }
    header('location:shuttleactive.php');
    exit;
?>