<?php
    require_once "view/header.php";

if(isset($_POST['submit'])) {
$username = $_POST['username'];
$password = md5($_POST['password']);
$sqll = $pdo->query("SELECT * FROM tamu WHERE username='$username' && password='$password'");
$cari = $sqll->rowCount();
$akses = $sqll->fetch();

if($cari){

    $_SESSION['user'] = $akses['idtamu'];
    echo "<script>swal({
        type: 'success',
        title: 'Login Sukses!',
        showConfirmButton: false,
        backdrop: 'rgba(0,0,123,0.5)',
        });
        window.setTimeout(function(){
            window.location.replace('../user/index.php');
        } ,1500); </script>";
}else{
    echo "<script>swal({
        type: 'error',
        title: 'Login Gagal!',
        showConfirmButton: false,
        backdrop: 'rgba(123,0,0,0.5)',
        });
        window.setTimeout(function(){
            window.location.replace('login.php');
        } ,1500); </script>";
}
}
?>

<div id="page">
		<center>
		<li>Silahkan Login</li>
        <img src="gambar/AviaLogo.png" width="150px;" style="margin-top: 10px;">
            <form method="post" action="login.php">
                <table style="margin-top: 10px; margin-bottom: 10px;">
                    <tr>
                        <td style="width:100px;">Username</td>  
                        <td><input type="text" placeholder="Nama Pengguna" name="username" textcolor="white"></td>
                    </tr>
						<td></td>
						<td></td>
					<tr>
					</tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" placeholder="Kata Sandi" name="password" textcolor="white"></td>
                    </tr>
					<tr>
						<td></td>
						<td></td>
					</tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" name="submit" value="Login" style="background:#82a75fc9;;color:white;padding:10px;width:80px;border:1px solid white;"></td>
                    </tr>
                </table>
            </form>
		</center>
	</div>

<?php
    require_once "view/footer.php"
?>