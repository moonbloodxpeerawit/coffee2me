<?php
include 'condb.php';
// รับค่าตัวแปรมาจากไฟล์ register
$name = $_POST['firstname'];
$lastname = $_POST['lastname'];
$phone = $_POST['phone'];
$username = $_POST['username'];
$password = $_POST['password'];

$name_file =  $_FILES['upload']['name'];
$tmp_name =  $_FILES['upload']['tmp_name'];
$locate_img ="image/";

// ตรวจสอบว่ามีการอัปโหลดไฟล์หรือไม่
if (!empty($name_file)) {
    if (move_uploaded_file($tmp_name, $locate_img . $name_file)) {
        // ถ้าอัปโหลดสำเร็จ
        echo "Uploaded successfully!";
    } else {
        echo "Failed to upload the file.";
        $name_file = ""; // ถ้าอัปโหลดไม่สำเร็จ ให้ค่าว่าง
    }
} else {
    $name_file = ""; // ไม่มีไฟล์อัปโหลด
}


// เข้ารหัส password ด้วย sha512
$password=hash('sha512',$password);

// คำสั่งเพิ่มข้อมูล member
$sql ="INSERT INTO employee (name,lastname,telephone,username,password,status,image)
Values('$name','$lastname','$phone','$username','$password', '0','$name_file')" ;
$result=mysqli_query($conn,$sql);
if($result){
    echo "<script> alert ('บันทึกข้อมูลเรียบร้อย'); </script>";
    echo "<script> window.location='login-user.php'; </script>";
     
}else{
    echo "Error:" . $sql . "<br>" . mysqli_error($conn);
    echo "<script> alert('บันทึกข้อมูลไม่ได้'); </script>";
}
mysqli_close($conn);

?>