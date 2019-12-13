<!DOCTYPE html>
<html>
<head>
	<title>MANÁ</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos.css">
<body class="dbody">
<div id="dfondo" class="dfondo">
	<div id="dindex" class="dindex">
		<div id="dencabezado" class="dencabezado">
			<div id="dlogo" class="dlogo" align="center">
				<a href="index.php"><img src="img/logo.png" height="91%" style="margin: 4px auto;"></a>
			</div>
			<div id="dbuscador" class="dbuscador" align="center">
				<form style="margin-top: 28px;">
					<input type="text" name="" size="60" required="" placeholder="¿Desea buscar algún video? Ingrese el nombre">
					<input type="submit" name="" value="Buscar">
				</form>
			</div>
			<?php
				session_start();
				if(isset($_SESSION['usuario'])) {
			?>
			<div id="dsesion" class="dsesion" align="center">
				<br><br>
				<a href="cerrar.php">Cerrar</a> | 
				<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
				<?php echo $_SESSION["usuario"]; ?>
			</div>
			<?php
				} else {
			?>
			<div id="dsesion" class="dsesion" align="center">
				<br><br>
				<a href="login.html" target="fprincipal">Iniciar Sesión</a> | 
				<a href="registro.html" target="fprincipal">Inscribirse</a>
			</div>
			<?php
				}
			?>
		</div>
		<div id="dcontenido" class="dcontenido">
			<div id="dmenu" class="dmenu">
				<ul>
					<a href="biografia.php" target="fprincipal"><li>BIOGRAFÍA</li></a>
					<a href="discografia.php" target="fprincipal"><li>DISCOGRAFÍA</li></a>
					<a href="videos.php" target="fprincipal"><li>VIDEOS</li></a>
				</ul>
				<footer><p>© Copyright 2019</p></footer>
			</div>
			<div id="dprincipal" class="dprincipal">
				<iframe src="principal.html" scrolling="yes" align="middle" width="100%" height="582px" frameborder="no" name="fprincipal" allowtransparency="true" background-color="transparent"></iframe> 
			</div>
		</div>
	</div>
</div>
</body>
</html>