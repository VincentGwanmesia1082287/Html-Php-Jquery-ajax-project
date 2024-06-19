<?php

	$input = filter_input_array(INPUT_POST);
	if (!isset($input) || empty($input))
	{
		$input = filter_input_array(INPUT_GET);
	}

	session_start();
	date_default_timezone_set('Europe/Amsterdam');

	include("global.php");

	$db = new Db();    

	$zoekterm = (isset($_GET['zoekterm'])) ? $_GET['zoekterm'] : '' ;
	
	if ($zoekterm != "")
	{
		$data = $db -> select("SELECT * FROM lst_categorie WHERE naam LIKE '".$zoekterm."%'");

		echo json_encode($data);
		die();

	}
	else
	{
		$data = ['error', 'Er is iets verkeerds gegaan', basename($_SERVER['PHP_SELF'])];
		header('Content-type:application/json;charset=utf-8');
		echo json_encode($data);
		die();
	}
?>
		
