<?php

    include_once("function/koneksi.php");
    include_once("function/helper.php");

    $barang_id = isset($_GET['barang_id']) ? $_GET['barang_id'] : false;
    $nama_barang = isset($_GET['nama_barang']) ? $_GET['nama_barang'] : false;
    $query = "SELECT * FROM barang ";
    // if($barang_id){
    //     $query .= "where barang_id = $barang_id";
    // }
    if($nama_barang){
        $query .= "where nama_barang like '%$nama_barang%' ";
    }
    $result = mysqli_query($koneksi, $query);
    
    // var_dump($result);
    // exit;
    $data = array();
    while($row = mysqli_fetch_assoc($result)){
        $data[] = $row;
    }

    $response = array(
        'success' => true,
        'data' => $data
    );

    header('Content-Type: application/json');
    echo json_encode($response);

?>