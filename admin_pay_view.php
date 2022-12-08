
<?php
include('admin_header.php');
include('admin_sidebar.php');
?>

<div class="container">
    <div class="title">
        Xem danh sách thanh toán
    </div>
    <table>
        <tr>
            <th>Số thứ tự thanh toán</th>
            <th>Mã hóa đơn thanh toán</th>
            <th>Số tiền đã thanh toán</th>
            <th>Phương thức thanh toán</th>
            <th>Tên chu tài khoản</th>
            <th>Mã thanh toán</th>
            <th>Ngày thanh toán</th>
            <th>Xóa thanh toán</th>
        </tr>
        <?php
        $sql = "SELECT * FROM `payments`";
        $res = mysqli_query($con, $sql);
        $i = 0;
        while ($row = mysqli_fetch_array($res)) {
            $pay_id = $row['payment_id'];
            $receipt = $row['invoice_no'];
            $money = $row['amount'];
            $mode = $row['payment_mode'];
            $namec = $row['cardholder_name'];
            $code = $row['card_number'];
            $date = $row['payment_date'];
            $i++;
            echo "
            <tr>
                <td>$i</td>
                <td>$receipt</td>
                <td>$money</td>
                <td>$mode</td> 
                <td>$namec</td>
                <td>$code</td>
                <td>$date</td>
                <td>
                    <a href='admin_pay_delete.php?pay_id=$pay_id'>Xóa</a>
                </td>
            </tr>
            ";
        }
        ?>
    </table>
</div>

<?php
include('admin_footer.php');
?>