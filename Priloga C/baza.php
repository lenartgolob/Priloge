<?php
header('Content-Type: text/html; charset=utf-8');

		$servername = "localhost";
		$username = "id4207531_pohod18";
		$password = "krneki18";
		$dbname = "id4207531_pohod";
		$geslo = $_POST["geslo"];

		$link = mysqli_connect($servername, $username, $password, $dbname);
		

		if (!$link) {
			echo "Error: Unable to connect to MySQL." . PHP_EOL;
			echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
			echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
			exit;
			}

		(!$link->set_charset("utf8"));
			
?>