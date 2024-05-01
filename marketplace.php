<?php
$con = mysqli_connect("localhost", "root", '', "academia_connect");

if (!$con) {
    die("connection problem");
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Marketplace</title>
    <link rel="stylesheet" type="text/css" href="Mstyle.css">
</head>

<body>

    <!-- ----------- navbar part starts -------- -->
    <div class="navbar">
        <div class="navbar-logo">
            <img src="../img/uiu_logo.png" alt="Logo">
        </div>
        <div class="navbar-options" id="navbarOptions">
            <a href="../student/st_profile.php" class="navbar-option">Home</a>
            <a href="post_ad.php" class="navbar-option">Post Ad</a>
            <a href="#" class="navbar-option">My Ads</a>
        </div>
    </div>


    <!-- ------ banner part starts here ---------- -->

    <div class="banner">
        <div class="overlay">
            <h1>Welcome to Our Marketplace</h1>
            <p>Find amazing deals on a variety of products!</p>
        </div>
    </div>
    <!-- ---------- banner part ends --------- -->
    <section>
        <!-- ----- filtering ----- -->

        <div class="filter-section">
            <!-- <div class="filter-options">
                <label for="sort-by">Sort by:</label>
                <select id="sort-by" name="">
                    <option value="date-asc">Date (Ascending)</option>
                    <option value="date-desc">Date (Descending)</option>
                    <option value="price-asc">Price (Low to High)</option>
                    <option value="price-desc">Price (High to Low)</option>
                </select>
            </div> -->
            <button id="advanced-filter-btn">Advanced Filtering</button>
            <form method="POST">
                <div class="search-box">
                    <input type="text" id="search" name="search" placeholder="Search...">
                    <button type="submit" id="search-btn" name="search-btn">Search</button>
                </div>
            </form>
        </div>

        <div class="advanced-filter-form" id="advanced-filter-form" style="display: none;">
            <form>
                <label for="price-range">Price Range:</label>
                <input type="number" id="price-range-min" placeholder="Min">
                <span>-</span>
                <input type="number" id="price-range-max" placeholder="Max">
                <br>
                <label for="product-name">Product Name:</label>
                <input type="text" id="product-name" placeholder="Enter product name">
                <br>
                <label for="trimester-no">Trimester No:</label>
                <input type="number" id="trimester-no" placeholder="Enter trimester number">
                <br>
                <label for="category">Category:</label>
                <select id="category">
                    <option value="electronics">Electronics</option>
                    <option value="book">Book</option>
                </select>
                <br>
                <label for="buy-sell">Buy/Sell:</label>
                <select id="buy-sell">
                    <option value="buy">Buy</option>
                    <option value="sell">Sell</option>
                </select>
                <br>
                <label for="availability">Availability:</label>
                <select id="availability">
                    <option value="available">Available</option>
                    <option value="not-available">Not Available</option>
                </select>
                <br>
                <button type="submit">Apply Filters</button>
            </form>
        </div>

        <!-- -------filtering ends here -------- -->

        <!-- ------products part ----- -->
        <div class="products">
            <?php
            $prods = "
                SELECT 
                    ad.ad_id, 
                    ad.title, 
                    ad.description, 
                    ad.price, 
                    student.email, 
                    buy_sell.buy_or_sell,
                    ad.post_time,
                    category.category_name,
                    availability.available,
                    CASE
                        WHEN TIMESTAMPDIFF(SECOND, ad.post_time, NOW()) < 60 THEN CONCAT(TIMESTAMPDIFF(SECOND, ad.post_time, NOW()), ' seconds ago')
                        WHEN TIMESTAMPDIFF(SECOND, ad.post_time, NOW()) < 3600 THEN CONCAT(TIMESTAMPDIFF(MINUTE, ad.post_time, NOW()), ' minutes ago')
                        WHEN TIMESTAMPDIFF(SECOND, ad.post_time, NOW()) < 86400 THEN CONCAT(TIMESTAMPDIFF(HOUR, ad.post_time, NOW()), ' hours ago')
                        WHEN TIMESTAMPDIFF(SECOND, ad.post_time, NOW()) < 2592000 THEN CONCAT(TIMESTAMPDIFF(DAY, ad.post_time, NOW()), ' days ago') -- Assuming 30 days in a month
                        WHEN TIMESTAMPDIFF(SECOND, ad.post_time, NOW()) < 31536000 THEN CONCAT(TIMESTAMPDIFF(MONTH, ad.post_time, NOW()), ' months ago') -- Assuming 12 months in a year
                        ELSE CONCAT(TIMESTAMPDIFF(YEAR, ad.post_time, NOW()), ' years ago')
                    END AS time_ago,

                    category.category_name, 
                    student.student_id, 
                    student.email, 
                    student.phone_no, 
                    student.username, 
                    buy_sell.buy_or_sell 
                FROM 
                    ad 
                JOIN 
                    category ON ad.ad_id = category.ad_id 
                JOIN 
                    student ON ad.student_id = student.student_id 
                JOIN 
                    buy_sell ON ad.ad_id = buy_sell.ad_id
                    
                JOIN
                    availability ON ad.ad_id=availability.ad_id";

            // Check if the search button is clicked
            if (isset($_POST['search-btn'])) {
                // Get the search query from the search box
                $searchQuery = $_POST['search'];

                // SQL query to search for ads containing the search query in title or description
                $searchQuery = mysqli_real_escape_string($con, $searchQuery);
                $prods .= "
                    WHERE 
                        ad.title LIKE '%$searchQuery%' OR 
                        ad.description LIKE '%$searchQuery%'
                ";
            }

            $result = mysqli_query($con, $prods);

            while ($row = mysqli_fetch_assoc($result)) {
                echo '<div class="product">';
                echo '<img src="../img/product-1.jpg" alt="Product 1">';
                echo '<h3>' . $row['title'] . '</h3>';
                echo '<p>' . $row['description'] . '</p>';
                echo '<h3>' . $row['buy_or_sell'] . '</h3>';
                echo '<p>$' . $row['price'] . '</p>';
                echo '<p>Available: '. $row['available'] . '</p>';
                echo '<p>' . $row['time_ago'] . '</p>';
                echo '<button class="contact-seller-btn">Contact Seller</button>';
                echo '<div class="contact-info" style="display: none;">';
                echo '<h3>Contact Information</h3>';
                echo '<p>Email: ' . $row['email'] . '</p>';
                echo '<p>Phone: ' . $row['phone_no'] . '</p>';
                echo '</div>';
                echo '</div>';
            }

            ?>


        </div>

    </section>

    <script>
        function toggleNavbarOptions() {
            var navbarOptions = document.getElementById("navbarOptions");
            navbarOptions.style.display = navbarOptions.style.display === "block" ? "none" : "block";
        }
        document.addEventListener('DOMContentLoaded', function () {
            var contactSellerBtns = document.querySelectorAll('.contact-seller-btn');

            contactSellerBtns.forEach(function (btn) {
                btn.addEventListener('click', function () {
                    var contactInfo = this.nextElementSibling;
                    if (contactInfo.style.display === 'block') {
                        contactInfo.style.display = 'none';
                    } else {
                        contactInfo.style.display = 'block';
                    }
                });
            });
        });


        document.addEventListener('DOMContentLoaded', function () {
            document.getElementById('advanced-filter-btn').addEventListener('click', function () {
                var form = document.getElementById('advanced-filter-form');
                if (form.style.display === 'none') {
                    form.style.display = 'block';
                } else {
                    form.style.display = 'none';
                }
            });
        });
    </script>



</body>

</html>
