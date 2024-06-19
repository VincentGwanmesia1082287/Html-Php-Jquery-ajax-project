<?php

require_once '../../twoFactor.php';
Loader::register('assets/authenticator','RobThree\\Auth');
use \RobThree\Auth\TwoFactorAuth;
$tfa = new TwoFactorAuth($config_authenticatornaam);

if (isset($config_naam))
{
	$applicationname = preg_replace('/\s+/', '', $config_naam);
}


/**
 * Creates a token usable in a form
 * @return string
 */
function getToken(){
  $token = sha1(mt_rand());
  if(!isset($_SESSION['tokens'])){
	$_SESSION['tokens'] = array($token => 1);
  }
  else{
	$_SESSION['tokens'][$token] = 1;
  }
  return $token;
}

/**
 * Check if a token is valid. Removes it from the valid tokens list
 * @param string $token The token
 * @return bool
 */
function isTokenValid($token){
  if(!empty($_SESSION['tokens'][$token])){
	unset($_SESSION['tokens'][$token]);
	return true;
  }
  return false;
}


function GetSetFilterValue($variable)
{
	if (!isset($_SESSION[$variable]))
	{
	   $_SESSION[$variable] = "";
	}

	$changeditem = (isset($_POST[$variable])) ? $_POST[$variable] : ((isset($_GET[$variable])) ? $_GET[$variable] : '0');

	#echo "a: $changeditem ";

	if ($changeditem != "0")
	{
	   if ($changeditem == "all_allen") { $changeditem=""; }
	   $_SESSION[$variable] = $changeditem;
	}

	#echo "b: $variable: $_SESSION[$variable]<br />";
	
	return isset($_SESSION[$variable]) ? $_SESSION[$variable] : '0';
}

function GetSetFilterValueArray($variable)
{
	if (!isset($_SESSION[$variable]))
	{
	   $_SESSION[$variable] = array();
	}

	$changeditem = (isset($_POST[$variable])) ? $_POST[$variable] : ((isset($_GET[$variable])) ? $_GET[$variable] : array());

	#echo "a: $changeditem ";

	if (count($changeditem) > 0)
	{
	   if ($changeditem[0] == "all_allen") { $changeditem=array(); }
	   $_SESSION[$variable] = $changeditem;
	}

	#echo "b: $variable: $_SESSION[$variable]<br />";
	
	return isset($_SESSION[$variable]) ? $_SESSION[$variable] : array();
}

function ResetFilterValue($variable)
{
	$_SESSION[$variable] = "";
	return isset($_SESSION[$variable]) ? $_SESSION[$variable] : '0';
}

function ResetFilterValueArray($variable)
{
	$_SESSION[$variable] = array();
	return isset($_SESSION[$variable]) ? $_SESSION[$variable] : array();
}

