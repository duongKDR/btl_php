
<?php
include('db.php');
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];
    $sql = "DELETE FROM `user` WHERE user_id='$user_id'";
    $res = mysqli_query($con, $sql);
    if ($res) {
        echo "<script>alert('Xóa người dùng thành công')</script>";
        echo "<script>window.open('admin_user_view.php','_self')</script>";
    }
}