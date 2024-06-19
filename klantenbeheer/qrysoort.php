<?php

include("qryGlobal.php");

$input = filter_input_array(INPUT_POST);
if (!isset($input['action']) || empty($input['action']))
{
	$input = filter_input_array(INPUT_GET);
}
$personeelid = $_SESSION['personeel'];

if (isset($input['soorthaar']) && empty($input['soorthaar']))
{
	$data = ['error', 'haartype is verplicht', basename($_SERVER['PHP_SELF'])];
	header('Content-type:application/json;charset=utf-8');
	echo json_encode($data);
	die();
}
else
{

	$result = -1;
	if ($input['action'] === 'edit' && isset($input['skillid']) && $input['skillid'] != '') 
	{
		$result = $mysqli->query("UPDATE skills SET personeelid = '" . mysqli_real_escape_string($mysqli, $personeelid) . "', soorthaar = '" . mysqli_real_escape_string($mysqli, $input['soorthaar']) . "' WHERE skillid='" . $input['skillid']  . "'");

	} 
	else if ($input['action'] === 'delete' && isset($input['skillid']) && $input['skillid'] != '')
	{
		$result = $mysqli->query("UPDATE skills SET del='-1' WHERE skillid='" . $input['skillid'] . "'");
	} 
	else if ($input['action'] === 'restore' && isset($input['skillid']) && $input['skillid'] != '')
	{
		$result = $mysqli->query("UPDATE skills SET del='0' WHERE skillid='" . $input['skillid'] . "'");
	} 
	else if ($input['action'] === 'add')
	{
		$result = $mysqli->query("INSERT INTO skills (personeelid, soorthaar)  VALUES ('". mysqli_real_escape_string($mysqli, $personeelid) . "','". mysqli_real_escape_string($mysqli, $input['soorthaar']) . "')");  

	}
	else if ($input['action'] === 'select') 
	{
		$result = $mysqli->query("SELECT soorthaar FROM skills WHERE del='0' AND skillid='" . $input['skillid'] . "'");
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