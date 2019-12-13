<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>BIOGRAFÍA</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos.css">
<body>
<DIV id="dbiografia">
	<header><H1>BIOGRAFÍA</H1></header>
	<?php 
		$con = mysqli_connect('localhost','root','','BD_Mana') or die ('No se pudo conectar: ' . mysql_error());
		$con->set_charset("utf8");
		$res = $con->query("select * from BIOGRAFIA");
		$res2 = $con -> query("select * from INTEGRANTE");
		while ($row = mysqli_fetch_row($res)) {
	?>
			<h2><?php echo $row[1] ?></h2>
			<p><?php echo $row[2] ?></p>
		<?php
			if ( $row[0] == 2) {
		?>
		<section>
			<?php
				while ($row2 = mysqli_fetch_row($res2)) {
			?>
			<figure>
				<img src="img/<?php echo $row2[2] ?>.jpg">
				<figcaption><?php echo $row2[2] ?></figcaption>
			</figure>	
			<?php
				}
			?>
		</section>
	<?php
			}
		}
		$con->close();
	?>
</DIV>
</body>
</html>