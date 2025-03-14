
<?php include 'condb.php'; ?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>REPORT</title>       
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>   
    </head>
    <body class="sb-nav-fixed">
     <?php include 'menu1.php' ; ?> 

            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4 ">                                                                     
                        <div class="card mb-4 mt-4">
                            <div class="card-header">                                                         
                                   เพิ่มข้อมูลพนักงาน       
                                <br>                                                           
                            <div class="card-body">
                            <div class="alert alert-primary h6" role="alert ">
        <h6>สมัครสมาชิก</h6>
</div>
        
                            <form method="POST" action="insert_register.php">
        ชื่อ<input type="text" name="firstname" class="form-control" require>
        นามสกุล<input type="text" name="lastname" class="form-control" require>
        เบอร์โทรศัพท์<input type="number" name="phone"  class="form-control" require>
        Username<input type="text" name="username" maxlength="10" class="form-control" require>
        Password<input type="password" name="password" maxlength="10" class="form-control" require>
        <br> 
        <input type="submit" name="submit" value="บันทึก" class="btn btn-primary">
        <input type="reset" name="cancel" value="ยกเลิก" class="btn btn-primary"> <br>

        
</form>       
                            
                            </div>
                        </div>
                    </div>
                </main>
                <?php include 'footer.php' ; ?>                 
            </div>
        </div>       
    </body>
</html>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>

        <script>
            function del(mypage){
                var agree=confirm('คุณต้องการยกเลิกใบสั่งซื้อสินค้าหรือไม่');
                if(agree){
                    window.location=mypage;
                }                    
            }

            function del1(mypage1){
                var agree=confirm('คุณต้องการปรับสถานะการชำระเงินหรือไม่');
                if(agree){
                    window.location=mypage1;
                }                    
            }
            </script>