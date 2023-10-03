<?php

include_once("function/koneksi.php");
include_once("function/helper.php");

// Check the request method
$method = $_SERVER['REQUEST_METHOD'];

switch ($method) {
    case 'GET':
        handleGetRequest();
        break;
    case 'POST':
        handlePostRequest();
        break;
    case 'PUT':
        handlePutRequest();
        break;
    case 'DELETE':
        handleDeleteRequest();
        break;
    default:
        $response = array(
            'success' => false,
            'message' => 'Invalid request method.'
        );
        sendResponse($response);
}

function handleGetRequest() {
    $barang_id = isset($_GET['barang_id']) ? $_GET['barang_id'] : false;
    $nama_barang = isset($_GET['nama_barang']) ? $_GET['nama_barang'] : false;

    $query = "SELECT * FROM barang";

    if ($barang_id) {
        $query .= " WHERE barang_id = $barang_id";
    }

    if ($nama_barang) {
        $query .= " WHERE nama_barang LIKE '%$nama_barang%'";
    }

    $result = mysqli_query($koneksi, $query);

    $data = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $data[] = $row;
    }

    $response = array(
        'success' => true,
        'data' => $data
    );

    sendResponse($response);
}

function handlePostRequest() {
    $nama_barang = isset($_POST['nama_barang']) ? $_POST['nama_barang'] : false;
    $harga_barang = isset($_POST['harga_barang']) ? $_POST['harga_barang'] : false;

    if ($nama_barang && $harga_barang) {
        $query = "INSERT INTO barang (nama_barang, harga_barang) VALUES ('$nama_barang', '$harga_barang')";

        $result = mysqli_query($koneksi, $query);

        if ($result) {
            $response = array(
                'success' => true,
                'message' => 'Data inserted successfully.'
            );
        } else {
            $response = array(
                'success' => false,
                'message' => 'Failed to insert data.'
            );
        }
    } else {
        $response = array(
            'success' => false,
            'message' => 'Required data is missing.'
        );
    }

    sendResponse($response);
}

function handlePutRequest() {
    $barang_id = isset($_GET['barang_id']) ? $_GET['barang_id'] : false;
    $nama_barang = isset($_POST['nama_barang']) ? $_POST['nama_barang'] : false;
    $harga_barang = isset($_POST['harga_barang']) ? $_POST['harga_barang'] : false;

    if ($barang_id && $nama_barang && $harga_barang) {
        $query = "UPDATE barang SET nama_barang = '$nama_barang', harga_barang = '$harga_barang' WHERE barang_id = $barang_id";

        $result = mysqli_query($koneksi, $query);

        if ($result) {
            $response = array(
                'success' => true,
                'message' => 'Data updated successfully.'
            );
        } else {
            $response = array(
                'success' => false,
                'message' => 'Failed to update data.'
            );
        }
    } else {
        $response = array(
            'success' => false,
            'message' => 'Required data is missing.'
        );
    }

    sendResponse($response);
}

function handleDeleteRequest() {
    $barang_id = isset($_GET['barang_id']) ? $_GET['barang_id'] : false;

    if ($barang_id) {
        $query = "DELETE FROM barang WHERE barang_id = $barang_id";

        $result = mysqli_query($koneksi, $query);

        if ($result) {
            $response = array(
                'success' => true,
                'message' => 'Data deleted successfully.'
            );
        } else {
            $response = array(
                'success' => false,
                'message' => 'Failed to delete data.'
            );
        }
    } else {
        $response = array(
            'success' => false,
            'message' => 'Required data is missing.'
        );
    }

    sendResponse($response);
}

function sendResponse($response) {
    header('Content-Type: application/json');
    echo json_encode($response);
    exit;
}
?>