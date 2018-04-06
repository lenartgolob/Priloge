<!DOCTYPE html>
<html>
<head>
<title>Geslo</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class = "glavni">
	<div class="main">
		<img src="http://www.scv.si/wp-content/themes/yoo_master2_wp/images/scv.svg" alt="logotip" id="logo">
	</div>

	<div class="prijava">
		<div align="right">
			<button id="admin" align="right" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Admin</button>
		</div>
		
		<div id="id01" class="modal">
  
		<form class="modal-content animate" action="admin.php" method="post">
    
		<div class="container">
			<label><b>Uporabniško ime</b></label>
			<input type="text" placeholder="Enter Username" name="ime" required>
			<label><b>Geslo</b></label>
			<input type="password" placeholder="Enter Password" name="password" required>
        	<button type="submit">Prijavi</button>
		</div>

		<div class="container" style="background-color:#f1f1f1">
			<button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
		</div>
		</form>
		</div>
	</div>
</div>
<div class="jedro">
	<br>
	<br>
	<center><h1 style="text">Športni dan</h1>
	<br>
	<p> Napiši geslo skupine: </p>
	<br>
		<form action="logincheck.php" method="post">
			<input id="psw" type="text" maxlength="4" name="password"required><br><br> 
			<input type="submit" value="Prijava" onclick="preveri()"/>
			<input type="reset" value="Zbriši">
		</form>
</div></center>
</body>
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

</script>
</html>