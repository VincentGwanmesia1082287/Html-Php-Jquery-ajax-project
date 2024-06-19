	<?php 
	$rows = $db -> select("SELECT naam FROM personeel WHERE del='0' AND id='".$input['personeel']."' ORDER BY id"); foreach ($rows as $row) {$naampersoneel = $row['naam'];} 
		if (!isset($input['personeel']) || !isset($naampersoneel)) { header("Location: ?page=personen"); die(); }
	 ?>
	<div class="wrapper">
		<div class="inner">
			<!--<div class="row">-->
			<!--<div class="column">-->
					<form id="NewModal" class="elementor-form" method="post" name="Stuur_bericht"> 
						<input name="action" value="add" type="hidden" id="basic_action">
						<input name="personeel" value="<?php echo $input['personeel']; ?>" type="hidden" id="personeel">
						<h1 style="color: black;">Reserveren bij <?php echo $naampersoneel;?></h1>
						<div id="basic">
							<div class="form-group">

								<div class="form-wrapper">
									<label for="naam">Naam</label>
									<input required type="text" name="naam" id="naam" required="required" aria-required="true" class="form-control">
								</div> 

								<div class="form-wrapper">
									<label for="achternaam">Achteraam</label>
									<input required type="text" name="achternaam" id="achternaam" required="required" aria-required="true" class="form-control">
								</div>
							</div>
							<div class="form-wrapper">
								<label for="telefoon" class="elementor-field-label">Telefoon</label>
								<input required type="tel" name="telefoon" id="telefoon" required="required" aria-required="true" class="form-control">
							</div>

							<div class="form-wrapper">
								<label for="email" class="elementor-field-label">Email</label>
								<input required type="text" name="email" id="email" required="required" aria-required="true" class="form-control">
							</div>

							<div class="form-wrapper">
							<span for="keuze" class="basic150">Klant haarkeuze</span>
								<select name="keuze" id="keuze" class="form-control" required="required" aria-required="true">
									<option value="0"></option>
									<?php
										$haartypes = $db -> select("SELECT skillid, soorthaar FROM skills WHERE del='0' AND personeelid='".$input['personeel']."'ORDER BY skillid");
											foreach ($haartypes as $haartype) 
											{	
												echo "<option value=\"".$haartype['skillid']."\">".$haartype['soorthaar']."</option>";
											}
									?>
								</select>
							</div>
					
							<div class="form-wrapper" id="1">
								<span for="style" class="basic150">keuze haar en prijs</span>
								<select name="style" id="style" class="form-control" required="required" aria-required="true">
								<option value="0"></option>
								</select>
							</div>

							<div class="form-wrapper">
								<label for="Datum" class="elementor-field-label" >Datum die u schikt</label>
								<input required type="date" name="datum" id="datum" aria-required="true" class="form-control">
							</div>

								<button class="button" id="SaveModal">Verzenden</button>
						</div>	
					</form>
				<!--</div>-->
			<!--</div>-->
		</div>
	</div>

<script>

jQuery(document).ready(function ($) 
{		



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
					for (let i = 0; i < inserteditem.length; i++) {
					  var prijsid = inserteditem[i]['prijsid'];
					  var haartype = inserteditem[i]['haartype'];
					  var prijs = inserteditem[i]['prijs'];
					  $('#style').append("<option value='"+prijsid+"'>"+haartype+" €"+prijs+",-</option>").html();
					  $("#1").show();
					}
				    //console.log(text);
				  
				  },
					error: function (jqXHR, exception) {
	          		console.log(jqXHR);
				  }			
				});			
			}
	});
		
	$("#keuze").trigger("change");

	$("#SaveModal").click(function (event) 
	{

		event.preventDefault();
		event.stopImmediatePropagation();

		$("#NewModal").validate(
		{
		  rules: {
		    field: {
		      required: true,
		      email: true
		    }
		  }
		});

		$.extend($.validator.messages, 
		{
		    required:  "<p class='errors'>Deze veld moet ingevuld worden!!</p>",
		    email: "<p class='errors'>Voer een geldige email in!</p>"
		});
			

		if ($("#NewModal").valid())	
		{							
			$.ajax(
			{
				type: "POST",
				url: "query.php?q=qryreserveering",
				data: $('#NewModal').serializeArray(),
				success: function (inserteditem) 
				{
					console.log(inserteditem);

					if (inserteditem[0] == 'error')
					{
						alert(inserteditem[1]);
					}
					else
					{
						location.reload();
						alert("Uw reserveering is aangemaakt");
					}
				},
				error: function (jqXHR, exception) 
				{
					console.log(jqXHR);
					alert(jqXHR.statusText);
					alert("ALERT");
				}
			});

		}

		else
		{

		}			

	});	
});	
	</script>