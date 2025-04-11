<p class="title_admin">Liệt kê đơn hàng</p>

<?php
$sql_lietke_dh = "SELECT * FROM tbl_cart, tbl_dangky WHERE tbl_cart.id_khachhang = tbl_dangky.id_dangky ORDER BY tbl_cart.id_cart DESC";
$query_lietke_dh = mysqli_query($mysqli, $sql_lietke_dh);
?>

<table class="styled-table">
    <thead>
        <tr>
            <th>STT</th>
            <th>Mã đơn hàng</th>
            <th>Tên khách hàng</th>
            <th>Địa chỉ</th>
            <th>Email</th>
            <th>SĐT</th>
            <th>Tình trạng</th>
            <th>Quản lý</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $i = 0;
        while($row = mysqli_fetch_array($query_lietke_dh)){
            $i++;
        ?>
        <tr>
            <td><?php echo $i ?></td>
            <td><?php echo $row['code_cart'] ?></td>
            <td><?php echo $row['tenkhachhang'] ?></td>
            <td><?php echo $row['diachi'] ?></td>
            <td><?php echo $row['email'] ?></td>
            <td><?php echo $row['dienthoai'] ?></td>
            <td>
                <?php if($row['cart_status']==1): ?>
                    <a class="status-new" href="modules/quanlydonhang/xuly.php?code=<?php echo $row['code_cart'] ?>">Đơn hàng mới</a>
                <?php else: ?>
                    <span class="status-viewed">Đã xem</span>
                <?php endif; ?>
            </td>
            <td>
                <a href="index.php?action=donhang&query=xemdonhang&code=<?php echo $row['code_cart'] ?>">Xem</a>
            </td>
        </tr>
        <?php } ?>
    </tbody>
</table>
