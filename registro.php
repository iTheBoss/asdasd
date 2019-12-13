<?php 
	$nombre=$_POST["nombre"];
	$apellido=$_POST["apellido"];
	$email=$_POST["email"];
	$password=$_POST["pass"];
	$coneccion=mysqli_connect("localhost","root","","BD_Mana");
	$res=$coneccion->query("select * from USUARIO where USER_email='$email'");
	$res2=$coneccion->query("select CURDATE()");
	$cone=mysqli_num_rows($res);
	$fecha=mysqli_fetch_row($res2);
	if($cone>0){
		echo "Error Correo registrado";
	} else {
		$ingresando=$coneccion->query("insert into USUARIO(USER_nombres,USER_apellidos,USER_email,USER_password,USER_fechacreacion) values('$nombre','$apellido','$email','$password','$fecha[0]')");
		echo "<script>parent.location = 'index.php';</script>";
		
	}
?>