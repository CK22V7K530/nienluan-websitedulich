<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>đăng nhập tài khoản người dùng </title>
    <!-- Liên kết các tệp CSS và font-awesome -->
    <link rel="icon" href="./upload/logodulichht.png">
    <link rel="stylesheet" href="./include/fontawesome/css/all.css">
    <link rel="stylesheet" href="./include/style/bootstrap.css">
    <link rel="stylesheet" href="include/mystyle45646.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Bangers&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=ZCOOL+QingKe+HuangYou&display=swap" rel="stylesheet">
    <?php session_start(); ?>
</head>

<body style="  background-image: url('upload/hinh-anh-du-lich-ha-long.jpg'); ">
    <?php if(isset($_SESSION['email'])) {
        echo '<H1 style="color:#f22 ">Bạn đang đăng nhập</H1>';
        echo ' <script>
        var timer = setTimeout(function() {
            window.location="./"
        }, 3000);
    </script>';
        die();
    } ?>
    <?php require_once "./view/header.html" ?>
    <br><br>
    <div style="width: 100%; margin-bottom: 30px; margin-top: 30px; ">
        <form class="from-dangky" method="post" action="#">
            <div style="text-align: center">
                <H3 style="color: #f2f2f2;">Tên người dùng</H3>
            </div>
            <div class="form-group">
                <label style="color: #f2f2f2;" for="">Email</label>
                <input type="text" class="form-control" id="email" required="" placeholder="nguyenvana@gmail.com"
                    name="email">
            </div>
            <div class="form-group">
                <label for="password" style="color: #f2f2f2;">Mật khẩu</label>
                <input type="password" class="form-control" id="password" required=""
                    placeholder="Nhập mật khẩu của bạn" name="password">
            </div>
            <div style="text-align: center"><button style="margin-top: 10px;" class="btn btn-secondary">Đăng
                    nhập</button>
            </div>
            <div style="text-align: right"><a href="./registration.php" style="" class="btn-linklogin">Đăng ký</a>
            </div>
        </form>
    </div>
    <br><br><br><br>
    <?php require_once "./view/footer.php"; ?>
    <?php
      if(isset($_POST['email'])){
        $email = $_POST['email'];
        $pass =  $_POST['password'];
        require_once "./module/Account.php";
        $account = new Account();
        $access = $account->login($email,$pass);
        if($access === 0)  echo '<script>alert("Đăng nhập thất bại, tên đăng nhập hoặc mật khẩu không đúng.....")</script>';
        else{
            $_SESSION['email'] = $access;
            echo '<script>window.location="./";</script>';
        }
      }
    ?>
</body>

</html>