<?php
include 'condb.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show product</title>
    <!-- Bootstrap CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
    <div class="alert alert-primary h4 text-center mb-4 mt-4 " role="alert">
แสดงข้อมูลสินค้า
</div>
<a class="btn btn-primary mb-4" href="fr_product.php" role="button">Add+</a>
<table class="table table-striped table-hover">
<tr> 
    <th>รหัสสินค้า</th>
    <th>ชื่อสินค้า</th>
    <th>ประเภท</th>
    <th>ราคา</th>
    <th>จำนวน</th>
    <th>รูปภาพ</th>
    <th>แก้ไข</th>
</tr>
<?php
$sql="SELECT * FROM products,type WHERE products.type_id  =type.type_id ";
$hand = mysqli_query($conn,$sql);
while($row=mysqli_fetch_array($hand)){
?>
<tr>
   <td><?=$row['pro_id']?> </td>
   <td><?=$row['pro_name']?> </td>
   <td><?=$row['type_name']?> </td>
   <td><?=$row['price']?> </td>
   <td><?=$row['amount']?> </td>
   <td><img src="img/<?=$row['image']?>" width="80px" height="100px" > </td>
   <td><a href="edit_product.php?id=<?=$row['pro_id']?> " class="btn btn-warning" > Edit </a></td>   
</tr>

<?php
}
mysqli_close($conn);
?>

</table>
    

    </div>
</body>
</html>