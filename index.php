<?php
	require_once "view/header.php";

?>

<script type="text/javascript">
	function pilih() {
		var type = document.opsi.tipe.value;
		var teks = document.getElementById('selek').options[document.getElementById('selek').selectedIndex].text;
		document.opsi.harga.value = type;
		document.opsi.tipex.value = teks;

	}
</script>

	<div id="imgindex">
		<div id="imglog">
			<p><br>Selamat Datang<br>
			<a href="daftar.php" id="tomboll">DAFTAR</a>
			<a href="login.php" id="tombol2">LOGIN</a><br>&nbsp;</p>
		</div>
	</div>

			<div id="reservasi">
				<li>Reservasi</li>
				<form method="post" action="user/pemesanan" name="opsi">
					<table>
						<tr>
							<td>Check-In</td>
							<td>Check-Out</td>
							<td>Type</td>
							<td>Harga/Malam</td>
							<td></td>
						</tr>
						<tr>
							<td>
								<input type="date" name="cekin">
							</td>
							<td>
								<input type="date" name="cekout">
							</td>
							<td>
								<select name="tipe" id="selek" required="required" onchange="pilih()" style="font-weight: bold;">
									<option selected="selected" disabled="disabled">-Pilih-</option>
									<option value="Rp 250.000">Superior</option>
									<option value="Rp 300.000">Deluxe</option>
									<option value="Rp 390.000">VIP</option>									
								</select>
							</td>
							<td>
								<input type="text" name="harga" style="width: 100px;" onchange="pilih()">
								<input type="hidden" name="tipex" style="width: 100px;" onchange="pilih()">
							</td>
							<td>
								<input type="submit" name="ok" value="Pesan" id="tombol">
							</td>
						</tr>
					</table>
				</form>
			</div>

			<div id="tentang">
				<h3>Tentang Kami</h3><br>
				<p>Bagi Anda yang menginginkan kualitas pelayanan oke dengan harga yang ramah di kantong, Avia Residence adalah pilihan yang tepat. Karena meski murah, akomodasi ini menyediakan fasilitas memadai dan pelayanan yang tetap terjaga mutunya.Avia Residence memiliki segala fasilitas penunjang bisnis untuk Anda dan kolega. Avia Residence adalah tempat bermalam yang tepat bagi Anda yang berlibur bersama keluarga. Nikmati segala fasilitas hiburan untuk Anda dan keluarga. Jika Anda berniat menginap dalam jangka waktu yang lama, Avia Residence adalah pilihan tepat. Berbagai fasilitas yang tersedia dan kualitas pelayanan yang baik akan membuat Anda merasa sedang berada di rumah sendiri.
				</p><br>
				<p>
				Menikmati perjalanan sendiri adalah hal yang menyenangkan. Untuk menginap, Avia Residence adalah pilihan pas bagi Anda yang membutuhkan waktu sendiri setelah puas berkeliling kota. Avia Residence adalah pilihan tepat bagi Anda yang ingin menginap di kota Tomang dengan harga yang terjangkau. Avia Residence adalah akomodasi dengan fasilitas baik dan kualitas pelayanan memuaskan menurut sebagian besar tamu. Pelayanan yang baik dengan harga terjangkau akan membuat Anda merasa nyaman menginap di Avia Residence.
				</p>
			</div>

			<div id="cekinout">
				<h3>Check-In &amp; Check-Out</h3><br>
				<h4>Check-In</h4>
				<p>Jam Check-In Standar : 14.00 WIB</p>
				<p>*Waktu Check-In dari plan mempunyai prioritas lebih besar</p><br>
				<h4>Check-Out</h4>
				<p>Jam Check-Out Standar : 12.00 WIB</p>
				<p>*Waktu Check-Out dari plan mempunyai prioritas lebih besar</p><br>
			</div>

			<div id="petalokasi">
				<h3>Peta Lokasi</h3><br>
				<a href="https://goo.gl/maps/k2eCK6gQnmyrB2Hh7"><img src="gambar/mapsavia.png" width="70%">
			</div>
			</center>
	

<?php
	require_once "view/footer.php"
?>
	