function user_login($db)
{
	global $applicationname, $config_sessiename;
	
	if ($_SERVER['REQUEST_METHOD'] == 'POST')
	{
		$username = (isset($_POST['username'])) ? $_POST['username'] : '' ;
		$password = (isset($_POST['password'])) ? $_POST['password'] : '' ;
		$pageid = (isset($_POST['pageid'])) ? $_POST['pageid'] : '' ;

		if ($username != "" && $password != "")
		{
	         $sIp = $_SERVER['REMOTE_ADDR'];
			 $checkId = md5(Date("YmdHmi"));

			 $sqlstatement = $db->query("SELECT * FROM map_gebruikers WHERE gebruikersnaam='$username' AND del='0'"); 
			 if (mysqli_num_rows($sqlstatement))
			 {
				//willekeurige string maken 
				$sValidate=md5(rand(0,99999)); 

				while ($sqlresult = $sqlstatement->fetch_assoc())
				{
				   $internalUserId = $sqlresult["id"];
				   $internalName = $sqlresult["volledigenaam"];
				   $internalEmail = $sqlresult["email"];
				   $recht_lezenschrijven = $sqlresult["recht_lezenschrijven"];
				   $recht_beheer = $sqlresult["recht_beheer"];
				   $internallastip = $sqlresult["lastip"];
				   $internalPassword = $sqlresult["wachtwoord"];
				   $twofactor = $sqlresult["twofactor"];
				   $twofactorreset = $sqlresult["twofactorreset"];
				   $twofactoronoff = $sqlresult["twofactoronoff"];
				   $recht_financieel = $sqlresult["recht_financieel"];
				}

				if (!password_verify($password, $internalPassword))
				{
					 $error = "Voer een geldige gebruikersnaam of wachtwoord in";
					 return $error;
				}
				else
				{
					//de gegevens in de tabel zetten 
					$sqlstatement = $db->query("UPDATE map_gebruikers SET lastlogin=now(), lastip='$sIp', checkId='$checkId' WHERE gebruikersnaam='$username'"); 
		
					//de sessie gegevens schrijven 
					$_SESSION[$config_sessiename.'name']=$applicationname; 
					$_SESSION[$config_sessiename.'user_id']=$username; 
					$_SESSION[$config_sessiename.'checkid']=$checkId; 
					$_SESSION[$config_sessiename.'useremail']=$internalEmail; 
					$_SESSION[$config_sessiename.'userfullname']=$internalName; 
					$_SESSION[$config_sessiename.'internal_user_id']=$internalUserId; 
					$_SESSION[$config_sessiename.'ingelogd']=TRUE; 
					$_SESSION[$config_sessiename.'client_ip']=$sIp; 
					$_SESSION[$config_sessiename.'beheer']=$recht_beheer; 
					$_SESSION[$config_sessiename.'financieel']=$recht_financieel; 
					$_SESSION[$config_sessiename.'schrijven']=$recht_lezenschrijven; 
					$_SESSION[$config_sessiename.'twofactor'] = $twofactor;
					$_SESSION[$config_sessiename.'twofactorreset'] = $twofactorreset;
					
					if ($twofactoronoff == "0")
					{
						$_SESSION[$config_sessiename.'twofactorauthentication'] = "1";
					}
					else
					{
						$_SESSION[$config_sessiename.'twofactorauthentication'] = "";
					}
					
					$_SESSION['fil_uitgebreid'] = "1";

					$configs = $db -> select("SELECT *, DATE_FORMAT(filtervanaf, '%d-%m-%Y') as filtervanafformatted, DATE_FORMAT(filtertm, '%d-%m-%Y') as filtertmformatted, DATE_FORMAT(programmavanaf, '%d-%m-%Y') as programmavanafformatted, DATE_FORMAT(programmatm, '%d-%m-%Y') as programmatmformatted FROM map_config WHERE del='0' AND active='1' ORDER BY programmavanaf DESC");
					foreach ($configs as $config) 
					{
						$config_sessiename = $config['sessiename'];

						if ($config['filtervanafformatted'] == "00-00-0000" || $config['filtervanafformatted'] == "01-01-1970")
						{
							$config['filtervanafformatted'] = Date("d-m-Y");
						}

						if ($config['programmavanafformatted'] == "00-00-0000" || $config['programmavanafformatted'] == "01-01-1970")
						{
							$config['programmavanafformatted'] = Date("d-m-Y");
						}

						$_SESSION[$config_sessiename.'festivalevent'] = $config['id'];
						$_SESSION[$config_sessiename.'filtervanaf'] = $config['filtervanafformatted'];
						$_SESSION[$config_sessiename.'filertm'] = $config['filtertmformatted'];
						$_SESSION[$config_sessiename.'programmavanaf'] = $config['programmavanafformatted'];
						$_SESSION[$config_sessiename.'programmatm'] = $config['programmatmformatted'];
						$_SESSION[$config_sessiename.'datum'] = $config['programmavanafformatted'];
						$_SESSION['fil_datum'] = $config['filtervanafformatted'];
						$_SESSION['fil_datumtm'] = $config['filtertmformatted'];
						$_SESSION['periodEndDate'] = $config['filtertmformatted'];
						$_SESSION['period'] = $config['programmavanafformatted'];
						$_SESSION['blokkenschemaperiodEndDate'] = $config['filtertmformatted'];
						$_SESSION[$config_sessiename.'blokkenschemaperiod'] = $config['programmavanafformatted'];
						$_SESSION[$config_sessiename.'blokkenschemaview'] = 'timeline';
						unset($_SESSION[$config_sessiename.'view']);
						unset($_SESSION[$config_sessiename.'period']);
						unset($_SESSION[$config_sessiename.'soorten']);
						unset($_SESSION[$config_sessiename.'locaties']);
						$_SESSION['fil_actiedatum'] = $config['filtervanafformatted'];
						$_SESSION['fil_actiedatumtm'] = $config['filtertmformatted'];
					
						$projecten = $db -> select("SELECT * FROM lst_projecten WHERE festivalevent='".$config['id']."' AND actief='1' AND del='0' ORDER BY naam");
						if (count($projecten) > 0)
						{
							foreach ($projecten as $project) 
							{
								$_SESSION[$config_sessiename.'festivaleventproject'] = $project['id'];
							}
						}
						else
						{
							$_SESSION[$config_sessiename.'festivaleventproject'] = 0;
						}

					}

					
					if ($pageid != null)
					{
						if ($pageid == "logout")
						{
						   Header("Location: index.php"); 
						}
						else
						{
						   if ($pageid == "" || $pageid == "login")
						   {
							  Header("Location: index.php"); 
						   }
						   else
						   {
							  Header("Location: index.php?page=$pageid"); 
						   }
						}
					}
				}

			 }
			 else
			 {
				 $error = "Voer een geldige gebruikersnaam of wachtwoord in";
				 return $error;
			 }
		}
		else
		{
			$error = "Voer een geldige gebruikersnaam of wachtwoord in";
			return $error;
		}

	}
	else
	{
		$error = "Technische fout (action methode)";
		return $error;
	}
}

