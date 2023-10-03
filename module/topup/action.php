<?php
    include("../../function/koneksi.php");   
    include("../../function/helper.php");   
     
    $ballance = $_POST["ballance"];
    $button = $_POST['button'];


    if($button == "Add"){
		mysqli_query($koneksi, "INSERT INTO wallet (ballance) 
											VALUES ('$ballance')");
	}
	else if($button == "Update"){
		$wallet_id = $_GET['wallet_id'];
		
		mysqli_query($koneksi, "UPDATE wallet SET ballance='$ballance' WHERE wallet_id='$wallet_id'");


    }
    header("location: ".BASE_URL."index.php?page=my_profile&module=topup&action=list");
?>
