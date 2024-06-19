	<?php

	$input = filter_input_array(INPUT_POST);
	if (!isset($input['action']) || empty($input['action']))
	{
		$input = filter_input_array(INPUT_GET);
	}
	echo "<div class=\"activiteitenVandaag\">";

	echo "<div class='headersmallertext'>";
	echo "Prijzenlijst";
	echo "</div>";

	echo "<a class=\"basic_open btn btn-select basicnew\" href=\"#basic\">Nieuw</a>";
	echo "<span id=\"errorMessageNextButtons\" style=\"display:none;\"><i class=\"fa fa-exclamation-circle\" aria-hidden=\"true\"></i><span id=\"errorMessage\"></span></span>";
	echo "<span id=\"succesfulNextButtons\" style=\"display:none;\"><i class=\"fa fa-check-circle\" aria-hidden=\"true\"></i><span id=\"succesfulMessage\"></span></span>";
	echo "<br /><br />";

	?>

	<script src='<?php echo $config_url; ?>/assets/js/spectrum.js'></script>
	<link rel='stylesheet' href='<?php echo $config_url; ?>/assets/css/spectrum.css' />

	<table id="datatable">
	  <thead>
		<tr>
		  <th style="display:none;">id</th>
		  <th style="display:none;">personeel</th>
		  <!-- <th class="customButtons">&nbsp;</th> //-->
		  <th scope="col">Soort haar</th>
		  <th class="customButtons" colspan="2">&nbsp;</th>
		</tr>
	  </thead>
	  <tbody>
	  <?php
		$rows = $db -> select("SELECT * FROM skills WHERE del='0' AND personeelid='".$_SESSION['personeel']."'ORDER BY skillid");
		foreach ($rows as $row) {
			echo "<tr>";
				echo "<td style=\"display:none;\">".$row['skillid']."</td>";
				echo "<td style=\"display:none;\">".$row['personeelid']."</td>";
				echo "<td data-label='soorthaar'>".$row['soorthaar']."</td>";
				echo "<td><a class=\"btn btn-sm btn-default btn-edit\" href=\"#basic\"><span class=\"glyphicon glyphicon-pencil\"></span></a></td>";
				echo "<td><a class=\"btn btn-sm btn-default btn-prijs\" href=\"index.php?page=frmprijs&skillid=".$row['skillid']."\">Prijzen</a></td>";
			echo "</tr>";
		}
	  ?>
	  </tbody>
	</table>

	<div id="basic" class="well" style="width:37em;display:none;">
		<form id="NewModal" class="elementor-form" method="post" name="Stuur_bericht">
			<input name="action" value="add" type="hidden" id="basic_action">
			<input name="skillid" type="hidden" id="basic_skillid">

		<h4>prijzenlijst</h4>
		<p>
			<span for="soorthaar" class="basic150">Soort haar</span>
			<input type="text" name="soorthaar" id="soorthaar" class="basicfield" required="required" aria-required="true">

		</p>
		<p>&nbsp;</p>
		<button class="basic_close btn btn-default">Annuleren</button>
		<button class=" btn btn-select" id="SaveModal">Opslaan</button>
		</form>


	</div>

	<script>

			jQuery(document).ready(function ($) {

			$('#basic').popup({

	         blur:false,

	         scrolllock: true

	       });


			 $('.elementor-field elementor-size-sm  elementor-field-textual').keypress(function (e) {
			  if (e.which == 13) {
				$( "#SaveModal" ).click();
				return false;
			  }
			 });
				
			$(".basicnew").click(function (event) {

				$('#basic').popup({
				  onopen: function() {
					$("#basic_action").val("add");
					$("#basic_skillid").val("");
					$("#soorthaar").val("");		
				  }
				  				});
				$('#basic').popup('show');

			});


			$(".btn-edit").click(function (event) {
				var id = $(this).parent().siblings(":first").text();
				
				$.ajax({                                      
					  url: 'query.php?q=qrysoort',                  //the script to call to get data          
					  data: "action=select&skillid=" + id,                        //you can insert url argumnets here to pass to api.php
													   //for example "id=5&parent=6"
					  dataType: 'json',                //data format      
					  success: function(data)          //on recieve of reply
					  {
					  
					    console.log(data);
					  
						var soorthaar = data[0]; 
						 

						$('#basic').popup({
						  onopen: function() {

					$("#basic_action").val("edit");
					$("#basic_skillid").val(id);
					$("#soorthaar").val(soorthaar);
						  }
						});
						
						$('#basic').popup('show');
					  },
					  error: function () {
						alert("Fout bij het ophalen van de gegevens (" + id + ")");
					  }
					/*  error: function(xhr, status, error) {
						  var err = eval("(" + xhr.responseText + ")");
						  alert(err.Message);
						}*/
				});			
			
			});


			$('#datatable').Tabledit({
				url: 'query.php?q=qrysoort',
				editButton: false,
				deleteButton: true,
				hideIdentifier: true,
				dangerClass: 'validationError',
				columns: {
					identifier: [0, 'skillid'],
					editable: []
				},
				buttons: {
					edit: {
						class: 'btn btn-sm btn-default',
						html: '<span class="glyphicon glyphicon-pencil"></span>',
						action: 'edit'
					},
					delete: {
						class: 'btn btn-sm btn-default',
						html: '<span class="glyphicon glyphicon-trash"></span>',
						action: 'delete'
					},
					save: {
						class: 'btn btn-sm btn-success',
						html: 'opslaan'
					},
					restore: {
						class: 'btn btn-sm btn-warning',
						html: 'herstel',
						action: 'restore'
					},
					confirm: {
						class: 'btn btn-sm btn-danger',
						html: 'bevestig'
					}
				},
				onSuccess: function(data, textStatus, jqXHR) {console.log(data);},
				onFail: function(jqXHR, textStatus, errorThrown) {console.log(jqXHR);}
			});
	
			$("#SaveModal").click(function (event) {
			
				event.preventDefault();
				event.stopImmediatePropagation();

					$.ajax({
						type: "POST",
						url: "query.php?q=qrysoort",
						data: $('#NewModal').serializeArray(),
						success: function (inserteditem) {

							console.log(inserteditem);
							
							if (inserteditem[0] == 'error')
							{
								alert(inserteditem[1]);
							}
							else
							{
								$('#basic').popup('hide');
								location.reload();
							}
						},
						error: function (jqXHR, exception) {
							alert(jqXHR.statusText);
						}
					});
			});
		});	

	</script>

	<script src="<?php echo $config_url; ?>/assets/js/jquery.filtertable.min.js"></script>
	<script>
	$(document).ready(function() {
		$('table').filterTable(); // apply filterTable to all tables on this page
	});
	</script>


