
<?php

include 'header.php'

?>

<main class="full">
    <div class="link">
        <ul>
            <b><a href="index.php">Trang chủ</a> </b>
            <i class='fas fa-angle-right' style="color: #000 ;"></i>
            <b><a href="">Giỏ Hàng</a> </b>
            <i class='fas fa-angle-right' style="color: #000 ;"></i>
            <b></b>
        </ul>
    </div>
    <section class="slide_show mgr with ">
    <nav class="  cart ">
    <form action="cart.php" method="post" enctype="multipart/form-data" class="cart">

        <div class=" cart_l ">
          <figcaption style="font-size: 2.6rem; "> <b>Giỏ Hàng</b></figcaption>

            <div class="cart__desc">
                <?php
$ip_add = getRealIpUser();
$sql = "select * from cart where ip_add='$ip_add'";
$res = mysqli_query($con, $sql);
$count = mysqli_num_rows($res);
?>
                <span>Bạn đã có <?php echo $count ?> sản phẩm trong giỏ hàng</span>
            </div>
                <div class="table">
                <table>
                    <tr>
                        <th colspan="5">Sản Phẩm</th>
                        <th>Số lượng</th>
                        <th>Giá tiền/chiếc</th>
                        <th>Kích thước</th>
                        <th>Xóa</th>
                        <th>Tổng tiền</th>
                    </tr>

                    <?php
$total = 0;
while ($row = mysqli_fetch_array($res)) {
    $product_id = $row['p_id'];
    $size = $row['size'];
    $qty = $row['qty'];
    $sql_2 = "select * from products where product_id='$product_id'";
    $res_2 = mysqli_query($con, $sql_2);
    while ($row_2 = mysqli_fetch_array($res_2)) {
        $product_title = $row_2['product_title'];
        $product_img = $row_2['product_img'];
        $only_price = $row_2['product_price'];
        $sub_total = $row_2['product_price'] * $qty;
        $total += $sub_total;
    }
    echo "
                            <tr>
                            <td colspan='4'>
                                <a href='details.php?product_id=$product_id'>
                                <img src='image/$product_img' alt=''>
                                </a>
                            </td>
                            <td>
                                <a href='details.php?product_id=$product_id;'>
                                    $product_title
                                </a>
                            </td>
                            <td>$qty</td>
                            <td>$only_price VND</td>
                            <td>$size</td>
                            <td>
                            <input id='delete__$product_id' type='checkbox' name='remove[]' value='$product_id;'>
                            <label for='delete__$product_id'>Xóa</label>
                            </td>
                            <td>
                               $sub_total VND
                            </td>
                        </tr>";
}

?>

                    <tr>
                        <th colspan="3">Tổng toàn bộ</th>
                        <th colspan="4"></th>
                        <th colspan="3"><?php echo $total; ?></th>
                    </tr>
                </table>

                <div class="cart__button">
                    <div class="cart__continue">
                        <a href="index.php">
                            <button type="button">
                                <i class="fa fa-angle-left"></i>

                                <span> Tiếp tục mua hàng</span>
                            </button>
                        </a>
                    </div>
                    <div class="cart__up">
                        <div class="cart__update">
                            <a href="details.php">
                                <button type="submit" name="update">
                                    <i class="fa fa-refresh"></i>
                                    <span>
                                        Cập nhật giỏ hàng
                                    </span>
                                </button>
                            </a>
                        </div>
                        <?php
if (isset($_POST['update'])) {
    foreach ($_POST['remove'] as $remove_id) {
        $sql = "delete from cart where p_id='$remove_id'";
        $res = mysqli_query($con, $sql);
        if ($res) {
            echo "<script>window.open('cart.php','_self')</script>";
        }
    }
}
?>
                        <div class="cart__checkout">
                            <a href="checkout.php">
                                <button type="button">
                                    <span>
                                        Thanh toán
                                    </span>
                                    <i class="fa fa-angle-right"></i>
                                </button>
                            </a>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>

        <div class=" cart_r ">
            <figcaption style="text-align: center; font-size: 30px; margin: 5px;"> <b>Thống kê</b></figcaption>
          <div class="table">
                <div class=" dowload line">
                    <div class="font-cart ">Tổng tiền</div>
                    <div class="font-cart ">   <p><?php echo $total; ?> VND</p></div>
                </div>
                
                <div class=" dowload line">
                    <div class="font-cart ">Vận chuyển</div>
                    <div class="font-cart "> 0 </div>

                </div>

                <div class=" dowload line coin-font ">

                    <div class="font-cart ">Toàn bộ</div>
                    <div class="font-cart ">   <p><?php echo $total; ?> VND</p></div>


                </div>
                <div class=" dowload "style=" display: flex;justify-content: center;">
                                <button type="button" class ="snip1457">
                                    <span>
                                        Thanh toán
                                    </span>
                                    <i class="fa fa-angle-right"></i>
                                </button>
                          
            </div></div>
        </div>
        <div class="cart__like">
            <div class="cart_box">
            <div class="flex four" style="font-size:1.5rem ;"> Sản phẩm tương tự</div>
            </div>
            <?php

$sql = "select * from products order by rand() LIMIT 0,4";
$res = mysqli_query($con, $sql);
while ($row = mysqli_fetch_array($res)) {
    $product_id = $row['product_id'];
    $product_title = $row['product_title'];
    $product_price = $row['product_price'];
    $product_img = $row['product_img'];
    echo "
                        <div class='cart__product'>
                            <a href='details.php?product_id=$product_id'>
                                <img src='image/$product_img' alt=''>
                            </a>
                            <div class='cart__text'>
                            <a href='details.php?product_id=$product_id'>
                                <h3>
                                    $product_title
                                </h3>
                                </a>
                                <p>
                                    $product_price VND
                                </p>
                            </div>
                        </div>

                        ";
}
?>

        </div>
    </form>

    </div>
    </div>
    </div>
    </div>

    <?php

include 'footer.php'

?>