<?php

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

function handleGetRequest()
{
    include_once("function/koneksi.php");
    include_once("function/helper.php");

    $barang_id = isset($_GET['barang_id']) ? $_GET['barang_id'] : false;
    $nama_barang = isset($_GET['nama_barang']) ? $_GET['nama_barang'] : false;

    echo "Received barang_id: " . $barang_id . "<br>";
    echo "Received nama_barang: " . $nama_barang . "<br>";

    $query = "SELECT * FROM barang WHERE 1=1";

    if ($barang_id !== false) {
        $query .= " AND barang_id = '$barang_id'";
    }

    if ($nama_barang !== false) {
        $query .= " AND nama_barang LIKE '%$nama_barang%'";
    }

    // Debugging: Output the constructed query
    echo "Constructed Query: " . $query . "<br>";

    $result = mysqli_query($koneksi, $query);

    if (!$result) {
        // Debugging: Output the MySQL error message
        echo "MySQL Error: " . mysqli_error($koneksi) . "<br>";
        exit;
    }

    $data = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $data[] = $row;
    }

    if (empty($data)) {
        $response = array(
            'success' => false,
            'message' => 'No data found.'
        );
    } else {
        $response = array(
            'success' => true,
            'data' => $data
        );
    }

    sendResponse($response);
}

function handlePostRequest() {
    include_once("function/koneksi.php");
    include_once("function/helper.php");

    $barang_id = isset($_POST['barang_id']) ? $_POST['barang_id'] : false;
    $kategori_id = isset($_POST['kategori_id']) ? $_POST['kategori_id'] : false;
    $user_id = isset($_POST['user_id']) ? $_POST['user_id'] : false;
    $nama_barang = isset($_POST['nama_barang']) ? $_POST['nama_barang'] : false;
    $spesifikasi = isset($_POST['spesifikasi']) ? $_POST['spesifikasi'] : false;
    $harga = isset($_POST['harga']) ? $_POST['harga'] : false;
    $stok = isset($_POST['stok']) ? $_POST['stok'] : false;
    $status = isset($_POST['status']) ? $_POST['status'] : false;

    if ($barang_id && $nama_barang && $spesifikasi && $harga && $stok && $status) {
        $query = "INSERT INTO barang (barang_id, kategori_id, user_id, nama_barang, spesifikasi, harga, stok, status) VALUES ('$barang_id', '$kategori_id', '$user_id', '$nama_barang', '$spesifikasi', '$harga', '$stok', '$status')";

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
    include_once("function/koneksi.php");
    include_once("function/helper.php");

    $barang_id = isset($_GET['barang_id']) ? $_GET['barang_id'] : false;
    $nama_barang = isset($_GET['nama_barang']) ? $_GET['nama_barang'] : false;
    $harga = isset($_GET['harga']) ? $_GET['harga'] : false;
    $stok = isset($_GET['stok']) ? $_GET['stok'] : false;

    if ($barang_id) {
        $query = "UPDATE barang SET nama_barang = '$nama_barang', harga = $harga, stok = $stok WHERE barang_id = $barang_id";

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
    include_once("function/koneksi.php");
    include_once("function/helper.php");

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
    include_once("function/koneksi.php");
    include_once("function/helper.php");

    header('Content-Type: application/json');
    echo json_encode($response);
    exit;
}
?>