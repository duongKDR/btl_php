
<?php
include('db.php');
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "DELETE FROM `box` WHERE id='$id'";
    $res = mysqli_query($con, $sql);
    if ($res) {
        echo "<script>alert('Xóa thành công khối')</script>";
        echo "<script>window.open('admin_box_view.php','_self')</script>";
    }
}