
<?php
include('db.php');
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "DELETE FROM `network` WHERE id='$id'";
    $res = mysqli_query($con, $sql);
    if ($res) {
        echo "<script>alert('Xóa thành công mạng xã hội')</script>";
        echo "<script>window.open('admin_network_view.php','_self')</script>";
    }
}