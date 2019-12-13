<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>

<body>
	<link rel="stylesheet" type="text/css" href="estilos.css">
<div align="center">
<?php
	$cod = (int)$_GET['id'];
	$con=mysqli_connect("localhost","root","","BD_Mana");
	$con->set_charset("utf8");
	$res=$con->query("select * from VIDEO where VID_id =".$_GET['id']." ");
	$res2=$con->query("select * from COMENTARIO C INNER JOIN VIDEO V ON V.VID_id=C.VID_id where C.VID_id =".$_GET['id']." ");
	$res3=$con->query("select COUNT(*) from COMENTARIO C INNER JOIN VIDEO V ON V.VID_id=C.VID_id where C.VID_id = $cod ");
	$vista=$con->query("update VIDEO set VID_vistas=VID_vistas+1 where VID_id=$cod ");
	$row=mysqli_fetch_row($res);
	$cont=mysqli_fetch_row($res3);
?>
	<h1><?php echo $row[1] ?></h1>
	<video src="webm/<?php echo $row[2] ?>.webm" controls="" poster="img/videos/<?php echo $row[2] ?>.jpg" width="70%"></video>
	<div id="dinfovideo" align="left">
		<h3><?php echo $row[3] ?> visualizaciones</h3>
	</div>
	<DIV id="dcomentarios" align="left" weith="90%">
	<?php
		$comen=$con->query("select * from comentario C inner join USUARIO U ON C.USER_id=U.USER_id WHERE C.VID_id = $cod ");
	?>
		<h3><?php echo $cont[0] ?> COMENTARIOS:</h3>
	<?php
		session_start();
		if(isset($_SESSION['usuario'])){
	?>
		<form method="post" action="comentario.php?id=<?php echo $_GET['id']?>">
			<div id="dcomentar">
				<div style="float: left;"><textarea name="comentario" class="cajaslogin" rows=3 cols=85% placeholder="Escriba su comentario..."></textarea></div>
				<div style="float: right;"><br><input type="submit" name="" class="botoneslogin" value="Comentar"></div>	
			</div>
		</form>
		<br><br><br><br>
	<?php }	?>
		<ul>
	<?php
		while($fila=mysqli_fetch_row($comen)){
	?>
			<li><?php echo $fila[5];echo (" ");echo $fila[6];echo (": ");echo $fila[2]; ?></li>
	<?php
		}
		$con->close();
	?>
		</ul>
	</DIV>
	<div><a href="videos.php">Volver</a></div>
</body>
</html>