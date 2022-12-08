
<?php

if (!isset($_SESSION['user_email'])) {
    header("location:user_login.php");
}
include('header.php');
?>
<div class="main">
    <div class="shop">
        <div class="shop__container">
            <ul class="shop__breadcroumb">
                <li><a href="index.php">Trang Chủ</a></li>
                <li>Tài khoản</li>
            </ul>
            <?php
            if (!isset($_SESSION['user_email'])) {
                include("user_login.php");
            } else {
                include("user_pay.php");
            }
            ?>
        </div>

    </div>
</div>
<?php
include('footer.php');
?>