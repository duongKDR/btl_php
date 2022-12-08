

<?php
include('admin_header.php');
include('admin_sidebar.php');
?>

<div class="container">
    <div class="title">Thêm Admin</div>
    <form action="admin_ad_add.php" method="post">
        <div class="form__group">
            <span>Email quản trị viên</span>
            <input name="admin_email" type="email" required />
        </div>
        <div class="form__group">
            <span>Mật khẩu quản trị viên</span>
            <input name="admin_pass" type="password" required />
        </div>
        <div class="form__group">
            <span>Quyền quản trị viên</span>
            <input name="permission" type="number" max="3" min="1" value="3" required />
        </div>
        <div class="form__group">
            <span></span>
            <input type="submit" value="Gửi" name="submit">
        </div>
    </form>
</div>

<?php
include('admin_footer.php');
?>
<?php
if (isset($_POST['submit'])) {
       $ad_email = $_POST['admin_email'];
       // echo $ad_email;
       $ad_pass = md5($_POST['admin_pass']);
       // echo  $ad_pass;
       $permission = $_POST['permission'];
       // echo $permission;
       $sql = "INSERT into `admins` (admin_email,admin_pass,permission) 
    values ('$ad_email','$ad_pass','$permission')";
       $res = mysqli_query($con, $sql);
       if ($res) {
              echo "<script>alert('Tài khoản được thêm thành công ')</script>";
              echo "<script>window.open('admin_ad_view.php','_self')</script>";
       }
}
?>