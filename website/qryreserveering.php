<?php    
include("qryGlobal.php");

$input = filter_input_array(INPUT_POST);

if (isset($input['naam']) && empty($input['naam']))
{
	$data = ['error', 'Naam is verplicht', basename($_SERVER['PHP_SELF'])];
	header('Content-type:application/json;charset=utf-8');
	echo json_encode($data);
	die();
}
else
{
//$checksum = md5(Date("YmdHis")."activit31t");
	$result = $mysqli->query("INSERT INTO reserveeringen (naam, achternaam, telefoon, email, skillid, prijsid, datum, personeel)  VALUES ('". mysqli_real_escape_string($mysqli, $input['naam']) . "','" . mysqli_real_escape_string($mysqli, $input['achternaam']) . "','".mysqli_real_escape_string($mysqli, $input['telefoon']) . "','".mysqli_real_escape_string($mysqli, $input['email']) . "','".mysqli_real_escape_string($mysqli, $input['keuze']) . "','".mysqli_real_escape_string($mysqli, $input['style']) . "','".mysqli_real_escape_string($mysqli, $input['datum']) . "','".mysqli_real_escape_string($mysqli, $input['personeel']) . "')"); 

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
?>