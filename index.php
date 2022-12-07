<?php
$active = 'Home';
include('header.php');
?>

<body>


    <main class="full">
        <section class="box1">
            <section class="banner with">
                <nav class="slideshow">

                <?php
                    $sql = "SELECT * FROM `slider`";
                    $res = mysqli_query($con, $sql);
                    while ($row = mysqli_fetch_array($res)) {
                        $slider_name = $row['slider_name'];
                        $slider_image = $row['slider_image'];
                    

                    
                ?> 
                    <div class="slideshows">
                        <div class="fade">
                            <img src="image/<?php echo $slider_image; ?>" alt="">
                        </div>
                    </div>
                    
                <?php } ?>
            
                    <div class="dots" style="text-align:center">
                        <span class="dot" onclick="currentSlide(1)"></span>
                        <span class="dot" onclick="currentSlide(2)"></span>
                        <span class="dot" onclick="currentSlide(3)"></span>
                        <span class="dot" onclick="currentSlide(4)"></span>
                        <span class="dot" onclick="currentSlide(5)"></span>
                    </div>
                    <a class="prev" onclick="plusSlides(-1)">❮</a>
                    <a class="next" onclick="plusSlides(1)">❯</a>
                </nav>
                <nav class="banner2">
                    <?php 


                    $sql_banner = "SELECT * FROM `banner`";
                    $run_banner = mysqli_query($con, $sql_banner);
                    while ($row_banner = mysqli_fetch_array($run_banner)) {
                        $banner_img = $row_banner['banner_img'];

                    ?>

                    <img src="image/<?php echo $banner_img; ?>" alt="">

                    <?php } ?>
                </nav>
            </section>

            <section class="list-logo with">
                <?php 
                $sql= "SELECT * FROM `logo`";
                $res = mysqli_query($con, $sql);
                while ($row = mysqli_fetch_array($res)) {   
                    $logo_name= $row['logo_name'];
                    $logo_image= $row['logo_image'];
                    $logo_desc= $row['logo_desc'];
            ?>
                <nav class="logo milk">
                    <img src="image/<?php echo $logo_image ?>" alt="">
                    <p><?php echo $logo_desc ?></p>
                </nav>
                <?php } ?>
            </section>
        </section>
        <section class="product">
            <section class="with mg ">
                <figcaption>DANH MỤC</figcaption>
            </section>
            <section class="list-product with mgr">
                <?php 
                $sql_categories= "SELECT * FROM `categories`";
                $run_categories = mysqli_query($con, $sql_categories);
                while ($row_categories = mysqli_fetch_array($run_categories)) {   
                    $cat_id= $row_categories['cat_id'];
                    $cat_title= $row_categories['cat_title'];
                    $cat_img= $row_categories['cat_img'];
                    $cat_desc= $row_categories['cat_desc'];
                ?>

                <nav class="prd"><a href="shop.php?cat=<?php echo $cat_id ?>">
                        <img src="image/<?php echo $cat_img ?>" alt="">
                        <p><?php echo $cat_title ?></p>
                    </a>
                </nav>

                <?php } ?>

            </section>

            <section class=" mgr">
                <nav class="with">
                    <img src="image/banner6.jpg" alt="" width="100%">
                </nav>
            </section>

            <section class="with shopmall">
                <div class="mall">
                    <a href="">SHOP MALL</a>|
                    <img src="image/16.png" alt="">
                    <p>7 Ngày Miễn Phí Trả Hàng</p>
                    <img src="image/17.png" alt="">
                    <p>Hàng Chính Hãng 100%</p>
                    <img src="image/18.png" alt="">
                    <p>Miễn Phí Vận Chuyển</p>
                </div>
                <div class="all">
                    <a href="">Xem Tất Cả</a>
                    <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shop-svg-icon color">
                        <path
                            d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5  4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z">
                        </path>
                    </svg>
                </div>
            </section>
            <section class="slide_show mgr with">
                <nav class="banner3 mgr ">
                    <img src="image/19.png" alt="" width="">
                    <!-- <a class="prev" onclick="plusSlides(-1)">❮</a>
                    <a class="next" onclick="plusSlides(1)">❯</a> -->
                </nav>
                <nav class="grid" style="margin-left: 120px;">
                    <nav class="lg">
                        <img src="image/22.png" alt="">
                        <div class="title ">
                            <p>Giảm đến 50%</p>
                        </div>
                    </nav>
                    <nav class="lg">
                        <img src="image/22.png" alt="">
                        <div class="title ">
                            <p>Mua là có quà</p>
                        </div>
                    </nav>
                    <nav class="lg">
                        <img src="image/22.png" alt="">
                        <div class="title ">
                            <p>Siêu sale bùng nổ</p>
                        </div>

                    </nav>
                    <nav class="lg">
                        <img src="image/22.png" alt="">
                        <div class="title ">
                            <p>Mua là có quà</p>
                        </div>
                    </nav>
                    <nav class="lg">
                        <img src="image/26.png" alt="">
                        <div class="title ">
                            <p>Mua là có quà</p>
                        </div>
                    </nav>
                    <nav class="lg">
                        <img src="image/26.png" alt="">
                        <div class="title ">
                            <p>Deal trên tay</p>
                        </div>
                    </nav>
                    <nav class="lg">
                        <img src="image/26.png" alt="">
                        <div class="title ">
                            <p>Mua 1 tặng 1+</p>
                        </div>
                    </nav>
                    <nav class="lg">
                        <img src="image/27.png" alt="">
                        <div class="title ">
                            <p>Mua 1 được 9</p>
                        </div>
                    </nav>
                </nav>
            </section>


            <section class="with shopmall">
                <div class="caption mall">
                    <p> GỢI Ý TÌM KIẾM</p>
                </div>
                <div class="all">
                    <a href="">Xem Tất Cả</a>
                    <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shop-svg-icon color">
                        <path
                            d="m2.5 11c .1 0 .2 0 .3-.1l6-5c .1-.1.2-.3.2-.4s-.1-.3-.2-.4l-6-5c-.2-.2-.5-.1-.7.1s-.1.5.1.7l5.5 4.6-5.5  4.6c-.2.2-.2.5-.1.7.1.1.3.2.4.2z">
                        </path>
                    </svg>
                </div>
            </section>
            <section class="with mg">
                <section class="product-milk top gap">
                    <?php 
                        $get_products = "select * from products order by rand() LIMIT 0,6";
                        $run_products = mysqli_query($con,$get_products);
                        while($row_products=mysqli_fetch_array($run_products)){
                            $pro_title = $row_products['product_title'];
                            $pro_img1 = $row_products['product_img'];
                            $product_price = $row_products['product_price'];
                    ?>

                    <!-- JHUHU -->
                    <nav class="milk">
                        <div class="milk size">
                            <img src="image/<?php echo $pro_img1; ?>" alt="">
                            <div class="sells">
                                <p>Bán 49k+ /tháng</p>
                            </div>
                        </div>
                        <div class="sales-10 top_search">
                            <img src="image/29.png" alt="">
                        </div>
                        <div class="mgr name">
                            <p><?php echo $pro_title; ?></p>
                        </div>
                    </nav>
                    <?php } ?>
                </section>
            </section>

            <section class="with mgr suggest mg">
                <p>GỢI Ý HÔM NAY</p>
            </section>
            <div class=" " style="justify-content: center;display: flex;flex-wrap: wrap;">
            <section class="products">

                <?php 
                    $get_products = "select * from products order by 1 DESC LIMIT 0,4";
                    $run_products = mysqli_query($con,$get_products);
                    while($row_products=mysqli_fetch_array($run_products)){
                        $pro_title = $row_products['product_title'];
                        $pro_img1 = $row_products['product_img'];
                        $product_price = $row_products['product_price'];
                ?>

                <nav class="balo dropdown">
                    <div class="anh">
                        <img src="image/<?php echo $pro_img1; ?>" alt=" ">
                        <div class="free_ship">
                            <img src="image/logo5.png" alt="" h>

                        </div>
                        <div class="like">Yêu thích</div>
                    </div>
                    <div class="ct">
                        <p> <?php echo $pro_title; ?> </p>
                    </div>

                    <div class="fl">
                        <div class="price">
                            <sup>đ</sup><span><?php echo $product_price; ?></span>
                        </div>
                        <div class="selled">
                            <p>Đã bán 11,4K</p>
                        </div>
                    </div>
                    <div class="hidden down">
                        <p>Tìm sản phẩm tương tự</p>
                    </div>
                </nav>

                <?php } ?>

            </section>
            
            <section class="products">

                <?php 
                    $get_products = "select * from products order by 2 DESC LIMIT 0,4";
                    $run_products = mysqli_query($con,$get_products);
                    while($row_products=mysqli_fetch_array($run_products)){
                        $pro_title = $row_products['product_title'];
                        $pro_img1 = $row_products['product_img'];
                        $product_price = $row_products['product_price'];
                ?>

                <nav class="balo dropdown">
                    <div class="anh">
                        <img src="image/<?php echo $pro_img1; ?>" alt=" ">
                        <div class="free_ship">
                            <img src="image/logo5.png" alt="" h>

                        </div>
                        <div class="like">Yêu thích</div>
                    </div>
                    <div class="ct">
                        <p> <?php echo $pro_title; ?> </p>
                    </div>

                    <div class="fl">
                        <div class="price">
                            <sup>đ</sup><span><?php echo $product_price; ?></span>
                        </div>
                        <div class="selled">
                            <p>Đã bán 11,4K</p>
                        </div>
                    </div>
                    <div class="hidden down">
                        <p>Tìm sản phẩm tương tự</p>
                    </div>
                </nav>

                <?php } ?>

            </section>

            <section class="products">

                <?php 
                    $get_products = "select * from products order by 3 DESC LIMIT 0,4";
                    $run_products = mysqli_query($con,$get_products);
                    while($row_products=mysqli_fetch_array($run_products)){
                        $pro_title = $row_products['product_title'];
                        $pro_img1 = $row_products['product_img'];
                        $product_price = $row_products['product_price'];
                ?>

                <nav class="balo dropdown">
                    <div class="anh">
                        
                        <img src="image/<?php echo $pro_img1; ?>" alt=" ">
                        <div class="free_ship">
                            <img src="image/logo5.png" alt="" h>

          
                
                        </div>
                        <div class="like">Yêu thích</div>
                    </div>
                    <div class="ct">
                        <p> <?php echo $pro_title; ?> </p>
                    </div>

                    <div class="fl">
                        <div class="price">
                            <sup>đ</sup><span><?php echo $product_price; ?></span>
                        </div>
                        <div class="selled">
                            <p>Đã bán 11,4K</p>
                        </div>
                    </div>
                    <div class="hidden down">
                        <p>Tìm sản phẩm tương tự</p>
                    </div>
                </nav>

                <?php } ?>

            </section>
            </div>

        </section>
    </main>

</body>
<?php
include('footer.php');
?>