function GetActiveFestival()
{
	global $config_sessiename;
	return $_SESSION[$config_sessiename.'festivalevent'];
}

function GetLoginUserFullName()
{
	global $config_sessiename;
	return $_SESSION[$config_sessiename.'userfullname'];
}

function GetIngelogdeGebruikerId()
{
	global $config_sessiename;
	if (isset($_SESSION[$config_sessiename.'internal_user_id']))
	{
		return $_SESSION[$config_sessiename.'internal_user_id'];
	}
	else
	{
		return "";
	}
}

function GetIngelogdeGebruikerEmail()
{
	global $config_sessiename;
	return $_SESSION[$config_sessiename.'email'];
}

function checkLogin()
{
	$bLogin=FALSE; 
	global $db;
	global $applicationname;
	global $config_sessiename;

#echo "ip:".$_SESSION['app_client_ip']."=".$_SERVER['REMOTE_ADDR']."<br />";
#echo "app_name:".$_SESSION['app_name']."=".$applicationname."<br />";
#echo "app_user_id:".$_SESSION['app_name']."<br />";
#echo "app_internal_user_id:".$_SESSION['app_internal_user_id']."<br />";
#echo "app_ingelogd:".$_SESSION['app_ingelogd']."<br />";

#&& $_SESSION['app_client_ip']==$_SERVER['REMOTE_ADDR'] 

	if(isset($_SESSION[$config_sessiename.'client_ip']) 
			&& isset($_SESSION[$config_sessiename.'name']) && $_SESSION[$config_sessiename.'name'] == $applicationname
			&& isset($_SESSION[$config_sessiename.'user_id']) && isset($_SESSION[$config_sessiename.'internal_user_id']) && isset($_SESSION[$config_sessiename.'ingelogd']) && $_SESSION[$config_sessiename.'ingelogd']===TRUE) 
	{ 
			 $sqlstatement = $db->query("SELECT checkId, recht_meerderegebruikersinloggen FROM map_gebruikers WHERE id='".GetIngelogdeGebruikerId()."'"); 
			 if (mysqli_num_rows($sqlstatement))
			 {
				while ($sqlresult = $sqlstatement->fetch_assoc())
				{
				   $internalcheckId = $sqlresult["checkId"];
				   $recht_meerderegebruikersinloggen = $sqlresult["recht_meerderegebruikersinloggen"];

				   #echo $_SESSION[$config_sessiename.'checkid']."==$internalcheckId";

				   if((isset($_SESSION[$config_sessiename.'checkid']) && $_SESSION[$config_sessiename.'checkid']==$internalcheckId) || $recht_meerderegebruikersinloggen == "1") 
				   {
				   		return 1; 
				   }
				   else
				   {
					   $sqlstatement = $db->query("UPDATE map_gebruikers SET checkId='' WHERE id='".GetIngelogdeGebruikerId()."'"); 

					   $_SESSION[$config_sessiename.'name']=""; 
					   $_SESSION[$config_sessiename.'ingelogd']=FALSE; 
					   $_SESSION[$config_sessiename.'client_ip']=$_SERVER['REMOTE_ADDR']; 
					   $_SESSION[$config_sessiename.'useremail']=""; 
					   $_SESSION[$config_sessiename.'user_id']="";
					   $_SESSION[$config_sessiename.'checkid']="";
					   $_SESSION[$config_sessiename.'internal_user_id']="";
					   $_SESSION[$config_sessiename.'organisatieid'] = "";
					   $_SESSION[$config_sessiename.'isgemeente'] = "";
					   $_SESSION[$config_sessiename.'iswerkbedrijf'] = "";
					   $_SESSION[$config_sessiename.'isanders'] = "";
					   $_SESSION[$config_sessiename.'financieel'] = "";
					   $_SESSION['gekozenorganisatieid'] = "";

				   	   return 0; 
				   }
				   
				}
			 }
			 else
			 {
				$_SESSION[$config_sessiename.'ingelogd'] = FALSE;
				return 0;
			 }
	} 
	else
	{
		$_SESSION[$config_sessiename.'ingelogd'] = FALSE;
		return 0;
	}
}

