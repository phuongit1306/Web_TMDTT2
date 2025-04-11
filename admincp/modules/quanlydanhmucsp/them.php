<div class="wrapper">
    <h3 class="title_admin">Thêm danh mục sản phẩm</h3>

    <form method="POST" action="modules/quanlydanhmucsp/xuly.php" class="form-add">
        <div class="form-group">
            <label for="tendanhmuc">Tên danh mục</label>
            <input type="text" name="tendanhmuc" id="tendanhmuc" required>
        </div>

        <div class="form-group">
            <label for="thutu">Thứ tự</label>
            <input type="number" name="thutu" id="thutu" required>
        </div>

        <div class="form-group">
            <input type="submit" name="themdanhmuc" value="Thêm danh mục" class="btn-submit">
        </div>
    </form>
</div>