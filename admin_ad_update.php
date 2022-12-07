<!-- Phần sửa admin 
Yêu cầu :Khi ấn vào nút cập nhật admin thì sẽ cập nhật lại bảng ad
        :sau khi ấn cập nhật sẽ chuyển về trang xem

 -->
<?php
include('admin_header.php');
include('admin_sidebar.php');
?>
<form action="admin_ad_update.php" method="post" class="container">

    <div class="title">
        Chỉnh sửa quản trị viên
    </div>
    <table>
        <tr>
            <th>Email quản trị viên</th>
            <th>Pass quản trị viên</th>
            <th>Quyền hạn quản trị viên</th>
            <th>Cập nhật quản trị viên</th>
        </tr>
        <?php
                if (isset($_GET['admin_id'])) {
                        $ad_id = $_GET['admin_id'];
                        $sql = "SELECT * from `admins` where admin_id='$ad_id'";
                        $res = mysqli_query($con, $sql);
                        $row = mysqli_fetch_array($res);
                        $ad_email = $row['admin_email'];
                        $ad_pass = $row['admin_pass'];
                        $permission = $row['permission'];
                        echo "
                   <tr>
                       <td><input type='email' name='admin_email' value='$ad_email'></td>
                       <td><input type='text' name='admin_pass' value='$ad_pass'></td>
                       <td><input type='number' name='permission' value='$permission' max='3' min='1'></td>
                       <input type='hidden' name='admin_id' value='$ad_id'>                  
                       <td><input type='submit' name='submit' value='Gửi'></td>    
                   </tr>
                   ";
                }?>
                
                 
    </table>
    </from>

    <?php
        include('admin_footer.php');
        ?>
    <?php
        if (isset($_POST['submit'])) {
                $ad_id = $_POST['admin_id'];
                $ad_email = $_POST['admin_email'];
                $ad_pass = $_POST['admin_pass'];
                $permission = $_POST['permission'];
                $sql = "UPDATE `admins` SET 
                admin_email='$ad_email',
                admin_pass='$ad_pass',
                permission='$permission'
                where admin_id='$ad_id'";
                $res = mysqli_query($con, $sql);
                if ($res) {
                    echo "<script>alert('Đổi thông tin người dùng thành công')</script>";
                    echo "<script>window.open('admin_login.php','_self')</script>";
                }
        }

        ?>