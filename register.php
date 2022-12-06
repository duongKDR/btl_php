<?php

include('heard1.php');
?>

<body>
    <div class="full">
        <header class="sticky">
            <section class="menu top" style="height: 84px; box-shadow: 0 6px 6px rgba(0, 0, 0, 0.06)">
                <div class="row" style="width: 1200px; margin: 0 auto">
                    <div class="header_1 clearfix">
                        <div class="col-sm-2">
                            <a href="index.html" style="text-decoration: none">
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
                    <form action="register.php" method="post" class="register__form">
                        <div class="B-f form-clor" style ="height: 430px">
                            <h1 class="form-heading" style="text-align: center">Đăng nhập</h1>
                            <div class="flex flex-column" style="margin: 10px;margin-bottom: 38px;">
                                <input type="text" class="input-form pading" name="user_name" placeholder="Nhập tên của bạn" />
                            </div>
                            <div class="flex flex-column" style="margin: 10px;margin-bottom: 38px;">
                                <input class="input-form pading" name="user_phone" required type="text" placeholder="Nhập số điện thoại" maxlength="10" minlength="10">
                            </div>
                            <div class="flex flex-column" style="margin: 10px;margin-bottom: 38px;">
                                <input name="user_email" class="input-form pading" required type="email" placeholder="Nhập Email">
                            </div>
                            <div class="flex flex-column" style="margin: 10px; margin-bottom: 38px;">
                                <input class="input-form pading" name="user_pass" required type="password" placeholder="Nhập mật khẩu ">
                                <i class="form-group"></i>
                            </div>
                            <div class="flex flex-column" style="margin: 10px;margin-bottom: 38px;">
                                <input name="user_pass_2" class="input-form pading" required type="password" placeholder="Nhập lại mật khẩu ">
                            </div>

                            <div style="text-align: center">
                                <button type="submit" name="submit" class="btn">Đăng kí</button>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

<?php
if (isset($_POST['submit'])) {
    $user_name = $_POST['user_name'];
    $user_email = $_POST['user_email'];
    $user_pass = md5($_POST['user_pass']);
    $user_pass_2 = md5($_POST['user_pass_2']);
    $user_phone = $_POST['user_phone'];
    $user_ip = getRealIpUser();
    if ($user_pass == $user_pass_2) {
        $sql = "INSERT INTO `user`(user_name,user_email,user_pass,user_phone,user_ip)
        VALUES ('$user_name','$user_email','$user_pass','$user_phone','$user_ip')
        ";
        // echo $sql;
        $res = mysqli_query($con, $sql);
        $sql_2 = "SELECT * FROM cart WHERE ip_add='$user_ip'";
        $res_2 = mysqli_query($con, $sql_2);
        $count = mysqli_num_rows($res_2);
        if ($count > 0) {
            // nếu chưa từng đăng kí thì sẽ trả về trang checkout
            $_SESSION['user_email'] = $user_email;
            echo "<script>alert('Bạn đã được đăng ký thành công')</script>";
            echo "<script>window.open('checkout.php','_self')</script>";
        } else {
            // nếu đã từng đăng kí thì sẽ trả về trang index
            $_SESSION['user_email'] = $user_email;
            echo "<script>alert('Bạn đã được đăng ký thành công')</script>";
            echo "<script>window.open('index.php','_self')</script>";
        }
    } else {
        echo "<script>alert('Bạn đã nhập pass không trùng nhau')</script>";
        echo "<script>window.open('register.php','_self')</script>";
    }
}
?>