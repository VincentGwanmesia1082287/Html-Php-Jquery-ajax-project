<style>
	.activiteitenVandaag {
	box-shadow: 0 0 15px 0 rgba(0, 0, 0, .1);
	background-color: #fff;
	padding:40px;
    margin: auto;
    width: 90%;
	}
</style>
	<?php
	echo "<div class=\"activiteitenVandaag\">";

	echo "<div class='headersmallertext'>";
	echo "Klanten";
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
		  <!-- <th class="customButtons">&nbsp;</th> //-->
		  <th scope="col">naam</th>
		  <th scope="col">achternaam</th>
		  <th scope="col">telefoon</th>
		  <th scope="col">email</th>
		  <th scope="col">haartype</th>
		  <th scope="col">style</th>
		  <th scope="col">datum</th>
		  <th class="customButtons" colspan="1">&nbsp;</th>
		</tr>
	  </thead>
	  <tbody>
	  <?php
		$rows = $db -> select("SELECT r.klantid, r.naam, r.achternaam, r.telefoon, r.email, s.soorthaar, p.haartype, p.prijs, r.datum FROM reserveeringen r LEFT JOIN skills s ON r.skillid=s.skillid LEFT JOIN prijzenlijst p ON r.prijsid=p.prijsid WHERE r.del='0' AND r.personeel='".$_SESSION['personeel']."'ORDER BY r.klantid");
		foreach ($rows as $row) {
			echo "<tr>";
				echo "<td style=\"display:none;\">".$row['klantid']."</td>";
				echo "<td scope='row' data-label='naam'>".$row['naam']."</td>";
				echo "<td data-label='achternaam'>".$row['achternaam']."</td>";
				echo "<td data-label='telefoon'>".$row['telefoon']."</td>";
				echo "<td data-label='email'>".$row['email']."</td>";
				echo "<td data-label='haartype'>".$row['soorthaar']."</td>";
				echo "<td data-label='stylehaar'>".$row['haartype']."</td>";
				echo "<td data-label='datum'>".$row['datum']."</td>";
				echo "<td><a class=\"btn btn-sm btn-default btn-edit\" href=\"#basic\"><span class=\"glyphicon glyphicon-pencil\"></span></a></td>";
			echo "</tr>";
		}
	  ?>
	  </tbody>
	</table>

	<div id="basic" class="well" style="width:37em;display:none;">
		<form id="NewModal" class="elementor-form" method="post" name="Stuur_bericht">
			<input name="action" value="add" type="hidden" id="basic_action">
			<input name="klantid" type="hidden" id="basic_klantid">
			<input name="personeel" type="hidden" id="personeel" value="<?php echo $_SESSION['personeel'];?>">

		<h4>klant</h4>
		<p>
			<span for="naam" class="basic150">Naam</span>
			<input type="text" name="naam" id="naam" class="basicfield" required="required" aria-required="true">

		</p>

		<p>
			<span for="achternaam" class="basic150">Achternaam</span>
			<input type="text" name="achternaam" id="achternaam" class="basicfield" required="required" aria-required="true">
		</p>

		<p>
			<span for="telefoon" class="basic150">Telefoon</span>
			<input type="telefoon" name="telefoon" id="telefoon" class="basicfield" required="required" aria-required="true">
		</p>

		<p>
			<span for="email" class="basic150">Email</span>
			<input type="tel" name="email" id="email" class="basicfield" required="required" aria-required="true">
		</p>

		<p>
			<span for="keuze" class="basic150">Klant haarkeuze</span>
			<select name="keuze" id="keuze" class="basicfield" required="required" aria-required="true">
				<option value="0"></option>
				<?php
					$haartypes = $db -> select("SELECT skillid, soorthaar FROM skills WHERE del='0' AND personeelid='".$_SESSION['personeel']."'ORDER BY skillid");
						foreach ($haartypes as $haartype) 
						{	
							echo "<option value=\"".$haartype['skillid']."\">".$haartype['soorthaar']."</option>";
						}
				?>
			</select>
		</p>
		<p id="1">
			<span for="haartype" class="basic150">keuze haar en prijs</span>
			<select name="haartype" id="style" class="basicfield" required="required" aria-required="true">
				<option value="0"></option>
			</select>
		</p>

		<p>
			<span for="Datum" class="basic150">Datum die u schikt</span>
			<input type="date" name="datum" id="datum" class="basicfield" required="required" aria-required="true">
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
					$("#basic_klantid").val("");
					$("#naam").val("");
					$("#achternaam").val("");
					$("#telefoon").val("");
					$("#email").val("");
					$("#keuze").val("");
					$("#style").val("");
					$("#Datum").val("");		
				  }
				  				});
				$('#basic').popup('show');

			});

				if($("#keuze").val() == 0)
				{
					$("#1").hide();
				}

				$('#keuze').on('change', function() 
				{  	
					var skillid = $("#keuze").val();
					var personeel = $("#personeel").val();

					 $("#style").empty().append("<option value='0'></option>").html();

					if (this.value == "0")
						{
							$("#1").hide();
						}

					if (this.value != "0")
						{
							$.ajax({   
							  type: "POST",                                
							  url: 'query.php?q=qryhaarstyle',                  //the script to call to get data          
							  data: {skillid: skillid, personeel: personeel},                        //you can insert url argumnets here to pass to api.php
							  success: function (inserteditem)               //on recieve of reply
							  {  
							    console.log(inserteditem);
							    if(inserteditem.length != 0)
							    {
									for (let i = 0; i < inserteditem.length; i++) {
									  var prijsid = inserteditem[i]['prijsid'];
									  var haartype = inserteditem[i]['haartype'];
									  var prijs = inserteditem[i]['prijs'];
									  $('#style').append("<option value='"+prijsid+"'>"+haartype+" €"+prijs+",-</option>").html();
									  $("#1").show();
									}
								}
								else
								{
									$("#1").hide();
								}
							  
							  },
								error: function (jqXHR, exception) {
				          		console.log(jqXHR);
							  }			
							});			
						}
				});
					
				$("#keuze").trigger("change");


			$(".btn-edit").click(function (event) {
				var id = $(this).parent().siblings(":first").text();
				
				$.ajax({                                      
					  url: 'query.php?q=qryklant',                  //the script to call to get data          
					  data: "action=select&klantid=" + id,                        //you can insert url argumnets here to pass to api.php
													   //for example "id=5&parent=6"
					  dataType: 'json',                //data format      
					  success: function(data)          //on recieve of reply
					  {
					  
					    console.log(data);
					  
						var naam = data[0]; 
						var achternaam = data[1];
						var telefoon = data[2];
						var email = data[3];
						var keuze = data[4];
						var style = data[5];
						var datum = data[6];
						var personeel = data[7];

						if(style != '0')
						{
							$("#style").empty().append();
							$.ajax({   
							  type: "POST",                                
							  url: 'query.php?q=qryhaarstyle',                  //the script to call to get data          
							  data: {skillid: keuze, personeel: personeel},                        //you can insert url argumnets here to pass to api.php
							  success: function (inserteditem)               //on recieve of reply
							  {  
							    console.log(inserteditem);
								for (let i = 0; i < inserteditem.length; i++) {
								  var prijsid = inserteditem[i]['prijsid'];
								  var haartype = inserteditem[i]['haartype'];
								  var prijs = inserteditem[i]['prijs'];
								  $('#style').append("<option value='"+prijsid+"'>"+haartype+" €"+prijs+",-</option>").html();
								  $("#1").show();
								}
							  
							  },
								error: function (jqXHR, exception) {
				          		console.log(jqXHR);
							  }			
							});
						} 
						 

						$('#basic').popup({
						  onopen: function() {

					$("#basic_action").val("edit");
					$("#basic_klantid").val(id);
					$("#naam").val(naam);
					$("#achternaam").val(achternaam);
					$("#telefoon").val(telefoon);
					$("#email").val(email);
					$("#keuze").val(keuze);
					$("#style").val(style);
					$("#Datum").val(datum);
					
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
				url: 'query.php?q=qryklant',
				editButton: false,
				deleteButton: true,
				hideIdentifier: true,
				dangerClass: 'validationError',
				columns: {
					identifier: [0, 'klantid'],
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
						url: "query.php?q=qryklant",
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
							console.log(exception);
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


