<?php

include("qryGlobal.php");

$input = filter_input_array(INPUT_POST);
if (!isset($input['action']) || empty($input['action']))
{
	$input = filter_input_array(INPUT_GET);
}

if (isset($input['naam']) && empty($input['naam']))
{
	$data = ['error', 'Naam is verplicht', basename($_SERVER['PHP_SELF'])];
	header('Content-type:application/json;charset=utf-8');
	echo json_encode($data);
	die();
}
else
{
	$result = -1;
	if ($input['action'] === 'edit' && isset($input['klantid']) && $input['klantid'] != '') 
	{
		$result = $mysqli->query("UPDATE reserveeringen SET naam = '" . mysqli_real_escape_string($mysqli, $input['naam']) . "', achternaam = '" . mysqli_real_escape_string($mysqli, $input['achternaam']) . "', telefoon = '".mysqli_real_escape_string($mysqli, $input['telefoon']) . "', email = '".mysqli_real_escape_string($mysqli, $input['email']) . "', skillid = '".mysqli_real_escape_string($mysqli, $input['keuze']) . "', prijsid = '".mysqli_real_escape_string($mysqli, $input['style']) . "', datum = '".mysqli_real_escape_string($mysqli, $input['datum']) . "', personeel = '".mysqli_real_escape_string($mysqli, $input['personeel']) . "' WHERE klantid='" . $input['klantid']  . "'");

	} 
	else if ($input['action'] === 'delete' && isset($input['klantid']) && $input['klantid'] != '')
	{
		$result = $mysqli->query("UPDATE reserveeringen SET del='-1' WHERE klantid='" . $input['klantid'] . "'");
	} 
	else if ($input['action'] === 'restore' && isset($input['klantid']) && $input['klantid'] != '')
	{
		$result = $mysqli->query("UPDATE reserveeringen SET del='0' WHERE klantid='" . $input['klantid'] . "'");
	} 
	else if ($input['action'] === 'add')
	{
		$result = $mysqli->query("INSERT INTO reserveeringen (naam, achternaam, telefoon, email, skillid, prijsid, datum, personeel)  VALUES ('". mysqli_real_escape_string($mysqli, $input['naam']) . "','" . mysqli_real_escape_string($mysqli, $input['achternaam']) . "','".mysqli_real_escape_string($mysqli, $input['telefoon']) . "','".mysqli_real_escape_string($mysqli, $input['email']) . "','".mysqli_real_escape_string($mysqli, $input['keuze']) . "','".mysqli_real_escape_string($mysqli, $input['style']) ."','".mysqli_real_escape_string($mysqli, $input['datum']) . "','".mysqli_real_escape_string($mysqli, $input['personeel']) . "')");  

//mysqli_real_escape_string($mysqli, $input['bedrijfsnaam'])

	}
	else if ($input['action'] === 'select') 
	{
		$result = $mysqli->query("SELECT naam, achternaam, telefoon, email, skillid, prijsid, datum, personeel FROM reserveeringen WHERE del='0' AND klantid='" . $input['klantid'] . "'");
		$input = mysqli_fetch_row($result); 
	}

	if(empty($result))
	{
		$data = ['error', 'Technische fout bij het opslaan van de gegevens: '.mysqli_error($mysqli).'', basename($_SERVER['PHP_SELF'])];
		header('Content-type:application/json;charset=utf-8');
		echo json_encode($data);
		die();
	}
	else
	{
		header('Content-Type: application/json');
		echo json_encode($input);
	}
}

mysqli_close($mysqli);