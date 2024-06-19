<?php

include("qryGlobal.php");

$input = filter_input_array(INPUT_POST);
if (!isset($input['action']) || empty($input['action']))
{
	$input = filter_input_array(INPUT_GET);
}
$personeelid = $_SESSION['personeel'];

if (isset($input['haartype']) && empty($input['haartype']))
{
	$data = ['error', 'haartype is verplicht', basename($_SERVER['PHP_SELF'])];
	header('Content-type:application/json;charset=utf-8');
	echo json_encode($data);
	die();
}
else
{

	$result = -1;
	if ($input['action'] === 'edit' && isset($input['prijsid']) && $input['prijsid'] != '') 
	{
		$result = $mysqli->query("UPDATE prijzenlijst SET skillid = '" . mysqli_real_escape_string($mysqli, $input['skillid']) . "', personeelid = '" . mysqli_real_escape_string($mysqli, $personeelid) . "', haartype = '" . mysqli_real_escape_string($mysqli, $input['haartype']) . "', prijs = '".mysqli_real_escape_string($mysqli, $input['prijs']) . "' WHERE prijsid='" . $input['prijsid']  . "'");

	} 
	else if ($input['action'] === 'delete' && isset($input['prijsid']) && $input['prijsid'] != '')
	{
		$result = $mysqli->query("UPDATE prijzenlijst SET del='-1' WHERE prijsid='" . $input['prijsid'] . "'");
	} 
	else if ($input['action'] === 'restore' && isset($input['prijsid']) && $input['prijsid'] != '')
	{
		$result = $mysqli->query("UPDATE prijzenlijst SET del='0' WHERE prijsid='" . $input['prijsid'] . "'");
	} 
	else if ($input['action'] === 'add')
	{
		$result = $mysqli->query("INSERT INTO prijzenlijst (skillid, personeelid, haartype, prijs)  VALUES ('". mysqli_real_escape_string($mysqli, $input['skillid']) . "','". mysqli_real_escape_string($mysqli, $personeelid) . "','" . mysqli_real_escape_string($mysqli, $input['haartype']) . "','".mysqli_real_escape_string($mysqli, $input['prijs']) . "')");  

	}
	else if ($input['action'] === 'select') 
	{
		$result = $mysqli->query("SELECT skillid, haartype, prijs FROM prijzenlijst WHERE del='0' AND prijsid='" . $input['prijsid'] . "'");
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