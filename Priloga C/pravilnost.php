<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
	<title>Resitev</title>
	
	<link rel="stylesheet" type="text/css" href="pravilnost.css">

</head>

<body>

<div class="main">
	<img src="http://www.scv.si/wp-content/themes/yoo_master2_wp/images/scv.svg" alt="logotip" id="logo">
</div>
	<br><br><br>
		<center><div id="page-wrap">

			<h1>Točkovanje</h1>
			<br>
			<?php
            
				$answer1 = $_POST['question-1-answers'];
				$totalCorrect = 0;
            
				if ($answer1 == "1") { $totalCorrect++; }
			
				$tocke = $totalCorrect * 10;
            
				echo "Dosegli ste " . $tocke . " točk.";
            
			?>
	
		</div></center>
	
	<script type="text/javascript">
	var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
	document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<script type="text/javascript">
	var pageTracker = _gat._getTracker("UA-68528-29");
	pageTracker._initData();
	pageTracker._trackPageview();
	</script>

</body>

</html>