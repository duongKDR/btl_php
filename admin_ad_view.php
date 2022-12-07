<!--
Phần xem danh sách admin 
Yêu cầu :In ra thông tin admin (table ad)
        :Phải có nút thêm,sửa,xóa liên kết qua id

-->
<?php
include('admin_header.php');
include('admin_sidebar.php');
?>

<div class="container">
    <div class="title">
        Xem danh sách quản trị viên
        <?php 
             if (isset($_SESSION['ad_email'])) {
                $ad_email=$_SESSION['ad_email'];
                $sql = "SELECT * from `admins` where admin_email='$ad_email'";
                $res = mysqli_query($con, $sql);
                $row = mysqli_fetch_array($res);
                $permission1= $row['permission'];
                if ($permission1 == 1 ){
                   echo "
                   <a href='admin_ad_add.php'>Thêm quản trị viên</a>  
                   ";
                }
            }
            ?>
    </div>
    <table>
        <tr>
            <th>Số thứ tự quản trị viên</th>
            <th>Email quản trị viên</th>
            <th>Quyền hạn quản trị viên</th>
            <?php
            if ($permission1==1){
                echo "                
                <th>Xóa quản trị viên</th>
                <th>Cập nhập quản trị viên</th>
                ";
            }
            ?>
        </tr>
        <?php
        $i = 0;
        $sql = "SELECT * FROM `admins`";
        $res = mysqli_query($con, $sql);
        while ($row = mysqli_fetch_array($res)) {
            $ad_id = $row['admin_id'];
            $ad_email = $row['admin_email'];
            $permission = $row['permission'];
            $i++;
            echo "
                <tr>
               <td>$i</td>
               <td>$ad_email</td>
               <td>
                   $permission
               </td>
               ";
               if($permission1 ==1){
                   echo"
               <td>
                <a href='admin_ad_delete.php?admin_id=$ad_id'>Xóa</a>
               </td>
               <td>
                <a href='admin_ad_update.php?admin_id=$ad_id'>Chỉnh sửa</a> 
               </td>
               <tr>
               ";
               } 
        }
        ?>

    </table>
</div>

<?php
include('admin_footer.php');
?>