<?php
$pesanan_id = $_GET["pesanan_id"];

$query = mysqli_prepare($koneksi, "SELECT status FROM pesanan WHERE pesanan_id=?");
mysqli_stmt_bind_param($query, 's', $pesanan_id);
mysqli_stmt_execute($query);
mysqli_stmt_bind_result($query, $status);
mysqli_stmt_fetch($query);
mysqli_stmt_close($query);

$statusToShow = array();

if ($level == "courier") {
    $statusToShow = array(
        $arrayStatusPesanan[0],
        $arrayStatusPesanan[1],
        $arrayStatusPesanan[2],
        $arrayStatusPesanan[3] 
    );
}
    else if ($level == "customer"){ 
    $statusToShow = array(
        $arrayStatusPesanan[10]
    );
}

	 else {
    $statusToShow = $arrayStatusPesanan;
}

?>
<form action="<?= BASE_URL."module/pesanan/action.php?pesanan_id=$pesanan_id"; ?>" method="POST">
    <div class="element-form">
        <label>Pesanan Id (Faktur Id)</label>
        <span><input type="text" value="<?= $pesanan_id; ?>" name="pesanan_id" readonly="true" /></span>
    </div>

    <div class="element-form">
        <label>Status</label>
        <span>
            <select name="status">
                <?php foreach ($statusToShow as $key => $value): ?>
                    <option value="<?= $key ?>" <?= $status == $key ? 'selected' : '' ?>><?= $value ?></option>
                <?php endforeach; ?>
            </select>
        </span>
    </div>

    <div class="element-form">
        <span><input class="tombol-action" type="submit" value="Edit Status" name="button" /></span>
    </div>
</form>