<?php
$sql_sua_sp = "SELECT * FROM tbl_sanpham WHERE id_sanpham='$_GET[idsanpham]' LIMIT 1";
$query_sua_sp = mysqli_query($mysqli,$sql_sua_sp);
?>

<div class="wrapper">
    <h3 class="title_admin">Sửa thông tin sản phẩm</h3>

    <?php 
    while($row = mysqli_fetch_array($query_sua_sp)){
    ?>
    <form method="POST" action="modules/quanlysp/xuly.php?idsanpham=<?php echo $row['id_sanpham'] ?>" enctype="multipart/form-data" class="form_add_product">
        <table class="form-table">
            <tr>
                <td>Tên sản phẩm</td>
                <td><input type="text" value="<?php echo $row['tensanpham'] ?>" name="tensanpham" required></td>
            </tr>
            <tr>
                <td>Mã sản phẩm</td>
                <td><input type="text" value="<?php echo $row['masp'] ?>" name="masp" required></td>
            </tr>
            <tr>
                <td>Giá sản phẩm</td>
                <td><input type="text" value="<?php echo $row['giasp'] ?>" name="giasp" required></td>
            </tr>
            <tr>
                <td>Số lượng</td>
                <td><input type="text" value="<?php echo $row['soluong'] ?>" name="soluong" required></td>
            </tr>
            <tr>
                <td>Hình ảnh</td>
                <td>
                    <input type="file" name="hinhanh">
                    <br><br>
                    <img src="modules/quanlysp/uploads/<?php echo $row['hinhanh'] ?>" width="150px" style="border-radius: 8px; box-shadow: 0 0 10px rgba(0,0,0,0.3);">
                </td>
            </tr>
            <tr>
                <td>Tóm tắt</td>
                <td><textarea rows="5" name="tomtat" style="resize: none" required><?php echo trim($row['tomtat']) ?></textarea></td>
            </tr>
            <tr>
                <td>Nội dung</td>
                <td><textarea rows="6" name="noidung" style="resize: none" required><?php echo trim($row['noidung']) ?></textarea></td>
            </tr>
            <tr>
                <td>Danh mục sản phẩm</td>
                <td>
                    <select name="danhmuc" required>
                        <?php 
                        $sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
                        $query_danhmuc = mysqli_query($mysqli, $sql_danhmuc);
                        while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
                        ?>
                            <option value="<?php echo $row_danhmuc['id_danhmuc'] ?>" <?php echo ($row_danhmuc['id_danhmuc']==$row['id_danhmuc']) ? 'selected' : '' ?>>
                                <?php echo $row_danhmuc['tendanhmuc'] ?>
                            </option>
                        <?php } ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Tình trạng</td>
                <td>
                    <select name="tinhtrang" required>
                        <option value="1" <?php echo ($row['tinhtrang']==1) ? 'selected' : '' ?>>Kích hoạt</option>
                        <option value="0" <?php echo ($row['tinhtrang']==0) ? 'selected' : '' ?>>Ẩn</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <input type="submit" name="suasanpham" value="Cập nhật sản phẩm" class="btn-submit">
                </td>
            </tr>
        </table>
    </form>
    <?php } ?>
</div>