function UserCheckedIn()
{
	global $config_sessiename;
	return (!empty($_SESSION[$config_sessiename.'ingelogd']));
}

function HeeftBeheerRechten()
{
	global $config_sessiename;
	if (isset($_SESSION[$config_sessiename.'beheer']) && $_SESSION[$config_sessiename.'beheer'] == "1")
	{
	   return TRUE;
	}
	else
	{
	   return FALSE;
	}
}

function HeeftFinancieelRechten()
{
	global $config_sessiename;
	if (isset($_SESSION[$config_sessiename.'financieel']) && $_SESSION[$config_sessiename.'financieel'] == "1")
	{
	   return TRUE;
	}
	else
	{
	   return FALSE;
	}
}

function HeeftLicentie()
{
	global $config_sessiename;
	if (isset($_SESSION[$config_sessiename.'schrijven']) && ($_SESSION[$config_sessiename.'schrijven'] == "1" || $_SESSION[$config_sessiename.'schrijven'] == "2"))
	{
	   return TRUE;
	}
	else
	{
	   return FALSE;
	}
}

function HeeftSchrijfRechten()
{
	global $config_sessiename;
	if (isset($_SESSION[$config_sessiename.'schrijven']) && $_SESSION[$config_sessiename.'schrijven'] == "2")
	{
	   return TRUE;
	}
	else
	{
	   return FALSE;
	}
}

function HeeftLeesRechten()
{
	global $config_sessiename;
	if (isset($_SESSION[$config_sessiename.'schrijven']) && $_SESSION[$config_sessiename.'schrijven'] == "1")
	{
	   return TRUE;
	}
	else
	{
	   return FALSE;
	}
}

function HeeftToegangsRecht($db, $tabblad, $gebruiker, $aanvraag)
{
	# Ophalen aantal ingeplande items bij een activiteit

	global $db, $config_database;
	global $config_sessiename;
	$toegangsrecht = -1;
	
	$sqlwhere = "";
	switch($aanvraag)
	{
		case 'toegang': $sqlwhere = " AND (waarde=1 OR waarde=2) "; break;
		case 'lezen': $sqlwhere = " AND waarde=1 "; break;
		case 'wijzigen': $sqlwhere = " AND waarde=2 "; break;
		case 'nieuw': $sqlwhere = " AND waarde=3 "; break;
		case 'verwijderen': $sqlwhere = " AND waarde=4 "; break;
		case 'exporteren': $sqlwhere = " AND waarde=5 "; break;
		case 'zoeken': $sqlwhere = " AND waarde=6 "; break;
	}

	$autorisatierollen = array();

	$sqlstatement = $db->query("SELECT autorisatierol FROM map_autorisatie WHERE tabblad='$tabblad' AND del='0' $sqlwhere"); 
  	while ($result = $sqlstatement->fetch_assoc())
  	{
  		array_push($autorisatierollen,$result["autorisatierol"]);
  	}
	
	#echo $aanvraag;
	#print_r($autorisatierollen);

	$sqlwhere = "1=2 ";
	foreach ($autorisatierollen as $autorisatierol)
	{
		$sqlwhere .= "OR autorisatierol=".$autorisatierol." ";
	}

	$sqlstatement = $db->query("SELECT autorisatierol FROM map_gebruikersautorisatierol WHERE gebruiker='$gebruiker' AND ($sqlwhere)"); 
	if (mysqli_num_rows($sqlstatement))
	{
		return "true";
	}
	else
	{
		return "false";
	}
}

