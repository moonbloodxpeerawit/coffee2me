<?php
session_start();
if(!isset($_SESSION["username"]))
    header("location:/coffee2me/admin/index.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>index</title>
     <!-- Bootstrap CSS -->
  <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="container">
        <br> <br>
        <div class="alert alert-primary h4" role="alert">
    Welcome to Admin
</div>
<br> <br>
<h3>Admin</h3>

<?php
if(isset($_SESSION["firstname"])){
        echo "<div class='text-success'> ";
        echo $_SESSION["firstname"] . " ". $_SESSION["lastname"] ;
        echo "</div>";
     }
     ?>
     <br>

<a href="logout.php"> Logout </a>
</div>
</body>
</html>