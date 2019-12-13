<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<link rel="stylesheet" type="text/css" href="estilos.css">
<body>
<div>
<?php
	$cod = (int)$_GET['id'];
	$con=mysqli_connect("localhost","root","","BD_Mana");
	$con->set_charset("utf8");
	$res=$con->query("select * from DISCOGRAFIA where DISC_id =".$_GET['id']." ");
	$res2=$con->query("select * from COMENTARIO C INNER JOIN VIDEO V ON V.VID_id=C.VID_id where C.VID_id =".$_GET['id']." ");
	$row=mysqli_fetch_row($res);
?>
	<div id="dIzquierdaDisco" align="center">
		<img src="img/discos/<?php echo $row[1] ?>.jpg" width="92%">
	</div>
	<div id="dDerechaDisco" align="left">
		<h4 style="margin-left: 10px;"><?php echo $row[1] ?></h4>
		<h3 style="margin-left: 10px; color: white; font-weight: normal;">2018</h3>
		<table style="margin-left: 9px">
			<tr><td class="tabladiscos">Canción 1</td></tr>
			<tr><td class="tabladiscos">Canción 2</td></tr>
			<tr><td class="tabladiscos">Canción 3</td></tr>
			<tr><td class="tabladiscos">Canción 4</td></tr>
			<tr><td class="tabladiscos">Canción 5</td></tr>
		</table>
	</div>	
</div>
	<div><a href="discografia.php">Volver</a></div>
</body>
</html>