function GetDayOfWeek($date)
{
	switch(date('w', strtotime($date)))
	{
		case '0': return "zo"; break;
		case '1': return "ma"; break;
		case '2': return "di"; break;
		case '3': return "wo"; break;
		case '4': return "do"; break;
		case '5': return "vr"; break;
		case '6': return "za"; break;
	}

}


function GetFullDayOfWeek($date)
{
	switch(date('w', strtotime($date)))
	{
		case '0': return "zondag"; break;
		case '1': return "maandag"; break;
		case '2': return "dinsdag"; break;
		case '3': return "woensdag"; break;
		case '4': return "donderdag"; break;
		case '5': return "vrijdag"; break;
		case '6': return "zaterdag"; break;
	}

}

function GetTwoFactorCode()
{
	global $config_sessiename;
	return $_SESSION[$config_sessiename.'twofactor'];
}

function TwoFactorReset()
{
	global $config_sessiename;
	return ($_SESSION[$config_sessiename.'twofactorreset'] == 1);
}

function CheckTwoFactorAuthentication($con)
{
	global $config_sessiename;
	global $tfa;
	
	$secret = GetTwoFactorCode();
	$code = $tfa->getCode($secret);

	$twofactor = (isset($_POST['twofactor'])) ? $_POST['twofactor'] : '' ;
	$twofactor = preg_replace('/[^0-9]+/', '', $twofactor);

	if ($twofactor == $code)
	{
		$userid = GetIngelogdeGebruikerId();
		
		$sqlstatement = $con->query("UPDATE map_gebruikers SET twofactorreset='0' WHERE id='$userid'"); 
		$_SESSION[$config_sessiename.'twofactorauthentication'] = "1";
		Header("Location: index.php");
	}
	else
	{
		$error = "Foutieve code. Probeer het opnieuw.";
		return $error;
	}
}

function TwoFactorAuthenticated()
{
	global $config_sessiename;
	return (!empty($_SESSION[$config_sessiename.'twofactorauthentication']));
}


function search($array, $key, $value)
{
	$results = array();

	if (is_array($array)) {
		if (isset($array[$key]) && $array[$key] == $value) {
			$results[] = $array;
		}

		foreach ($array as $subarray) {
			$results = array_merge($results, search($subarray, $key, $value));
		}
	}

	return $results;
}

function GetLastPageLink()
{
	global $db, $config_sessiename, $config_toonuitvoerderspositie, $config_toonuitvoerders;
	
	$vorigepaginanaam = "";
	$vorigepaginaurl = "";
	if (isset($_SESSION['laatstgeraadpleegd']))
	{
		$queryString = $_SERVER['QUERY_STRING'];
		$items = array_reverse($_SESSION['laatstgeraadpleegd']);
		foreach ($items as $item)
		{
			if ($item != $queryString)
			{
				$tempitem = explode("&",$item);
				if (isset($tempitem[0]) && isset($tempitem[1]) && $tempitem[0] == "page=itemdetails")
				{
					$detailid = explode("=",$tempitem[1]);

					if (isset($detailid[0]) && isset($detailid[1]))
					{
						switch ($detailid[0])
						{
							case 'eventid': 	
											$eventinfos = $db -> select("SELECT a.uitvoerders, a.text as activiteitnaam FROM lst_activities a WHERE a.id='" . $detailid[1] . "' AND a.del='0'");
											foreach ($eventinfos as $eventinfo) 
											{
												$evenementnaam = $eventinfo['activiteitnaam'];
												$uitvoerders = $eventinfo['uitvoerders'];
											}

											break;

							case 'persoonid': 	
											$eventinfos = $db -> select("SELECT p.voornaam, p.tussenvoegsel, p.volledigenaam FROM map_personen p WHERE p.id='" . $detailid[1] . "' AND p.del='0'");
											foreach ($eventinfos as $eventinfo) 
											{
												$evenementnaam = $eventinfo['voornaam']." ".$eventinfo['tussenvoegsel']." ".$eventinfo['volledigenaam'];
												$uitvoerders = "";
											}

											break;

							case 'vrijwilligerid': 	
											$eventinfos = $db -> select("SELECT v.voornaam, v.tussenvoegsel, v.volledigenaam FROM map_vrijwilligers v WHERE v.id='" . $detailid[1] . "' AND v.del='0'");
											foreach ($eventinfos as $eventinfo) 
											{
												$evenementnaam = $eventinfo['voornaam']." ".$eventinfo['tussenvoegsel']." ".$eventinfo['volledigenaam'];
												$uitvoerders = "";
											}

											break;

							case 'podiaid': 	
											$eventinfos = $db -> select("SELECT p.label, p.differentlabel FROM lst_rooms p WHERE p.id='" . $detailid[1] . "' AND p.del='0'");
											foreach ($eventinfos as $eventinfo) 
											{
												$evenementnaam = $eventinfo['label']." (".$eventinfo['differentlabel'].")";
												$uitvoerders = "";
											}

											break;

						}
					}
					

					switch ($config_toonuitvoerderspositie)
					{
						case '0': 
									$vorigepaginanaam .= $evenementnaam;
									$vorigepaginaurl = "index.php?".$item;
									break;

						case '1': 
									if ($config_toonuitvoerders == "1" && $uitvoerders != "")
									{
										$vorigepaginanaam .= $uitvoerders." - ";
									}

									$vorigepaginanaam .=  $evenementnaam;
									$vorigepaginaurl = "index.php?".$item;
									break;

						case '2': 
									$vorigepaginanaam .=  $evenementnaam;
									$vorigepaginaurl = "index.php?".$item;

									if ($config_toonuitvoerders == "1" && $uitvoerders != "") 
									{
										$vorigepaginanaam .=  " - ".$uitvoerders;
									}

									break;
					}


				}
				break;
			}
		}
	}

	if ($vorigepaginanaam != "" && $vorigepaginaurl != "")
	{
		return "<a href=\"".$vorigepaginaurl."\" style=\"text-decoration:underline\">".$vorigepaginanaam."</a>";
	}
	else
	{
		return "";
	}
}

