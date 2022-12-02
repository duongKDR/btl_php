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
                    echo "
                    <div class='slideshows '>
                    <div class = 'fade'>
                        <img src='image/$slider_image'>
                    </div> </div>
                    ";
                }
                ?>
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
                    <img src="img/1.png" alt="">
                    <img src="img/2.png" alt="">
                </nav>
            </section>
            
            <section class="list-logo with">
                
        
            <?php 
            $sql= "SELECT * FROM `box` order by id DESC LIMIT 0,3";
            $res = mysqli_query($con, $sql);
            while ($row = mysqli_fetch_array($res)) {   
                $title= $row['title'];
                $icon= $row['icon'];
               echo" <nav class='logo milk'>
                        <img src='img/logo11.png' alt=''>
                        <i class='fa fa-$icon'></i>
                   
                    <h3>
                        <a href='#'>$title</a>
                    </h3>
                    </nav>
                ";
            }
            ?>
            </section>
        </section>
        <section class="product">
            <section class="with mg ">
                <figcaption>DANH MỤC</figcaption>
            </section>
            <section class="list-product with mgr">
                <nav class="prd"><a href="sandal_manfashion.html">
                        <img src="img/8.png" alt="">
                        <p>Thời Trang Nam</p>
                    </a>
                </nav>

                <nav class="prd"><a href="watch_fashion.html">
                        <img src="img/9.png" alt="">
                        <p>Đồng hồ</p>
                    </a>
                </nav>
                <nav class="prd">
                    <img src="img/10.png" alt="">
                    <p>Giày Dép Nam</p>
                </nav>

                <nav class="prd"><a href="woman_fashion.html">
                        <img src="img/11.png" alt="">
                        <p>Thời Trang Nữ</p>
                    </a>
                </nav>

                <nav class="prd">
                    <img src="img/13.png" alt=""> <a href="sandal_womanfashion.html">
                        <p>Giày dép nữ</p>
                    </a>
                </nav>
                <nav class="prd">
                    <img src="img/14.png" alt=""><a href="wallet.html">
                        <p>Túi Ví Nữ</p>
                    </a>
                </nav>
                <nav class="prd"><a href="sandal_womanfashion.html">
                        <img src="img/15.png" alt="">
                        <p>Phụ Kiện & Trang Sức Nữ</p>
                </nav></a>

            </section>

        
            <section class="with shopmall">
                <div class="caption mall">
                    <p> GỢI Ý TÌM KIẾM</p>
                </div>
                <div class="all">
                    <a href="">Xem Tất Cả</a>
                    <svg enable-background="new 0 0 11 11" viewBox="0 0 11 11" x="0" y="0" class="shop-svg-icon color">
                 
                    </svg>
                </div>
            </section>
            <section class="with mg">
                <section class="product-milk top gap">
                    <nav class="milk">
                        <div class="milk size">
                            <img src="img/tui.png" alt="">
                            <div class="sells">
                                <p>Bán 49k+ /tháng</p>
                            </div>
                        </div>
                        <div class="sales-10 top_search">
                            <img src="img/29.png" alt="">
                        </div>
                        <div class="mgr name">
                            <p>Túi Nữ</p>
                        </div>
                    </nav>
                    <nav class="milk">
                        <div class="size milk">
                            <img src="img/hoodi.png" alt="">
                            <div class="sells">
                                <p>Bán 49k+ /tháng</p>
                            </div>
                        </div>
                        <div class="sales-10 top_search">
                            <img src="img/29.png" alt="">
                        </div>
                        <div class="mgr name">
                            <p>Áo Hoodie Nữ</p>
                        </div>
                    </nav>
                    <nav class="milk">
                        <div class="size milk">
                            <img src="img/32.png" alt="">
                            <div class="sells">
                                <p>Bán 49k+ /tháng</p>
                            </div>
                        </div>
                        <div class="sales-10 top_search">
                            <img src="img/29.png" alt="">
                        </div>
                        <div class="mgr name">
                            <p>Son Môi Nội Địa Trung</p>
                        </div>
                    </nav>
                    <nav class="milk">
                        <div class="size milk">
                            <img src="img/hoodi2.png" alt="">
                            <div class="sells">
                                <p>Bán 49k+ /tháng</p>
                            </div>
                        </div>
                        <div class="sales-10 top_search">
                            <img src="img/29.png" alt="">
                        </div>
                        <div class="mgr name">
                            <p>Áo Hoodie Nam</p>
                        </div>
                    </nav>
                    <nav class="milk">
                        <div class="size milk">
                            <img src="img/35.png" alt="">
                            <div class="sells">
                                <p>Bán 49k+ /tháng</p>
                            </div>
                        </div>
                        <div class="sales-10 top_search">
                            <img src="img/29.png" alt="">
                        </div>
                        <div class="mgr name">
                            <p>Mắt Kính Gọng Tròn</p>
                        </div>
                    </nav>
                   
                </section>
            </section>
            <section class="with mgr suggest mg">
                <p>GỢI Ý HÔM NAY</p>
            </section>
            <section class="products">
            
                    
                        
            <?php
            $sql = "SELECT * FROM product order by 1 DESC LIMIT 0,9";
            $res = mysqli_query($con, $sql);
            while ($row = mysqli_fetch_array($res)) {
                $product_id = $row['product_id'];
                $product_title = $row['product_title'];
                $product_price = $row['product_price'];
                $product_img = $row['product_img'];
                // echo $product_id;
                echo "
             
                <nav class='balo dropdown'>
                <div class='anh'>
                <a href='details.php?product_id=$product_id' ></a>
                <img src='image/$product_img' alt=''>
                <div class='free_ship'>
                    <img src='image/logo5.png' alt=''>
                </div>
            
                </div>
                <div class='ct'>
                    <p>     $product_title</p>
                </div>

                <div class='fl'>
                    <div class='price'>
                        <sup>đ</sup><span>$product_price</span>
                    </div>
                   
                </div>
                <div class='hidden down'>
                <a href='details.php?product_id=$product_id'>
                Xem chi tiết
            </a>
                </div>
            </nav>
                ";
            }
            ?>
   
            </section>
           
        </section>
    </main>
  
</body>
<?php
include('footer.php');
?>