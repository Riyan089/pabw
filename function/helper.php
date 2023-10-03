<?php

	define("BASE_URL", "http://localhost/projecttest/");
	
	$arrayStatusPesanan[0] = "Sedang dikirim";
	$arrayStatusPesanan[1] = "Dikirim ulang";
	$arrayStatusPesanan[2] = "Menunggu penjual";
	$arrayStatusPesanan[3] = "Barang Sampai Ditujuan";
	$arrayStatusPesanan[4] = "Pembayaran Di Tolak";
	$arrayStatusPesanan[5] = "Barang diproses Penjual";
	$arrayStatusPesanan[6] = "Menunggu Kurir";
	$arrayStatusPesanan[7] = "Menunggu Pembayaran";
	$arrayStatusPesanan[8] = "Pembayaran Sedang Di Validasi";
	$arrayStatusPesanan[9] = "Lunas";
	$arrayStatusPesanan[10] = "Pesanan selesai";
	

		
	
	function rupiah($nilai = 0){
		$string = "Rp," . number_format($nilai);
		return $string;
	}
	
	function kategori($kategori_id = false){
		global $koneksi;
		
		$string = "<div id='menu-kategori'>";
			
			$string .= "<ul>";
				
					$query = mysqli_query($koneksi, "SELECT * FROM kategori WHERE status='on'");
					
					while($row=mysqli_fetch_assoc($query)){
						if($kategori_id == $row['kategori_id']){
							$string .= "<li><a href='".BASE_URL."index.php?kategori_id=$row[kategori_id]' class='active'>$row[kategori]</a></li>";
						}else{
							$string .= "<li><a href='".BASE_URL."index.php?kategori_id=$row[kategori_id]'>$row[kategori]</a></li>";
						}
					}
			
			$string .= "</ul>";
		
		$string .= "</div>";		
		
		return $string;
	}