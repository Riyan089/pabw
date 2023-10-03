<?php

	$queryWallet = mysqli_query($koneksi, "SELECT * FROM wallet where $user_id=user_id");
	
	if(mysqli_num_rows($queryWallet) == 0){
		echo "<h3>Segera lakukan Top-up kepada Admin untuk lakukan pemesanan</h3>";
	}else{
	
		echo "<table class='table-list'>";
		
		echo "<tr class='baris-title'>
				<th class='kiri'>Ballance</th>
			 </tr>";
			 
		$no=1;
		while($row=mysqli_fetch_assoc($queryWallet)){
			
			echo "<tr>
					<td class='kiri'><b>Rp <b>$row[ballance]</td>
					</td>
				  </tr>";
				  
			$no++;
		}
		
		echo "</table>";
	
	}

?>