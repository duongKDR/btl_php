<?php
// để dùng $_SESSION
session_start();
include('db.php');
include('functions.php')
?>

<!DOCTYPE html>
<html lang="en">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.css'integrity='sha512-vZWT27aGmde93huNyIV/K7YsydxaafHLynlJa/4aPy28/R1a/IxewUH4MWo7As5I33hpQ7JS24kwqy/ciIFgvg=='
    crossorigin='anonymous' />

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css' integrity='sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==' crossorigin='anonymous'/>

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/style3.css">
   
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="shortcut icon" href="image/sky.png" type="image/x-icon" />
    <title>BULE SKY</title>
    

</head>

<body>
    <header class="sticky">
        <section class="menu top">
            <nav class="menu left mg">
                <ul>
                    <li><a href="index.php" >Trang chủ ||</a></li>

                    <div class="dropdown">
                        <li><i class="fa-regular fa-circle-question"></i><a href="contact.php"  >Liên hệ</a></li>
                      
                    </div>
                    <li><i class="fa-brands fa-facebook"></i><i class="fa-brands fa-instagram"></i></li>
                </ul>
            </nav>
            <nav class="menu right mg">
                <ul>
                 

                    </div>
                 
                    <div class="dropdown">
                        <li><i class="fa-solid fa-globe"></i><a href="">Tiếng Việt</a><i class="fa-sharp fa-solid fa-angle-down"></i></li>

                    </div>
                    </div>
                    <li><a href="register.php">
                    <?php
                            if (!isset($_SESSION['user_email'])) {
                                echo "Đăng kí |";
                            } else {
                                echo "" . $_SESSION['user_email'] . " | ";
                            }
                            ?> 
                            
                    </a></li>
                    <li><?php
                        if (!isset($_SESSION['user_email'])) {
                            echo " <a href='user_login.php' class='header__link'>
                            Đăng nhập
                            </a>";
                        } else {
                            echo " <a href='user_logout.php' class='header__link'>
                            Đăng xuất
                            </a>";
                        }
                        ?></li>
                </ul>
            </nav>
        </section>
        <section class="menu bottom">
            <nav class="blue_font">
                <a href="index.php" style="text-decoration: none">
                    BULE SKY </a>
            </nav>
            <form class="search"  method="get" action="search.php">
                <input type="text" placeholder="10.10 SĂN MÃ FREESHIP 0Đ" name="user_query" required>
                <button type="submit" name="search" value="Search"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></button>
            </form>
            <?php
                if (isset($_GET['search'])) {
                    $search = $_GET['user_query'];
                    $_SESSION['user_query'] = $search;
                    echo "<script>window.open('search.php','_self')</script>";
                }
            ?>
            <nav class="shopping">
                <div class="dropdown"><a href="cart.php">
                        <i class="fa-solid fa-cart-shopping"></i></a>
                    <div class="hidden tamgiac three">
                        <img src="image/lg.jpg" alt="">
                        <a href="checkout.php">
                    <?php
                    $ip_add = getRealIpUser();
                    $sql = "select * from cart where ip_add='$ip_add'";
                    $res = mysqli_query($con, $sql);
                    $count = mysqli_num_rows($res);
                    echo $count;
                    ?>
                    mặt hàng trong giỏ hàng của bạn | Tổng giá:
                    <?php
                    $total = 0;
                    $ip_add = getRealIpUser();
                    $sql = "select * from cart where ip_add='$ip_add'";
                    $res = mysqli_query($con, $sql);
                    while ($row = mysqli_fetch_array($res)) {
                        $product_id = $row['p_id'];
                        $qty = $row['qty'];
                        $sql_2 = "select * from products where product_id='$product_id'";
                        $res_2 = mysqli_query($con, $sql_2);
                        while ($row_2 = mysqli_fetch_array($res_2)) {
                            $sub_total = $row_2['product_price'] * $qty;
                            $total += $sub_total;
                        }
                    }

                    echo $total;
                    ?>
                    VND
                </a>
                    </div>
                </div>
            </nav>
        </section>
        <section class="menu list">
            <ul>
                <!-- <li><a href="">Áo khoác</a> </li>
                <li> <a href="">Túi xách nữ</a></li>
                <li> <a href="">Áo croptop</a></li>
                <li> <a href="">Dép</a></li>
                <li> <a href="">Váy</a></li> -->

            </ul>
        </section>
    </header>