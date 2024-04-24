<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Available Shuttle</title>
    <style>
        body {
            background: #008080;
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

        @import url("https://pro.fontawesome.com/releases/v6.0.0-beta1/css/all.css");
@import url("https://fonts.googleapis.com/css2?family=Oxygen:wght@300;400;700&display=swap");

.shuttle-list {
            list-style: none;
            padding: 10;
            height: auto; 
    position: absolute;
    top: 20%;
    left: 25%;
            margin: 10;
            width: 500px;
        }
.shuttle-list2 {
            list-style: none;
            padding: 10;
            height: auto; 
    position: absolute;
    top: 20%;
    left: 45%;
            margin: 10;
            width: 500px;
        }
        
        .shuttle-item {
            background-color: #fff;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 10, 0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .shuttle-item .plate {
            font-weight: bold;
            font-size: 18px;
        }
        
        .shuttle-item .btn {
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }
        
        .shuttle-item .btn-primary {
            background-color: #007bff;
            color: #fff;
        }
        
        .shuttle-item .btn-secondary {
            background-color: #28a745;
            color: #fff;
        }
        
        .shuttle-item .btn:hover {
            opacity: 0.8;
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

<?php
    include "database.php";
    session_start();
    $username = $_SESSION['username'];
    $query = "SELECT * FROM shuttle_schedule";
    $result = mysqli_query($conn, $query);
    if (!$result){
        echo "No task";
    }
    while($row=$result->fetch_assoc()){
        $check=$row['availability'];
        if ($check == 0) {
            echo "
            <ul class='shuttle-list'>
                <li class='shuttle-item'>
                    <span class='plate'>$row[shuttle_number_plate]</span>
                    <button class='btn btn-primary' onclick=\"location.href='Booked.php?id=$row[shuttle_number_plate]'\">BOOK</button>
                </li>
            </ul>
            ";
        }
        
        else if ($row['availability'] == 1 && $row['driver_id'] == $username) {
            echo "
            <ul class='shuttle-list2'>
                <li class='shuttle-item'>
                    <span class='plate'>$row[shuttle_number_plate]</span>
                    <button class='btn btn-secondary' onclick=\"location.href='arrived.php?id=$row[shuttle_number_plate]'\">Destination</button>
                </li>
            </ul>
            ";
        }
        
}
?>




</body>
</html>