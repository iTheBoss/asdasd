<?php
	session_start();
	$comentario = $_POST["comentario"];
	$coneccion = mysqli_connect("localhost","root","","BD_MANA");
	$con = $coneccion -> query("select * from USUARIO where USER_nombres='".$_SESSION['usuario']."'");
	while($row = mysqli_fetch_row($con)) {
		$res = $coneccion -> query("insert into COMENTARIO (VID_id,COM_comentario,USER_id) values ('".$_GET['id']."','$comentario','$row[0]')");
		header("Location: vervideo.php?id=".$_GET['id']."");	
	}
?>