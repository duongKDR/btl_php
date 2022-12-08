
<?php

include('header.php');
?>
<div class="main">
    <div class="shop">
        <div class="shop__container">
            <ul class="shop__breadcroumb">
                <li><a href="index.php">Trang Chủ</a></li>
                <li>Liên hệ</li>
            </ul>
           
            <div class="contact">
                <div class="contact__title">
                    <h1>Liên hệ </h1>
                    <span>Hãy liên hệ với chúng tôi 24/7</span>
                </div>
                <form action="contact.php" method="post" class="contact__form">
                    <label>
                        Tên
                    </label>
                    <input type="text" placeholder="Nhập tên của bạn" name="name">
                    <label>
                        Email
                    </label>
                    <input type="email" placeholder="Nhập Email" name="email">
                    <label>
                        Chủ đề
                    </label>
                    <input type="text" placeholder="Nhập chủ đề" name="subject">
                    <label>
                        Nội dung
                    </label>
                    <textarea type="text" placeholder="Nhập nội dung" name="message"></textarea>
                    <button type="submit" name="submit">Gửi</button>
                </form>
                <?php
                if (isset($_POST['submit'])) {

                    // Nhận tin nhắn từ gmail
                    $name = $_POST['name'];
                    $receiver = "phuonghole121201@gmail.com";
                    $subject = $_POST['subject'];
                    $message = $_POST['message'];
                    $email = $_POST['email'];
                    $sql = "INSERT INTO `contact`(name,subject,message,email)
                        VALUES ('$name','$subject','$message','$email')
                        ";
                    $res = mysqli_query($con, $sql);
                    // echo  $sql;
                        echo "<script>alert('Tin nhắn của quý khách đã gửi thành công $email')</script>";
                    
                    
          


                  
                } ?>


            </div>
        </div>

    </div>

</div>

<?php

include('footer.php');

?>