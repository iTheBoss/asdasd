<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>VIDEOS</title>
</head>
<link rel="stylesheet" type="text/css" href="estilos.css">
<body>
<?php 
	$con = mysqli_connect('localhost','root','','BD_Mana') or die ('No se pudo conectar: ' . mysql_error());
	$con->set_charset("utf8");
	$res = $con->query("select * from VIDEO");
?>
<div>
	<h1>VIDEOS</h1>
	<table align="center" width="98%" id="tablevideos">
	<?php
		while ($row = mysqli_fetch_row($res)) {
			if($row[0]%3 == 1) {
	?>		
				<TR align="center" style="border: red;">
	<?php
			}
	?>
					<TD>
						<table align="center">
							<TR><TD align="center"><a href="vervideo.php?id=<?php echo $row[0] ?>"><img src="img/videos/<?php echo $row[2] ?>.jpg"></a></TD></TR>
							<TR><TH><?php echo $row[1] ?></TH></TR><br>
						</table>
					</TD>
	<?php
			if($row[0]%3 == 0) {
	?>
				</TR>
	<?php
			}
		}
		$con->close();
	?>
	</table>
</div>
</body>
</html>