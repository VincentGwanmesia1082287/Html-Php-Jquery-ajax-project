<?php

	session_start();

	date_default_timezone_set('Europe/Amsterdam');
	$config_url = "http://localhost/ProjectJulia/klantenbeheer/";
	
	$page = (isset($_GET['page'])) ? $_GET['page'] : '' ;

	if (!isset($GLOBALS['server']))
	{
		die("Start via de URL /royalty/login");
	}
	
	include("global.php");
	$db = new Db();    
	
	$input = filter_input_array(INPUT_POST);
	if (!isset($input['action']) || empty($input['action']))
	{
		$input = filter_input_array(INPUT_GET);
	}

	$config_url = "http://localhost/ProjectJulia/klantenbeheer/";

?>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <!-- Force latest IE, Google Chrome Frame for IE -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="description" content="jQuery plugin for responsive and accessible modal windows and tooltips." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Royalty</title>

    <link rel="stylesheet" type="text/css" href="<?php echo $config_url; ?>/css/stijl.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $config_url; ?>/css/style.css">
	<link rel="stylesheet" href="<?php echo $config_url; ?>/assets/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="<?php echo $config_url; ?>/assets/css/responsivetabs.css"> <!-- Resource style -->
	<link rel="stylesheet" href="<?php echo $config_url; ?>/assets/css/sumoselect.min.css">
	<script src="<?php echo $config_url; ?>/assets/js/modernizr.js"></script> <!-- Modernizr -->

	<link rel="stylesheet" href="<?php echo $config_url; ?>/assets/responsivetable.css" />
    <link rel="stylesheet" href="<?php echo $config_url; ?>/assets/slicknav/slicknav.min.css">
	<link rel="stylesheet" href="<?php echo $config_url; ?>/assets/dropit.css" type="text/css" />

	<link rel="stylesheet" href="<?php echo $config_url; ?>/assets/css/dropzonesmall.css" />

	<link rel="preconnect" href="https://fonts.gstatic.com"> 
	<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome icons -->
    <link href="<?php echo $config_url; ?>/assets/fontawesome-5.13.1/css/fontawesome.css" rel="stylesheet">
    <link href="<?php echo $config_url; ?>/assets/fontawesome-5.13.1/css/brands.css" rel="stylesheet">
    <link href="<?php echo $config_url; ?>/assets/fontawesome-5.13.1/css/solid.css" rel="stylesheet">  

    <script src="https://kit.fontawesome.com/5c8917b85a.js" crossorigin="anonymous"></script>    
    
	<link rel="stylesheet" href="<?php echo $config_url; ?>/assets/js/pure-release-0.6.2/pure-min.css">

	<link rel="stylesheet" href="<?php echo $config_url; ?>/assets/js/bootstrap-3.3.7-dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo $config_url; ?>/assets/js/jquery-ui-1.11.4/jquery-ui.theme.css">
	<link href="<?php echo $config_url; ?>/assets/css/datepicker.min.css" rel="stylesheet" type="text/css">
	<link href="<?php echo $config_url; ?>/assets/css/jquery.multiselect.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="<?php echo $config_url; ?>/assets/navigation-dark3.css">
	<link rel="stylesheet" href="<?php echo $config_url; ?>/assets/css/tippy_scale.css"/>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">



	<!--[if lte IE 8]>
		<link rel="stylesheet" href="<?php echo $config_url; ?>/assets/js/pure-release-0.6.2/grids-responsive-old-ie-min.css">
	<![endif]-->
	<!--[if gt IE 8]><!-->
		  <link rel="stylesheet" href="<?php echo $config_url; ?>/assets/js/pure-release-0.6.2/grids-responsive-min.css">
	<!--<![endif]-->

	<script src="<?php echo $config_url; ?>/assets/js/jquery.min.js"></script>
	<script src="<?php echo $config_url; ?>/assets/js/jquery-ui-1.11.4/jquery-ui.min.js"></script>

	<script src="<?php echo $config_url; ?>/assets/js/jquery.tabledit.min.js"></script>
	<script type="text/javascript" src="<?php echo $config_url; ?>/assets/js/jquery.maskedinput.js"></script>
	<script src="<?php echo $config_url; ?>/assets/js/responsivetabs.js"></script> <!-- Resource jQuery -->

    <script src="<?php echo $config_url; ?>/assets/js/datepicker.min.js"></script>
    <script src="<?php echo $config_url; ?>/assets/js/jquery.sumoselect.js"></script>
    <script src="<?php echo $config_url; ?>/assets/js/jquery.multiselect.js"></script>

	<script type="text/javascript" src="<?php echo $config_url; ?>/assets/js/tableHeadFixer.js"></script>
	<!-- <script type="text/javascript" src="<?php echo $config_url; ?>/assets/js/cropzee.js"></script> //-->

    <!-- jQuery Popup Overlay -->
    <script src="<?php echo $config_url; ?>/assets/js/jquery.popupoverlay.js"></script>

	<!-- Navigation //-->
	<script src="<?php echo $config_url; ?>/assets/js/popper.js"></script>
	<script src="<?php echo $config_url; ?>/assets/js/tippy.js"></script>

	<!--font awesome-->
	<script src="https://kit.fontawesome.com/5c8917b85a.js" crossorigin="anonymous"></script>



</head>

<body>
		

		<?php
			// Check user login or not
			if ($page == "logout")
			{
				unset($_SESSION['uname']);
			}

			if(!isset($_SESSION['uname']))
			{
			   include('login.php');
			}
			else
			{
					echo  "<div class=\"w3-sidebar w3-bar-block w3-card w3-animate-left\" style=\"display:none\" id=\"mySidebar\">";
					echo		"<button class=\"w3-bar-item w3-button w3-large\" onclick=\"w3_close()\">Close &times;</button>";
					echo		"<a href=\"index.php\" class=\"w3-bar-item w3-button\">Reserveeringen</a>";
					echo		"<a href=\"?page=frmsoort\" class=\"w3-bar-item w3-button\">Haarstylen</a>";
					echo		"<a href=\"?page=logout\" class=\"w3-bar-item w3-button\"><i class=\"fa-solid fa-right-from-bracket fa-beat\"></i></a>";
					echo	"</div>";

					echo	"<div id=\"main\">";

					echo	"<div class=\"topnav\" id=\"fortell\">";
					echo	  "<button id=\"openNav\" class=\"w3-button topnav w3-xlarge\" onclick=\"w3_open()\">&#9776;</button>";
					echo	  "<div class=\"w3-container\">";
					echo	    "<h1>Royalty</h1>";
					echo	  "</div>";
					echo	"</div>";

					echo	"<div class=\"topnav\" id=\"forpc\">";
					echo	  "<h1 class=\"colorwhite\">Royalty</h1>";
					echo		"<a href=\"index.php\" class=\"w3-bar-item w3-button\">Reserveeringen</a>";
					echo		"<a href=\"?page=frmsoort\" class=\"w3-bar-item w3-button\">Haarstylen</a>";
					echo		"<a href=\"?page=logout\" class=\"w3-bar-item w3-button logout\"><i class=\"fa-solid fa-right-from-bracket fa-beat\"></i></a>";
					echo	"</div>";

				switch($page)
				{
					case 'frmsoort': include('frmsoort.php'); break;
					case 'frmprijs': include('frmprijs.php'); break;
					default: include('frmklant.php'); break;					
				}
			}


		?>

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
