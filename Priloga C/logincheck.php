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
		$geslo = $_POST["password"];
		

		$link = mysqli_connect($servername, $username, $password, $dbname);
		

		if (!$link) {
			echo "Error: Unable to connect to MySQL." . PHP_EOL;
			echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
			echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
			exit;
			}

		(!$link->set_charset("utf8"));
		
			
?>
<?php
	
	$sql="SELECT * FROM `skupine` WHERE `geslo` = $geslo";
	$result=mysqli_query($link,$sql);
	$row=mysqli_fetch_array($result); //izločiš posamezen zapis iz poizvedbe $result

	if ($geslo == $row['geslo']) {
		$_SESSION['ids']=$row['id_sk'];
		$_SESSION['pas']=$geslo;
		header("Location: osnovna.php");
		return;
									}
	else {
		header('Location: index.php?x=1');
		return;
			}
?> 