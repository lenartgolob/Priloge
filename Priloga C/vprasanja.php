<?php
session_start();
/*
    require "baza.php";
*/
		$id_k = 2;
		$stopnja = 1;
		$moznost1 = 'a';
		$moznost2 = 'b';
		$moznost3 = 'c';
		$id_v = 1;
	
	$sql="SELECT * FROM `vprasanja` WHERE `id_k` = $id_k AND `stopnja` = $stopnja";
	$result=mysqli_query($link,$sql);
	$row=mysqli_fetch_array($result);
	
	$sql="SELECT * FROM `odgovori` WHERE `id_v` = $id_v AND `moznost` = '" .$moznost1. "'";
	$result=mysqli_query($link,$sql);
	$row2=mysqli_fetch_array($result);
	
	$sql="SELECT * FROM `odgovori` WHERE `id_v` = $id_v AND `moznost` = '" .$moznost2. "'";
	$result=mysqli_query($link,$sql);
	$row3=mysqli_fetch_array($result);
?>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
	<title>Vprašanja</title>
	
	<link rel="stylesheet" type="text/css" href="vprasanjastyle.css">
</head>

<body>

<div class="main">
	<img src="http://www.scv.si/wp-content/themes/yoo_master2_wp/images/scv.svg" alt="logotip" id="logo">
</div>

	<div id="page-wrap">

		<h1>Vprašanja</h1>
		
		<form action="pravilnost.php" method="post" id="quiz">
		
            <ol>
            
                <li>
                
                    <h3>
						<?php
		
							echo $row['vprasanje'];
						?>
					</h3>
                    
                    <div>
                        <input type="radio" name="question-1-answers" id="question-1-answers-A" value="1" />
                        <label for="question-1-answers-A">
						<?php
		
						echo "A) " . $row2['odgovor']; 
						?>
						</label>
                    </div>
                    
                    <div>
                        <input type="radio" name="question-1-answers" id="question-1-answers-B" value="0" />
                        <label for="question-1-answers-B">
						<?php
		
						echo "B) " . $row3['odgovor'];
						?>
						</label>
                    </div>
                
                </li>
               
            </ol>
            
            <input type="submit" value="Oddaj rezultate" />
		
		</form>
	
	</div>
	
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