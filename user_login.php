<?php

include 'heard1.php';
?>

<body>
  <div class="full">
    <header class="sticky">
      <section class="menu top" style="height: 84px; box-shadow: 0 6px 6px rgba(0, 0, 0, 0.06)">
        <div class="row" style="width: 1200px; margin: 0 auto">
          <div class="header_1 clearfix">
            <div class="col-sm-2">
              <a href="index.php" style="text-decoration: none">
                <nav class="blue_font" style="color: deepskyblue; margin-top: 20px">
                  BULE SKY
                </nav>
              </a>
            </div>
          </div>
        </div>
      </section>
    </header>
    <div style="background-color: deepskyblue">
      <div class="logo flex">
        <div class="flex login_right">
        <form method="post">
            <div class="B-f form-clor">
              <h1 class="form-heading" style="text-align: center">Đăng nhập</h1>
              <div class="flex flex-column" style="margin: 10px;margin-bottom: 38px;">
                <i class="far fa-user"></i>
                <input type="text" class="input-form pading" name="user_email" placeholder="Nhập Email" />
              </div>
              <div class="flex flex-column" style="margin: 10px; margin-bottom: 38px;">
                <input type="password" class="input-form pading" name="user_pass" placeholder="Mật khẩu" />
                <i class="form-group"></i>

                <div id="eye">
                  <a href="user_forgot.php" class="format-password"> Quên mật khẩu? </a>
                </div>
              </div>
              <div style="text-align: center" >
                <button type="submit" name="submit" class="btn">Đăng nhập</button>
              </div>
              <a href="register.php">
                Không có tài khoản ..? Đăng ký ở đây
              </a>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
<?php
if (isset($_POST['submit'])) {
  $user_email = $_POST['user_email'];
  $user_pass = md5($_POST['user_pass']);
  $sql = "SELECT * FROM user WHERE user_email='$user_email' AND user_pass='$user_pass'";
  $res = mysqli_query($con, $sql);
  $add_ip = getRealIpUser();
  $count = mysqli_num_rows($res);
  $sql_2 = "select * from cart where ip_add='$add_ip'";
  $res_2 = mysqli_query($con, $sql_2);
  $count_2 = mysqli_num_rows($res_2);
  // nếu sai mật khẩu hoặc email thì thoát ra
  if ($count == 0) {
    echo "<script>alert('Email hoặc mật khẩu của bạn sai')</script>";
    exit();
  }
  // nếu đăng nhập chưa có địa chỉ ip thì
  if ($count == 1 and $count_2 == 0) {
    $_SESSION['user_email'] = $user_email;
    echo "<script>alert('Bạn đã đăng nhập thành công')</script>";
    echo "<script>window.open('checkout.php?my_orders','_self')</script>";
  } else {
    $_SESSION['user_email'] = $user_email;
    echo "<script>alert('Bạn đã đăng nhập thành công')</script>";
    echo "<script>window.open('checkout.php','_self')</script>";
  }
}
?>