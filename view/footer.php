  <style>
.fa {
    font-size: 23px;
    transition-duration: 1s;
}

.fa:hover {
    color: #6f42c1;
    transition-duration: 1s;
}
  </style>
  <div class="footer">
      <br><br>
      <div style="height: 30px; ">
          <a target="_blank" href="https://www.facebook.com/profile.php?id=100010985073581"><i
                  class="fa fa-facebook"></i></a>
          <a target="_blank" href="https://www.youtube.com/channel/UCCEWK65j919_SZi1vCEKiuQ"><i
                  class="fa fa-youtube"></i></a>
          <a target="_blank" href="https://www.instagram.com/duy16khong5/"><i class="fa fa-instagram"></i></a>
      </div>
      <br>
      <p style="color: #ccc;">© Xây dựng website du lịch</p>
      <div style="height: 10px;">
      </div>
      <div style="position: fixed; right: 10px; bottom: 10px;">
          <?php
                if(isset($_SESSION['email']))  echo '<a href="./account.php">
                <img id="iconlogin-accout" src="./upload/accout.png" class="img-login-accout" alt="Login">
            </a>';
                else echo '<a href="./login.php">
                <img id="iconlogin-accout" src="./upload/login.png" class="img-login-accout" alt="Login">
            </a>';
            ?>
      </div>
  </div>