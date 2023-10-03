<?php

    include_once("function/koneksi.php");
    include_once("function/helper.php");

    $limit = isset($_GET['limit']) ? $_GET['limit'] : false;
    $category_id = isset($_GET['category_id']) ? $_GET['category_id'] : false;
    $price_min = isset($_GET['price_min']) ? $_GET['price_min'] : false;
    $price_max = isset($_GET['price_max']) ? $_GET['price_max'] : false;

    $query = "SELECT * FROM produk";

    if($category_id){
        $query .= " WHERE kategori_id = $category_id";
    }

    if($price_min && $price_max){
        $query .= " WHERE harga BETWEEN $price_min AND $price_max";
    }

    if($limit){
        $query .= " LIMIT $limit";
    }

    $result = mysqli_query($koneksi, $query);

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
