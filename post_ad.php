<?php

$con = mysqli_connect("localhost", "root", '', "academia_connect");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $title = mysqli_real_escape_string($con, $_POST['title']);
    $category = mysqli_real_escape_string($con, $_POST['category']);
    $description = mysqli_real_escape_string($con, $_POST['description']);
    $price = mysqli_real_escape_string($con, $_POST['price']);
    $studentId = mysqli_real_escape_string($con, $_POST['student_id']);
    $buySell = mysqli_real_escape_string($con, $_POST['buy_sell']);

    $insertAdQuery = "INSERT INTO ad (student_id, title, description, price, post_time)
    VALUES ('$studentId', '$title', '$description', '$price', NOW())";
    mysqli_query($con, $insertAdQuery);

    $adId = mysqli_insert_id($con);

    $insertCategoryQuery = "INSERT INTO category (ad_id, category_name)
    VALUES ('$adId', '$category')";
    mysqli_query($con, $insertCategoryQuery);

    $insertBuySellQuery = "INSERT INTO buy_sell (ad_id, buy_or_sell)
    VALUES ('$adId', '$buySell')";
    mysqli_query($con, $insertBuySellQuery);

    header("Location: marketplace.php");
    exit();
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post Ad</title>
    <link rel="stylesheet" type="text/css" href="Mstyle.css">
</head>
<body>
    <div class="container">
        <h1>Post Your Ad</h1>
        <form action="#" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="title">Title:</label>
                <input type="text" id="title" name="title" required>
            </div>
            <div class="form-group">
                <label for="category">Category:</label>
                <select id="category" name="category" required>
                    <option value="">Select Category</option>
                    <option value="electronics">Electronics</option>
                    <option value="books">Books</option>
                    <option value="clothing">Clothing</option>
                    <option value="other">Other</option>
                </select>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea id="description" name="description" rows="5" required></textarea>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" id="price" name="price" required>
            </div>
            <div class="form-group">
                <label for="student_id">Student ID:</label>
                <input type="text" id="student_id" name="student_id" required>
            </div>
            <div class="form-group">
                <label for="buy_sell">Buy/Sell:</label>
                <select id="buy_sell" name="buy_sell" required>
                    <option value="">Select</option>
                    <option value="buy">Want to buy</option>
                    <option value="sell">For sale</option>
                </select>
            </div>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
