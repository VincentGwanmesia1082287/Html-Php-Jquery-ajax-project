<?php    
include("qryGlobal.php");
  
$input = filter_input_array(INPUT_POST);

$returnvalue = array();

//print_r("SELECT prijsid, haartype, prijs FROM prijzenlijst WHERE del='0' AND skillid='".$input['skillid']."' AND personeelid='".$input['personeel']."'ORDER BY prijsid");
$results = $mysqli->query("SELECT prijsid, haartype, prijs FROM prijzenlijst WHERE del='0' AND skillid='".$input['skillid']."' AND personeelid='".$input['personeel']."'ORDER BY prijsid");
foreach( $results as $result)
	{
	$item = array();
	$item['prijsid'] = $result['prijsid'];
	$item['haartype'] = $result['haartype'];
	$item['prijs'] = $result['prijs'];
	array_push($returnvalue,$item);
	}

header('Content-Type: application/json');
echo json_encode($returnvalue);	

mysqli_close($mysqli);
?>