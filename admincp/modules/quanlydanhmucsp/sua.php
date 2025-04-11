<?php
$sql_sua_danhmucsp = "SELECT * FROM tbl_danhmuc WHERE id_danhmuc='$_GET[iddanhmuc]' LIMIT 1";
$query_sua_danhmucsp = mysqli_query($mysqli,$sql_sua_danhmucsp);
?>

<div class="wrapper">
    <h3 class="title_admin">Sửa danh mục sản phẩm</h3>

    <?php while($dong = mysqli_fetch_array($query_sua_danhmucsp)){ ?>
    <form method="POST" action="modules/quanlydanhmucsp/xuly.php?iddanhmuc=<?php echo $_GET['iddanhmuc'] ?>" class="form_add_product" style="width: 50%;">
        <table class="form-table">
            <tr>
                <td>Tên danh mục</td>
                <td><input type="text" name="tendanhmuc" value="<?php echo $dong['tendanhmuc'] ?>" required></td>
            </tr>
            <tr>
                <td>Thứ tự</td>
                <td><input type="text" name="thutu" value="<?php echo $dong['thutu'] ?>" required></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <input type="submit" name="suadanhmuc" value="Cập nhật danh mục" class="btn-submit">
                </td>
            </tr>
        </table>
    </form>
    <?php } ?>
</div>
