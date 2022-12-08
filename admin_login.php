
<?php

session_start();
include('db.php');

?>
 
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/css.css" />
  <link rel="stylesheet" href="css/style.css" />
  <link rel="shortcut icon" href="image/sky.png" type="image/x-icon" />

  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css' integrity='sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==' crossorigin='anonymous'/>

  <link href="https://fonts.googleapis.com/css?family=Merriweather:300,400,400i|Noto+Sans:400,400i,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600" rel="stylesheet">
  <title>BULE SKY</title>
</head>

<div class="admin__login">
<div class ="form">
    <form method="post">
        <h2>ADMIN</h2>
        <label style="margin-left: 0px;">Email</label>
        <input style="width: 100%;" type="text" name="ad_email" placeholder="Nhập Email">
        <label style="margin-left: 0px;"> Mật khẩu</label>
        <input style="width: 100%; padding: 5px;" type="password" name="ad_pass" placeholder="Nhập mật khẩu ">
        <button class="button1" style="margin-left: 20px;" type="submit" name="submit">Đăng nhập</button>
    </form>
</div>
</div>
<?php
if (isset($_POST['submit'])) {
    $ad_email = $_POST['ad_email'];
    $ad_pass = md5($_POST['ad_pass']);
    $sql = "SELECT * FROM `ad` WHERE ad_email='$ad_email' AND ad_pass='$ad_pass'";
    $res = mysqli_query($con, $sql);
    $count = mysqli_num_rows($res);
    // echo  $sql;
    // nếu sai mật khẩu hoặc email thì thoát ra
    if ($count == 0) {
        echo "<script>alert('Email hoặc mật khẩu của bạn sai')</script>";
        exit();
    } else {
        $_SESSION['ad_email'] = $ad_email;
     
        echo "<script>alert('Bạn đã đăng nhập thành công')</script>";
        // echo " Xin chào: " . $_SESSION['ad_email'] . "";
        echo "<script>window.open('admin_index.php','_self')</script>";
    }
}
?>