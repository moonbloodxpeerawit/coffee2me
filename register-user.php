<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>REGISTER</title>
    <!-- Bootstrap CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</head>

<body>

    <div class="container">
        <br> <br>
        <div class="row">
            <div class="col-md-6  bg-light text-dark">
                <br> <br>




                <div class="alert alert-primary h6" role="alert">
                    สมัครสมาชิก
                </div>
                <br>
                <form method="POST" action="insert_register-user.php" enctype="multipart/form-data">
                    ชื่อ<input type="text" name="firstname" class="form-control" require>
                    นามสกุล<input type="text" name="lastname" class="form-control" require>
                    เบอร์โทรศัพท์<input type="number" name="phone" class="form-control" require>
                    Username<input type="text" name="username" maxlength="10" class="form-control" require>
                    Password<input type="password" id="password" name="password" minlength="8" maxlength="10" class="form-control" required>
                    ภาพ<input type="file" name="upload" class="form-control" require />
                    <br>
                    <input type="submit" name="submit" value="บันทึก" class="btn btn-primary">
                    <input type="reset" name="cancel" value="ยกเลิก" class="btn btn-primary"> <br>

                    <a href="login-user.php"> Login </a>
                </form>
                <script>
                function validateForm() {
                    var password = document.getElementById("password").value;
                    if (password.length < 8) {
                        alert("รหัสผ่านต้องมีความยาวไม่น้อยกว่า 8 ตัวอักษร");
                        return false;
                    }
                    return true;
                }
                </script>
            </div>
        </div>
    </div>
</body>

</html>