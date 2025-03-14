<?php 
include 'condb.php';

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Myshop</title>
    <!-- Bootstrap CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</head>

<body>

    <?php include 'menu.php'; ?>

    <div class="container">
        <br> <br>
        <div class="row">

            <?php
              $sql = "SELECT * FROM products ORDER BY pro_id";
              $result = mysqli_query($conn, $sql);

              if (mysqli_num_rows($result) > 0) { // Check if products exist
                while ($row = mysqli_fetch_array($result)) { 
            ?>

            <div class="col-sm-3">
                <div class="text-center">
                    <img src="img/<?= htmlspecialchars($row['image']) ?>" width="200" height="250" class="mt-5 p-3 my-2 border img-fluid"> <br>
                    <p>ID: <?= htmlspecialchars($row['pro_id']) ?></p>
                    <h5 class="text-success"><?= htmlspecialchars($row['pro_name']) ?></h5>
                    <p>ราคา: <b class="text-danger"><?= htmlspecialchars($row['price']) ?></b> บาท</p>
                    <a class="btn btn-outline-success mt-2" href="sh_product_detail.php?id=<?= htmlspecialchars($row['pro_id']) ?>">รายละเอียด</a>
                </div>
                <br>
            </div>

            <?php 
    } 
  } else {
    echo "<p class='text-danger text-center'>ไม่มีสินค้าในระบบ</p>";
  }
  mysqli_close($conn);
  ?>

        </div>
    </div>

</body>

</html>