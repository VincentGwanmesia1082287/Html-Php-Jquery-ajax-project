<?php

	include("configdb.php");	

	$input = filter_input_array(INPUT_GET);
	set_include_path("../../"); 

	if (isset($input['e']) && $input['e'] != "")
	{
		include($input['e'].".php");
	}
	else
	{
		$data = ['error', 'Technische fout: geen query geselecteerd', basename($_SERVER['PHP_SELF'])];
		header('Content-type:application/json;charset=utf-8');
		echo json_encode($data);
		die();
	}
		

?>