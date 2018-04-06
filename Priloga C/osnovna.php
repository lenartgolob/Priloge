<?php
/*
require 'baza.php';
*/
session_start();
header('Content-Type: text/html; charset=utf-8');

		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "pohod";

		$link = mysqli_connect($servername, $username, $password, $dbname);
		

		if (!$link) {
			echo "Error: Unable to connect to MySQL." . PHP_EOL;
			echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
			echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
			exit;
			}
		
		(!$link->set_charset("utf8"));
		
?>
<!DOCTYPE html>
<html>

<head>
<title>Skupine</title>
<link rel="stylesheet" type="text/css" href="osnovnastyle.css">
<meta charset="utf-8" /> 

</head>
<body>
<div class="main">
	<img src="http://www.scv.si/wp-content/themes/yoo_master2_wp/images/scv.svg" alt="logotip" id="logo">
</div>
<div style="text-align: center;">
<br><br>
<h1>Orientacijski pohod</h1>
<br><br>

<?php

	$sql="SELECT * FROM `skupine` WHERE `geslo` = ".$_SESSION['pas'];
	$result=mysqli_query($link,$sql);
	$row=mysqli_fetch_array($result); //izločiš posamezen zapis iz poizvedbe $result
	
		echo "V " . $row['st_skupine'] . ". " . "skupini ste: "; 
									
	$skupina = $row['st_skupine'];
		
	$sql="SELECT * FROM `dijaki` WHERE `id_sk` = $skupina";
	
	$result=mysqli_query($link,$sql);
	$row=mysqli_fetch_array($result);
	echo $row['ime'] . " " . $row['priimek'] . ", ";
		while($row = $result->fetch_array())
		{
			echo $row['ime'] . " " . $row['priimek'] . ", ";
	
	}

?> 
<br><br><br>
<iframe src="https://www.google.com/maps/d/embed?mid=15RcwDl55NV-BreI-JvcSH-aNd8U" width="640" height="480"></iframe>
	
<br><br><br><br>
<?php
	$sql="SELECT * FROM `skupine` WHERE `geslo` = ".$_SESSION['pas'];
	$result=mysqli_query($link,$sql);
	$row=mysqli_fetch_array($result);			
	$skupina = $row['st_skupine'];
		
	$sql2="SELECT * FROM `rezultati` WHERE `id_sk` = $skupina";
	
	$result2=mysqli_query($link,$sql2);
	echo '<table style="width:75%; text-align: center;" id="t01">"';
	echo '<tr><th>Kontrolna točka</th><th>Čas</th><th>Točke</th></tr>';
		while($row2 = $result2->fetch_array())
		{
			echo "<tr>";
			echo "<td>" . $row2['id_k'] . "</td><td>" . $row2['prihod'] . "</td><td>" . $row2['st_tock'] . "</td>";
			echo "</tr>";
	
	}	
	echo "</table>";
?>

	
</div>
<br><br><br><br>
</body>
</html>




