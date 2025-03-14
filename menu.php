<?php
session_start();
include 'condb.php';


// echo "<pre>";
// var_dump($_SESSION);
// echo "</pre>";
// exit();

// กำหนดค่าชื่อและรูปภาพ




// $firstname = isset($user_data['emp_firstname']) ? $user_data['emp_firstname'] : 'Guest';
// $lastname = isset($user_data['emp_lastname']) ? $user_data['emp_lastname'] : '';
// $image = isset($user_data['emp_image']) ? $user_data['emp_image'] : 'default.jpg';


?>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">Myshop</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="show_product.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin/index.php">Admin</a>
                </li>
                <li class="nav-item">
                    <a href="register-user.php" class="nav-link">Register</a>
                </li>

                <!-- แสดงชื่อและรูป -->
                <?php
                if ($_SESSION):
                    $image = $_SESSION["emp_image"];
                    $firstname = $_SESSION["emp_firstname"];
                    $lastname = $_SESSION["emp_lastname"];
                    $fullname = $firstname . ' ' . $lastname;
                ?>

                    <li class="dropdown nav-item">
                        <a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="image/<?php echo $image ?>" alt="User Image" width="32" height="32" class="rounded-circle me-2">
                            <strong><?php echo $fullname ?></strong>
                        </a>
                        <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
                            <li><a class="dropdown-item" href="#">New project...</a></li>
                            <li><a class="dropdown-item" href="#">Settings</a></li>
                            <li><a class="dropdown-item" href="#">Profile</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Sign out</a></li>
                        </ul>
                    </li>

                <?php endif; ?>





            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-danger" type="submit">Search</button>
                <a class="dropdown-item" href="logout-user.php">Logout</a>
            </form>
        </div>
    </div>
</nav>