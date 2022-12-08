
<?php
include('db.php');
if (isset($_GET['sender_id'])) {
    $id = $_GET['sender_id'];
    $sql = "DELETE FROM `sender` WHERE sender_id='$id'";

    $res = mysqli_query($con, $sql);
    if ($res) {
         echo "<script>alert('Xóa thành công phản hồi')</script>";
         echo "<script>window.open('admin_contact_view.php','_self')</script>";
    }
}