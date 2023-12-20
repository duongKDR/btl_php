<?php
$active = 'Account';
include('header.php');
if (!isset($_SESSION['user_email'])) {
    echo "<script>window.open('checkout.php','_self')</script>";
}
?>
<div class="main">
    <div class="shop">
        <div class="shop__container">
            <ul class="shop__breadcroumb">
                <li><a href="index.php">Trang Chủ</a></li>
                <li>Tài khoản</li>
            </ul>
            <?php
            include('user_sidebar.php')
            ?>
            <div class="user__content">
                <div class="user__title">
                    Xác nhận thanh toán
                </div>
                <?php
                if (isset($_GET['order_id'])) {
                    $order_id = $_GET['order_id'];
                }
                ?>
                <form action="user_order-pay.php?update_id=<?php echo $order_id; ?>" method="post" class="user__form">
                    <label>
                        Hóa đơn
                    </label>
                    <input type="text" required name="invoice_no" placeholder="Nhập số mã hóa đơn">
                    <label>
                        Số tiền đã gửi
                    </label>
                    <input type="text" required name="amount" placeholder="Nhập số tiền đã gửi">
                    <label>
                        Phương thức thanh toán
                    </label>
                    <select name="payment_mode">
                        <option> BIDV</option>
                        <option> TPBank</option>
                        <option> MBBank</option>
                    </select>
                    <label>
                        Mã giao dịch
                    </label>
                    <input type="text" required name="magiaodich" placeholder="Nhập mã giao dịch">
                    <label>
                       Tên chủ TK
                    </label>
                    <input type="text" required name="cardholder_name" placeholder="Tên chủ tài khoản">
                    
                    <label>
                        Ngày giao dịch
                    </label>
                    <input type="date" required name="payment_date" placeholder="Nhập ngày giao dịch">
                    <label>
                        Địa chỉ người nhận
                    </label>
                    <input type="text" required name="address" placeholder="Điền địa chỉ người nhận">

                    <button class="button" name="submit" type="submit">Xác nhận thanh toán</button>
                </form>
            </div>
        </div>
    </div>
</div>
<?php
include('footer.php');
?>
<?php

if (isset($_POST['submit'])) {
    $update_id = $_GET['update_id'];
    $receipt = $_POST['invoice_no'];
    $money = $_POST['amount'];
    $mode = $_POST['payment_mode'];
    $mgd = $_POST['magiaodich'];
    $namec = $_POST['cardholder_name'];
    $date = $_POST['payment_date'];
    $address = $_POST['address'];
    $sql = "INSERT into payments (invoice_no,amount,cardholder_name,payment_mode,magiaodich,payment_date,address) values ('$receipt','$money','$namec','$mode','$mgd','$date','$address')";
    $res = mysqli_query($con, $sql);
    $complete = "Đã trả";
    $sql_2 = "UPDATE `order` set status='$complete' where order_id='$update_id'";
    $res_2 = mysqli_query($con, $sql_2);
    // echo $sql_2;
    $sql_3 = "UPDATE pending set status='$complete' where order_id='$update_id'";
    $res_3 = mysqli_query($con, $sql_3);
    if ($res_3) {
        echo "<script>alert('Cảm ơn bạn đã thanh toán,chúng tôi sẽ xác nhận và gửi đến bạn trong 48h)</script>";
        echo "<script>window.open('user_orders.php','_self')</script>";
    }
}
?>
