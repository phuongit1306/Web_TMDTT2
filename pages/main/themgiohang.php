<?php
session_start();
include('../../admincp/config/config.php');




if(isset($_POST['themgiohang'])){
    $id=$_GET['idsanpham'];
    $soluong=1;
    $sql= "SELECT * FROM tbl_sanpham WHERE id_sanpham='".$id."' LIMIT 1";
    $query = mysqli_query($mysqli,$sql);
    $row = mysqli_fetch_array($query);
    if($row)
    {
        $new_product=array(array('tensanpham'=>$row['tensanpham'],'id'=>$id,'soluong'=>$soluong,'giasp'=>$row['giasp'],'hinhanh'=>$row['hinhanh'],'masp'=>$row['masp']));
        
        //ktra session gio hang ton tai
        if(isset($_SESSION['cart'])){
            $found = false;
            foreach($_SESSION['cart'] as $cart_item){
                //neu du lieu trung
                if($cart_item['id'] == $id){
                    $product[] = array('tensanpham'=>$cart_item['tensanpham'],'id'=>$cart_item['id'], 'soluong'=>$soluong+1,'giasp'=>$cart_item['giasp'],'hinhanh'=>$cart_item['hinhanh'],'masp'=>$cart_item['masp']);
                    $found = true;
                }else{
                    //neu du lieu ko trung
                    $product[] = array('tensanpham'=>$cart_item['tensanpham'],'id'=>$cart_item['id'], 'soluong'=>$soluong,'giasp'=>$cart_item['giasp'],'hinhanh'=>$cart_item['hinhanh'],'masp'=>$cart_item['masp']);
                }
            }
            if($found == false){
                //lien ket du lieu new_product vs product
                $_SESSION['cart']=array_merge($product,$new_product);
            }else{
                $_SESSION['cart']=$product;
            }
        }else{
            $_SESSION['cart'] = $new_product;
        }
    }
    header('Location:../../index.php?quanly=giohang');
}
?>