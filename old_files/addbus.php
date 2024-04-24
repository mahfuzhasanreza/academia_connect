<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $shuttle_name = $_POST["shuttle_name"];
    $shuttle_details = $_POST["shuttle_details"];
    $price = $_POST["price"];
    $number_plate = $_POST["number_plate"];

    include "database.php";


// session_start();
// $username = $_SESSION['username'];
    // Insert data into MySQL database
    $sql = "INSERT INTO `shuttle_schedule` (`shuttle_number_plate`, `shuttle_details`, `price`, `shuttle_name`, `availability`, `driver_id`, `arrival_time`, `destination_time`) VALUES ('$number_plate', '$shuttle_details', '$price', '$shuttle_name', '0', NULL, NULL, NULL);";

$result=mysqli_query($conn,$sql);
if ($result){
    $SUCESS=1;
}
else{
    die(mysqli_error($conn)); 
}
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add shuttle Form</title>
    <!-- <link rel="stylesheet" href="styles.css"> -->
    <style>

        body {
            background: #008080;
        }
        .container {
    background: #619b9e;
    width: 450px;
    height: auto; 
    position: absolute;
    top: 60%;
    left: 50%;
    transform: translate(-50%, -50%);
    margin: auto;
    padding: 30px 50px 20px 50px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

h2 {
    font-size: 32px;
    font-weight: 500;
    line-height: 42px;
    text-align: center;
    color: #fff;
}

form {
    border: none;
    padding: 20px;
}

label {
    display: block;
    margin-bottom: 10px;
    color: #fff;
}

input[type="text"],
textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border-radius: 5px;
    border: 1px solid #ccc;
    background-color: #f3f3f3;
}

button {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}





/* ---- navbar css start ------ */

/* Existing navbar styles */
.navbar {
    background-color: #333;
    overflow: hidden;
    padding: 10px 20px;
    position: relative; 
}

.navbar-logo {
    float: left;
}

.navbar-logo img {
    height: 30px;
}


.navbar-options {
    position: absolute;
    top: 50%;
    right: 20px;
    transform: translateY(-50%);
    list-style: none;
    padding: 0;
    margin: 0;
}

.navbar-option {
    color: #fff;
    text-decoration: none;
    padding: 8px 15px;
}

.navbar-option:hover {
    background-color: #555; 
    transition: background-color 0.4s ease;
}


/* ---------navbar css ends------ */
        .banner {
            position: relative;
            height: 300px;
            background: url('../img/market.jpg') center/cover;
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 50%;
            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5));
            color: #fff;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 20px;
            box-sizing: border-box;
        }

    </style>
</head>
<body>
    <!-- ----------- navbar part starts -------- -->
<div class="navbar">
    <div class="navbar-logo">
        <img src="../img/uiu_logo.png" alt="Logo">
    </div>
    <div class="navbar-options" id="navbarOptions">
        <a href="shuttleDriverDashboard.php" class="navbar-option">Home</a>
        <a href="post_ad.php" class="navbar-option">Add new shedule</a>
    </div>
</div>


<!-- ------ navbar part ends here ---------- -->


<div class="banner">
    <div class="overlay">
        <h1>Welcome to Our Shuttle service</h1>
        <p>Find avaiable shuttle</p>
    </div>
</div>
<!-- ---------- banner part ends --------- -->


    <div class="container">
        <h2>Add a New Bus </h2>
        <form action="addbus.php" method="POST" enctype="multipart/form-data">
            <label for="shuttle_name">Shuttle Name:</label>
            <input type="text" id="shuttle_name" name="shuttle_name" required>

            <label for="shuttle_details">Shuttle Details:</label>
            <textarea id="shuttle_details" name="shuttle_details" required></textarea>

            <label for="price">Price:</label>
            <input type="text" id="price" name="price" required>

            <label for="number_plate">Number plate:</label>
            <input type="text" id="number_plate" name="number_plate" required>

            <button type="submit">Submit</button>

            
        </form>
    </div>


</body>
</html>
