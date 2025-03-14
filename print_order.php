<?php
session_start();
include 'condb.php';
$sql="select * from tb_order where orderID='".$_SESSION["order_id"]."'";
$result = mysqli_query($conn,$sql);
$rs=mysqli_fetch_array($result);
$total_price=$rs['total_price'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Bootstrap CSS -->
  <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-md-10">
    <div class="alert alert-primary h4 text-center mt-4" role="alert">
  การสั่งซื้อเสร็จสมบูรณ์
</div> 
เลขที่การสั่งซื้อ: <?=$rs['orderID']?> <br>
ชื่อ-นามสกุล (ลูกค้า): <?=$rs['cus_name']?> <br>
ที่อยู่การจัดส่ง: <?=$rs['address']?> <br>
เบอร์โทรศัพท์: <?=$rs['telephone']?> <br>
<br>
<div class="card md-4 mt-4">
    <div class="card-body"> 
<table class="table table-hover">
  <thead>
    <tr>
      <th>รหัสสินค้า</th>
      <th>ชื่อสินค้า</th>
      <th>ราคา</th>
      <th>จำนวน</th>
      <th>ราคารวม</th>
    </tr>
  </thead>
  <tbody>
<?php
$sql1="select * from order_detail d,products p where d.pro_id=p.pro_id and d.orderID='". $_SESSION["order_id"] ."'";
$result1 = mysqli_query($conn,$sql1);
while($row=mysqli_fetch_array($result1)){
?>

    <tr>
      <td><?=$row['pro_id']?></td>
      <td><?=$row['pro_name']?></td>
      <td><?=$row['orderPrice']?></td>
      <td><?=$row['orderQty']?></td>
      <td><?=$row['Total']?></td>
    </tr>
  </tbody>
  <?php
}
?>
</table>
<h6 class="text-end"> รวมเป็นเงิน <?=number_format($total_price,2)?> บาท</h6>
</div> 
</div>
<div>
***กรุณาโอนเงินภายใน 3นาที หลังจากทำการสั่งซื้อ โอนเงินผ่านธนาคาร กรุงไทย ชื่อบัญชี พีรวิชญ์ กาญจนะ 
ประเภทบัญชีออมทรัพย์ เลขบัญชี 8888888888888
<br><br>
</div>
<div class="text-center">
<a href="show_product.php" class="btn btn-success">Back</a>
<button onclick="window.print()" class="btn btn-success">Print</button>
</div>
    </div>
  </div>
</div>
</body>
</html>