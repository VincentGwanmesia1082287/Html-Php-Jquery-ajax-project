<?php

	session_start();
	$mysqli = new mysqli($GLOBALS['server'],$GLOBALS['username'],$GLOBALS['password'],$GLOBALS['dbname']);

	if (mysqli_connect_errno()) {
	  echo json_encode(array('mysqli' => 'Failed to connect to MySQL: ' . mysqli_connect_error()));
	  exit;
	}

	$mysqli->query("SET NAMES utf8");

	$config_url = "http://localhost/Stage%20folder/Project%20klantenbeheer/local/";
	

?>