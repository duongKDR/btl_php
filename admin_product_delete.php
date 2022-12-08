
<?php
include('db.php');
if (isset($_GET['product_id'])) {
    $product_id = $_GET['product_id'];
    $sql = "DELETE FROM `products` WHERE product_id='$product_id'";
    $res = mysqli_query($con, $sql);
    if ($res) {
        echo "<script>alert('Xóa sản phẩm thành công')</script>";
        echo "<script>window.open('admin_product_view.php','_self')</script>";
    }
}