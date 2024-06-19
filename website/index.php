<?php

	session_start();

	date_default_timezone_set('Europe/Amsterdam');
	$config_url = "http://localhost/ProjectJulia/website";
	
	$page = (isset($_GET['page'])) ? $_GET['page'] : '' ;

	if (!isset($GLOBALS['server']))
	{
		die("Start via de URL /org/test");
	}
	
	include("global.php");
	$db = new Db();    
	
	$input = filter_input_array(INPUT_POST);
	if (!isset($input['action']) || empty($input['action']))
	{
		$input = filter_input_array(INPUT_GET);
	}

?>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <!-- Force latest IE, Google Chrome Frame for IE -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="description" content="jQuery plugin for responsive and accessible modal windows and tooltips." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Julia webshop</title>

	<script src="<?php echo $config_url; ?>/assets/js/modernizr.js"></script> <!-- Modernizr -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script> 
	<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.js"></script>  
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
	
	<link rel="stylesheet" type="text/css" href="<?php echo $config_url; ?>/stijl.css">
  <link rel="stylesheet" type="text/css" href="<?php echo $config_url; ?>/stijlform.css">
  <link rel="stylesheet" type="text/css" href="<?php echo $config_url; ?>/style.css">
	<link rel="stylesheet" href="<?php echo $config_url; ?>/assets/css/responsivetabs.css"> <!-- Resource style -->
	<link rel="stylesheet" href="<?php echo $config_url; ?>/assets/css/sumoselect.min.css">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

	 <!-- jQuery Popup Overlay -->
    <script src="<?php echo $config_url; ?>/assets/js/jquery.popupoverlay.js"></script>

</head>

<body>
	<div class="w3-sidebar w3-bar-block w3-card w3-animate-left" style="display:none" id="mySidebar">
		<button class="w3-bar-item w3-button w3-large"
		onclick="w3_close()">Close &times;</button>
		<a href="index.php" class="w3-bar-item w3-button">Hoofdpagina</a>
		<a href="?page=ons" class="w3-bar-item w3-button">Wie zijn wij</a>
		<!--<a href="#" class="w3-bar-item w3-button">Onze artikelen</a>-->
		<a href="?page=personen" class="w3-bar-item w3-button">Reservering</a>
	</div>

	<div id="main">

	<div class="w3-teal" id="fortell">
	  <button id="openNav" class="w3-button w3-teal w3-xlarge" onclick="w3_open()">&#9776;</button>
	  <div class="w3-container">
	    <h1>Royalty</h1>  
	  </div>
	</div>

	<div class="topnav" id="forpc">
	  <h1>Royalty</h1>
	  <a href="index.php" class="w3-bar-item w3-button">Hoofdpagina</a>
	  <a href="?page=ons" class="w3-bar-item w3-button">Wie zijn wij</a>
	  <!--<a href="#" class="w3-bar-item w3-button">Onze artikelen</a>-->
	  <a href="?page=personen" class="w3-bar-item w3-button">Reservering</a>
	</div>
		<?php
			// Check user login or not
			/*if ($page == "logout")
			{
				unset($_SESSION['uname']);
			}

			if(!isset($_SESSION['uname']))
			{
			   include('login.php');
			}
			else
			{*/

				switch($page)
				{
					case 'ons': include('ons.php'); break;
					case 'frmreserveering': include('frmreserveering.php'); break;
					case 'personen': include('personen.php'); break;
					default: include('menu.php'); break;						
				}
			//}


		?>
<footer>
  <!-- Footer main -->
	  <section class="ft-main">
	    <div class="ft-main-item">
	      <h2 class="ft-title">Telefoon nummers</h2>
	            <section>
	                <p><abbr title="Phone">Telefoonnummer owner 1:</abbr>+31 (6) 11476024</p>
	                <p><abbr title="Phone">Telefoonnummer owner 2:</abbr>+31 (6) 55016863</p>
	                <address>
	                  <strong>Email:</strong><a href="RoyaltyHairstyle@hotmail.com"> RoyaltyHairstyle@hotmail.com</a><br />
	                  <strong>Gmail:</strong><a href="RoyaltyHairstyle@Gmail.com"> RoyaltyHairstyle@gmail.com</a><br />
	                </address>
	                <p>Via email proberen we zo snel mogelijk te reageren.</p>
	                <p>We reageren meestal binnen 1-3 werkdagen</p>
	            </section>
	    </div>
	    <div class="ft-main-item">
	      <h2 class="ft-title">Email's</h2>
	            <section>
	                  <p>Zondag en Maandag: gesloten</p>
	                  <p>Dinsdag: 09:00 tot 18:00</p>
	                  <p>Woensdag: 09:00 tot 18:00</p>
	                  <p> Donderdag: 09:00 tot 20:00</p>
	                  <p>Vrijdag: 09:00 tot 18:00</p>
	                  <p>Zaterdag: 09:00 tot 17.00</p>
	            </section>
	    </div>
	        <!--<div class="ft-main-item">
	      <h2 class="ft-title">Contact</h2>
	      <ul>
	        <li><a href="#">Help</a></li>
	        <li><a href="#">Sales</a></li>
	        <li><a href="#">Advertise</a></li>
	      </ul>
	    </div>
	    <div class="ft-main-item">
	      <h2 class="ft-title">Stay Updated</h2>
	      <p>Subscribe to our newsletter to get our latest news.</p>
	      <form>
	        <input type="email" name="email" placeholder="Enter email address">
	        <input type="submit" value="Subscribe">
	      </form>
	    </div>-->
	  </section>
</footer>
<script>
	function w3_open() {
  document.getElementById("main").style.marginLeft = "25%";
  document.getElementById("mySidebar").style.width = "25%";
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("openNav").style.display = 'none';
}
function w3_close() {
  document.getElementById("main").style.marginLeft = "0%";
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("openNav").style.display = "inline-block";
}
</script>
</body>
</html>
