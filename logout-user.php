<?php
session_start();
session_destroy();
header("location:/coffee2me/show_product.php");
?>