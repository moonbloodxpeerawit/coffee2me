<?php
include 'condb.php';
// รับค่าตัวแปรมาจากไฟล์ register
$name = $_POST['firstname'];
$lastname = $_POST['lastname'];
$phone = $_POST['phone'];
$username = $_POST['username'];
$password = $_POST['password'];

// เข้ารหัส password ด้วย sha512
$password=hash('sha512',$password);

// คำสั่งเพิ่มข้อมูล member
$sql ="INSERT INTO employee (name,lastname,telephone,username,password,status)
Values('$name','$lastname','$phone','$username','$password',0)" ;
$result=mysqli_query($conn,$sql);
if($result){
    echo "<script> alert ('บันทึกข้อมูลเรียบร้อย'); </script>";
    echo "<script> window.location='fr_empolyee.php'; </script>";
     
}else{
    echo "Error:" . $sql . "<br>" . mysqli_error($conn);
    echo "<script> alert('บันทึกข้อมูลไม่ได้'); </script>";
}
mysqli_close($conn);

?>