function user_logout()
{
	global $db;
	global $config_sessiename;
	
	$userid = @$_SESSION[$config_sessiename.'user_id'];
		
	if (isset($userid))
	{
	   $_SESSION[$config_sessiename.'name']=""; 
	   $_SESSION[$config_sessiename.'ingelogd']=FALSE; 
	   $_SESSION[$config_sessiename.'client_ip']=$_SERVER['REMOTE_ADDR']; 
	   $_SESSION[$config_sessiename.'useremail']=""; 
	   $_SESSION[$config_sessiename.'user_id']="";
	   $_SESSION[$config_sessiename.'checkid']="";
	   $_SESSION[$config_sessiename.'internal_user_id']="";
	   $_SESSION[$config_sessiename.'organisatieid'] = "";
	   $_SESSION[$config_sessiename.'isgemeente'] = "";
	   $_SESSION[$config_sessiename.'iswerkbedrijf'] = "";
	   $_SESSION[$config_sessiename.'isanders'] = "";
	   $_SESSION[$config_sessiename.'financieel'] = "";

	   $_SESSION['period'] = "";
	   $_SESSION['gekozenorganisatieid'] = "";
	   unset($_SESSION[$config_sessiename.'datum']);
	}
}

	function dec_enc($action, $string) 
	{

		/*
		$output = false;
 
		$encrypt_method = "AES-256-CBC";
		$secret_key = '2k1jIAoDgokGcoOmB+zqC0VzWlxJdbGm';
		$secret_iv = '2k1jIAoDgokGcoOmB+zqC75VHS+VFQXwdKoJRYe11UU=';
 
		// hash
		$key = hash('sha256', $secret_key);
	
		// iv - encrypt method AES-256-CBC expects 16 bytes - else you will get a warning
		$iv = substr(hash('sha256', $secret_iv), 0, 16);
 
		if( $action == 'encrypt' ) {
			$output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
			$output = base64_encode($output);
		}
		else if( $action == 'decrypt' ){
			$output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
		}
 
		return $output;
		*/
		
		return $string;
	}


	function formatSizeUnits($bytes)
    {
        if ($bytes >= 1073741824)
        {
            $bytes = number_format($bytes / 1073741824, 2) . ' GB';
        }
        elseif ($bytes >= 1048576)
        {
            $bytes = number_format($bytes / 1048576, 2) . ' MB';
        }
        elseif ($bytes >= 1024)
        {
            $bytes = number_format($bytes / 1024, 2) . ' KB';
        }
        elseif ($bytes > 1)
        {
            $bytes = $bytes . ' bytes';
        }
        elseif ($bytes == 1)
        {
            $bytes = $bytes . ' byte';
        }
        else
        {
            $bytes = '0 bytes';
        }

        return $bytes;
	}

?>