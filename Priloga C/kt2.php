<?php
session_start();
/*
require 'baza.php';
*/
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
<?php
$ids= $_SESSION['ids'];
$tocka=$_GET['kt'];
switch ($tocka)
{
	case 1:
	$sql = "INSERT INTO rezultati () VALUES (NULL, NOW() , 0, '$ids', 1)";
	break;
	case 2:
	$sql = "INSERT INTO rezultati () VALUES (NULL, NOW() , 0, '$ids', 2)";
	break;
	case 3:
	$sql = "INSERT INTO rezultati () VALUES (NULL, NOW() , 0, '$ids', 3)";
	break;
	case 4:
	$sql = "INSERT INTO rezultati () VALUES (NULL, NOW() , 0, '$ids', 4)";
	break;
	case 5:
	$sql = "INSERT INTO rezultati () VALUES (NULL, NOW() , 0, '$ids', 5)";
	break;
	case 6:
	$sql = "INSERT INTO rezultati () VALUES (NULL, NOW() , 0, '$ids', 6)";
	break;
	case 7:
	$sql = "INSERT INTO rezultati () VALUES (NULL, NOW() , 0, '$ids', 7)";
	break;
	case 8:
	$sql = "INSERT INTO rezultati () VALUES (NULL, NOW() , 0, '$ids', 8)";
	break;
	case 9:
	$sql = "INSERT INTO rezultati () VALUES (NULL, NOW() , 0, '$ids', 9)";
	break;
	
}

mysqli_query($link,$sql);
?>