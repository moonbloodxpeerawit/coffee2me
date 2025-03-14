<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <!-- Bootstrap CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4 badge bg-light text-dark p-4 mt-5">
            <h5 class="text-center">LOGIN</h5>
            <form method="POST" action="login_check-user.php">
                <div class="mb-3">
                    <input type="text" name="username" class="form-control" required placeholder="Username">
                </div>
                <div class="mb-3">
                    <input type="password" name="password" class="form-control" required placeholder="Password">
                </div>
                <?php
                if (isset($_SESSION["Error"])) {
                    echo "<div class='text-danger mb-3'>";
                    echo $_SESSION["Error"];
                    echo "</div>";
                }
                ?>
                <div class="d-grid">
                    <input type="submit" name="submit" value="Login" class="btn btn-primary">
                </div>
            </form>
            <div class="text-center mt-3">
                <a href="register-user.php">REGISTER</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>