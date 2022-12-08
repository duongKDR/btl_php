
<?php
session_start();
include('db.php');
if (!isset($_SESSION['admin_email'])) {
    header("location:admin_login.php");
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ADMIN</title>
    <link rel="stylesheet" href="css/admin_style.css" />
    <link rel="stylesheet" href="css/btn.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="shortcut icon" href="image/sky.png" type="image/x-icon" />
</head>

<body>
    <div class="header">
        <div class="header__logo">Quản trị viên </div>
        <div class="header__user">
            <?php 
            echo $_SESSION['admin_email'];
            if (isset($_SESSION['admin_email'])) {
                $ad_email=$_SESSION['admin_email'];
                $sql = "SELECT * from `admins` where admin_email='$ad_email'";
                $res = mysqli_query($con, $sql);
                $row = mysqli_fetch_array($res);
                $permission= $row['permission'];
                echo " Quyền quản trị viên:".$permission;
            }
            ?>
        </div>
    </div>