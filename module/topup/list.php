

<?php

	$queryWallet = mysqli_query($koneksi, "SELECT wallet.*, user.* from wallet JOIN user ON wallet.user_id=user.user_id Order By nama ASC");
		
	if(mysqli_num_rows($queryWallet) == 0){
		echo "<h3>Segera lakukan Top-up kepada Admin untuk lakukan pemesanan</h3>";
	}else{
	
		echo "<table class='table-list'>";
		
		echo "<tr class='baris-title'>
				<th class='kolom-nomor'>No</th>
				<th class='kiri'>Nama</th>
				<th class='kiri'>Ballance</th>
				<th class='tengah'h>Action</th>
			 </tr>";
			 
		$no=1;
		while($row=mysqli_fetch_assoc($queryWallet)){
			
			echo "<tr>
					<td class='kolom-nomor'>$no</td>
					<td class='kiri'>$row[nama]</td>
					<td class='kiri'><b>Rp <b>$row[ballance]</td>
					<td class='tengah'><a class='tombol-action' href='".BASE_URL."index.php?page=my_profile&module=topup&action=form&wallet_id=$row[wallet_id]"."'>Edit</a></td>

				  </tr>";
				  
			$no++;
		}
		
		echo "</table>";
	
	}

?>