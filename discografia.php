<!DOCTYPE html>
<html>
<head>
	<title>DISCOGRAFÍA</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos.css">
<body>
<DIV id="dDiscos" name="dDiscos">
	<header><H1>DISCOGRAFÍA</H1></header>
	<section>
	<?php 
		$con = mysqli_connect('localhost','root','','BD_Mana') or die ('No se pudo conectar: ' . mysql_error());
		$res = $con->query("select * from DISCOGRAFIA ORDER BY DISC_id ASC");
		while ($row = mysqli_fetch_row($res)) {
	?>
		<a href="verdisco.php?id=<?php echo $row[0] ?>"><img src="img/discos/<?php echo $row[1] ?>.jpg"></a>
	<?php
		}
		$con->close();
	?>
	</section>
</DIV>
</body>
</html>