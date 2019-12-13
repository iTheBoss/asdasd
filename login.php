<?php 
	$email=$_POST["email"];
	$password=$_POST["pass"];
	$coneccion=mysqli_connect("localhost","root","","BD_Mana");
	$coneccion->set_charset("utf8");
	$res=$coneccion->query("select*from USUARIO where USER_email='$email'");
	$cone=mysqli_num_rows($res);
	if($cone>0){
		$cla=$coneccion->query("select*from USUARIO where USER_password='$password' and USER_email='$email'");
		$cone2=mysqli_num_rows($cla);
		if($cone2>0){
			session_start();
			while($row=mysqli_fetch_row($cla)){
				$_SESSION["usuario"]=$row[1];
			}
			echo "<script>parent.location = 'index.php';</script>";
		} else {
			echo "Error clave incorrecta";
		}
	} else {
		echo "Usuario no registrado";
	}
?>

