<?php
      
    $wallet_id = isset($_GET['wallet_id']) ? $_GET['wallet_id'] : false;
    
	$nama = "";
    $ballance= "";
    $button ="update";
	
	if($wallet_id){
		$query = mysqli_query($koneksi, "SELECT wallet.*, user.* from wallet JOIN user ON wallet.user_id=user.user_id");
		$row = mysqli_fetch_assoc($query);
		
        $nama = $row['nama'];
		$ballance = $row['ballance'];
        $button = "Update";

	}

?>
<script src="<?php echo BASE_URL."js/ckeditor/ckeditor.js"; ?>"></script>

<form action="<?php echo BASE_URL."module/topup/action.php?wallet_id=$wallet_id"; ?>" method="POST" enctype="multipart/form-data">

	<div class="element-form">
		<label>Ballance</label>
		<span><input type="int" name="ballance" value="<?php echo $ballance; ?>" /></span>
	</div>

    <div class="element-form">
		<span><input type="submit" name="button" value="<?php echo $button; ?>" /></span>
	</div>

</form>


<script>
	CKEDITOR.replace("editor");
</script>