<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Chào mừng bạn đến Việt Nam, ĐBSCL</title>
    <!-- Liên kết các tệp CSS và font-awesome -->
    <link rel="icon" href="./upload/logodulichht.png">
    <link rel="stylesheet" href="./include/fontawesome/css/all.css">
    <link rel="stylesheet" href="./include/style/bootstrap.css">
    <link rel="stylesheet" href="include/mystyle45646.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Liên kết các font chữ từ Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Bangers&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=ZCOOL+QingKe+HuangYou&display=swap" rel="stylesheet">
    <!-- Liên kết các tệp JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <?php session_start(); ?>
    <!-- Thiết lập CSS tùy chỉnh cho trang -->
    <style>

    </style>
</head>

<body>

    <!-- Yêu cầu tệp header.html -->
    <?php require_once "./view/header.html" ?>
    <!-- Phần chào mừng với carousel -->
    <div class="greeting">
        <div id="mycarousel" class="carousel slide" data-ride="carousel">
            <!-- Hiển thị chỉ số -->
            <ol class="carousel-indicators">
                <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                <li data-target="#mycarousel" data-slide-to="1" class=""></li>
                <li data-target="#mycarousel" data-slide-to="2" class=""></li>
            </ol>
            <!-- Các slide bên trong carousel-inner -->
            <div class="carousel-inner">
                <!-- Slide 1 -->
                <div class="carousel-item active">
                    <img class="d-block w-10" style="width: 100%; height:500px; min-width:1000px;"
                        src="./upload/image/slider1.jpg">
                    <!-- Thêm thông tin hiển thị -->
                </div>
                <!-- Slide 2 -->
                <div class="carousel-item">
                    <img style="width: 100%; height:500px;" class="d-block w-10" src="./upload/image/slider2.jpg">
                </div>
                <!-- Slide 3 -->
                <div class="carousel-item">
                    <img style="width: 100%; height:500px;" class="d-block w-10" src="./upload/image/slider3.jpg">
                </div>
            </div>
            <!-- Điều khiển chuyển Slide -->
            <a class="carousel-control-prev" href="#mycarousel" role="button" data-slide="prev"> <span
                    class="carousel-control-prev-icon" aria-hidden="true"></span> <span
                    class="sr-only">Previous</span></a>
            <a class="carousel-control-next" href="#mycarousel" role="button" data-slide="next"> <span
                    class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">TIẾP</span> </a>
            <!-- Kết thúc điều khiển chuyển Slide -->
        </div>
    </div>

    <!-- Phần giới thiệu về Việt Nam -->
    <div class="introduce-Vietnam">
        <div class="container">
            <br>
            <p style="color: #f2f2f2; font-size:70px; font-weight:500 ;font-family: 'ZCOOL QingKe HuangYou', cursive;">
                VIETNAM</p>
            <p style="color: #f2f2f2; font-size:20px; font-weight:300 ; font-family: 'ZCOOL QingKe HuangYou', cursive;">
                <!-- Nội dung giới thiệu -->
            </p>
            <br>
        </div>
    </div>

    <!-- Phần bài viết -->
    <div class="article-composition">
        <div class="container">
            <table style="width: 100%;">
                <tr style="width: 100%;">
                    <td style="width: 50%;">
                        <p
                            style="color:#111;font-family: 'ZCOOL QingKe HuangYou', cursive; font-weight:500; font-size:35px; ">
                            TẤT CẢ BÀI VIẾT</p>
                    </td>
                </tr>
            </table>
            <?php
            require_once "./module/ClassPosts.php";
             $getlistpost  = new ClassPosts();
             $getlistpost  = $getlistpost ->getlistTitleAndAvatar();
             $sumcount = sizeof( $getlistpost);
             $count = 0;
             while($count < $sumcount){
                    echo '<a href="./post.php?id='.$getlistpost[$count][0].'">
                    <table class="box-posts">
                           <tr style="width: 100%;">
                               <td style="width: 35%;">
                                 <img style="width: 100%; height:350px" src="'.$getlistpost[$count][2].'">
                               </td>
                               <td style="width: 5%;"></td>
                               <td style="width: 60%;">
                                   <div style="height: 70%;  line-height:80% ; ">
                                       <h1 style="margin-top: 55px;">
                                       '.$getlistpost[$count][1].'
                                       </h1>
                                   </div>
                                   <hr>
                                   <div style="height: 30%; color:#000">
                                      posted by <b style="margin-left:4px;">Admin</b>
                                   </div>
                               </td>
                           </tr>
                       </table>
                   </a>';
                   $count++;
             }
           ?>
        </div>
    </div>

    <!-- Yêu cầu tệp footer.php -->
    <?php include"./view/footer.php"; ?>
</body>

</html>