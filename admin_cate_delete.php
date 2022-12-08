
<?php
include('db.php');
if (isset($_GET['cat_id'])) {
    $cat_id = $_GET['cat_id'];
    $sql = "DELETE FROM `categories` WHERE cat_id='$cat_id'";
    $res = mysqli_query($con, $sql);
    if ($res) {
        echo "<script>alert('Xóa danh mục sản phẩm  thành công ')</script>";
        echo "<script>window.open('admin_cate_view.php','_self')</script>";
    }
}