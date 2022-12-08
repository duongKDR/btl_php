<?php
include('header.php');
?>
<?php
if (isset($_GET['product_id'])) {
    $product_id = $_GET['product_id'];
    $sql = "SELECT * FROM products WHERE product_id='$product_id'";
    $res = mysqli_query($con, $sql);
    $row = mysqli_fetch_array($res);
    $p_cat_id = $row['p_cat_id'];
    $product_title = $row['product_title'];
    $product_price = $row['product_price'];
    $product_desc = $row['product_desc'];
    $product_img = $row['product_img'];
    $sql_2 = "SELECT * FROM `product_categories` WHERE p_cat_id='$p_cat_id'";
    $res = mysqli_query($con, $sql_2);
    $row_2 = mysqli_fetch_array($res);
    $p_cat_title = $row_2['p_cat_title'];
}
?>
<div class="main">
    <div class="shop">
        <div class="shop__container">
            <ul class="shop__breadcroumb">
                <li><a href="index.php">Trang Chủ</a></li>
                <li>Shop</li>
                <li>
                    <a href="shop.php?p_cat=<?php echo $p_cat_id; ?>"><?php echo $p_cat_title; ?></a>
                </li>
                <li> <?php echo $product_title; ?> </li>
            </ul>
            <section class="slide_show mgr with ">
            <div class="details">
                <div class="details__img">
                    <a href="shop.php">
                        <img src="image/<?php echo $product_img; ?>" alt="">
                    </a>
                </div>
                <div class="detail__right">
                    <!-- thêm mặt hàng vào giỏ hàng ,nếu có trong giỏ hàng rồi thì báo trùng -->
                    <?php
                    if (isset($_GET['add_cart'])) {
                        $p_id = $_GET['add_cart'];
                        $ip_add = getRealIpUser();
                        $product_qty = $_POST['product_qty'];
                        $product_size = $_POST['product_size'];
                        $sql = "SELECT * FROM cart WHERE ip_add='$ip_add' AND p_id='$p_id'";
                        $res = mysqli_query($con, $sql);
                        if (mysqli_num_rows($res) > 0) {
                            echo "<script>alert('Sản phẩm này đã được thêm vào giỏ hàng')</script>";
                            echo "<script>window.open('details.php?product_id=$p_id','_self')</script>";
                        } else {
                            $sql_2 = "INSERT INTO cart (p_id,ip_add,qty,size)
                            VALUES ('$p_id','$ip_add','$product_qty','$product_size')";
                            $res_2 = mysqli_query($con, $sql_2);
                            echo "<script>window.open('details.php?product_id=$p_id','_self')</script>";
                        }
                    }
                    ?>
                    <form class="detail__box" action="details.php?add_cart=<?php echo $product_id; ?>" method="post">
                        <div class="details__desc">
                            <h2> <?php echo $product_title; ?></h2>
                        </div>
                        <div class="details__number">
                            <p>
                                Số lượng sản phẩm
                            </p>
                            <select name="product_qty">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>

                            </select>
                        </div>
                        <div class="details__size">
                            <p>
                                Kích thước sản phẩm
                            </p>
                            <select name="product_size">
                                <option value="S">S Nam</option>
                                <option value="M">M Nam</option>
                                <option value="L">L Nam</option>
                                <option value="XL">XL Nam</option>
                                <option value="XXL">XXL Nam</option>
                                <option value="S">S Nữ</option>
                                <option value="M">M Nữ</option>
                                <option value="L">L Nữ</option>
                                <option value="XL">XL Nữ</option>
                                <option value="XXL">XXL Nữ</option>
                            </select>
                        </div>
                        <div class="details__center">
                            <div class="details__price">
                                <?php echo $product_price; ?>VND
                            </div>
                            <div class="details__button">
                                <button type="submit" class="fa fa-shopping-cart">
                                    THÊM VÀO GIỎ HÀNG
                                </button>
                            </div>
                        </div>
                    </form>
                    <div class="details__tt">
                        <?php
                        $sql = "select * from products order by rand() LIMIT 0,3";
                        $res = mysqli_query($con, $sql);
                        while ($row = mysqli_fetch_array($res)) {
                            $product_id = $row['product_id'];
                            $product_title = $row['product_title'];
                            $product_img = $row['product_img'];
                            $product_price = $row['product_price'];
                            echo "
                            <div class='details__img'>
                                <a href='details.php?product_id=$product_id'>
                                    <img src='image/$product_img' alt=''>
                                </a>
                                <div>
                                <h3> <a href='details.php?product_id=$product_id'> $product_title </a> </h3>
                                    
                                <p class='price'> $ $product_price </p>
                                </div>
                            </div>
                            
                            ";
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>
                    </section>
    </div>

</div>


<?php
include('footer.php');
?>