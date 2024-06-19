<?php
require('fpdf.php');
include("../../qryGlobal.php");
require_once('../../vendor/autoload.php');

use setasign\Fpdi\Fpdi;
use setasign\Fpdi\PdfReader;

//$pdf = new Fpdi();

$input = filter_input_array(INPUT_POST);
if (!isset($input['action']) || empty($input['action']))
{
	$input = filter_input_array(INPUT_GET);
}


	$rows = $mysqli -> query("SELECT document,handtekening FROM documenten WHERE klantid='".$input['klantid']."' AND docid='".$input['docid']."' AND del='0'");
			foreach ($rows as $row) 
			{
				$document = $row['document'];
				$handtekening = $row['handtekening'];
			}
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',16);
$pdf->Write(5,'Visit '.$document);
// Insert a logo in the top-left corner at 300 dpi
$pdf->Image('../../share/handtekeningen/handtekeningDocid15.png',60,30,90,0,);
$pdf->Output();

$pageCount = $pdf->setSourceFile('../../share/docs/cv vincent gwanmesia 2022.pdf');
$pageId = $pdf->importPage(1, PdfReader\PageBoundaries::MEDIA_BOX);

$pdf->addPage();
$pdf->useImportedPage($pageId, 10, 10, 90);

$pdf->Output('I', '../../share/docs/cv vincent gwanmesia 2022.pdf');

// Insert a dynamic image from a URL
?>