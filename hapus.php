<?php
include("koneksi.php");
$id=$_GET['id_penyewa'];

$sql = "DELETE FROM tb_dvd where id_dvd = '$id'";
$query = mysqli_query($koneksi,$sql);
$sql = "DELETE FROM tb_penyewa where id_penyewa = '$id'";
$query = mysqli_query($koneksi,$sql);

if($query){
    header('Location:tampil.php?status=sukses');
}else{

    die("akses dilarang");
}
?>