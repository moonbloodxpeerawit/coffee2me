<?php
include 'condb.php';
session_start();
$username =$_POST['username'];
$password =$_POST['password'];

// เข้ารหัส password ด้วย sha512
$password=hash('sha512',$password);

$sql="SELECT * FROM employee WHERE username='$username' and password ='$password' ";

$result=mysqli_query($conn,$sql);
$row =mysqli_fetch_array($result);
$status=$row['status'];

if($row > 0){
    $_SESSION["emp_username"]=$row['username'];
    $_SESSION["emp_pw"]=$row['password'];
    $_SESSION["emp_firstname"]=$row['name'];
    $_SESSION["emp_lastname"]=$row['lastname'];
    // $_SESSION["emp_status"]=$row['status'];
    $_SESSION["Error"] ="";
    if($status == '0'){
        $show=header("location:index.php");
    }elseif($status == '1'){
        $show=header("location:admin.php");
    }

}else{
    $_SESSION["Error"] = "<p> Your username or password is invalid </p>";
    $show=header("location:login.php");
}
echo $show;
?>