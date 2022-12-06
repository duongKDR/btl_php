<!-- Phần xóa thanh toán 
Yêu cầu :khi ấn vào nút xóa thanh toán thì sẽ xóa dữ liệu trong bảng pay
        :sau khi ấn xóa sẽ chuyển về trang xem

-->
<?php
include('db.php');
if (isset($_GET['payment_id'])) {
    $pay_id = $_GET['payment_id'];
    $sql = "DELETE FROM `pay` WHERE payment_id='$pay_id'";
    $res = mysqli_query($con, $sql);
    if ($res) {
        echo "<script>alert('Xóa thanh toán thành công')</script>";
        echo "<script>window.open('admin_pay_view.php','_self')</script>";
    }
}