<style>
img {
  border-radius: 50% !important;
}
.wrapper {
	min-height: 0 !important;
  justify-content: space-around;
}
.box {
  flex: 0 0 40%;
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;
  background-color: white;
}
</style>
<?php 
 
$rows = $db -> select("SELECT fotolocation, naam, id, beschrijving FROM personeel WHERE del='0' ORDER BY id");
		foreach ($rows as $row) {
			echo "<div class=\"wrapper\"><div class=\"box\"> <input name=\"naam\" value=\"".$row['naam']."\" type=\"hidden\" id=\"naam\"> <img class=\"imgages\" src=\"".$row['fotolocation']."\"></br>".$row['naam']."</br><p>Korte beschrijving van mezelf: ".$row['beschrijving']."</p><button class=\"button\" id=\"".$row['id']."\">reserveren</button></div></div></br>";
		}

?>

	<div id="basic" class="well" style="width:37em;display:none;">
		<form id="NewModal" class="elementor-form" method="post" name="Stuur_bericht"> 
						<input name="action" value="add" type="hidden" id="basic_action">
						<input name="personeel" value="<?php echo $input['personeel']; ?>" type="hidden" id="personeel">
						<h1 style="color: black;">Reserveren bij <?php echo $row['naam']; ?></h1>
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
								<label for="keuze">wat wilt u doen</label>
								<select required name="keuze" id="keuze" class="form-control" required="required" aria-required="true">
								<option value="0"></option>
								<option value="Cornrowns natural">Cornrowns natural</option>
								<option value="Cornrowns with extensions">Cornrowns with extensions</option>
								<option value="Boxbraids">Boxbraids</option>
								<option value="Knotless Braids">Knotless Braids</option>
								<option value="Natural Braids/Twist">Natural Braids/Twist</option>
								</select>
							</div>

							<div class="form-wrapper" id="6">
								<label for="corn">Cornrowns natural</label>
								<select required name="corn" id="corn" class="form-control" required="required" aria-required="true">
								<option value="0"></option>
								<option value="2 Braids">2 Braids > €17,50</option>
								<option value="4 Braids">4 Braids > €20</option>
								<option value="6 Braids">6 Braids > €22,50</option>
								<option value="Design">Design > from €17,50</option>
								</select>
							</div>

							<div class="form-wrapper" id="7">
								<label for="cornex">Cornrowns with extensions</label>
								<select required name="cornex" id="cornex" class="form-control" required="required" aria-required="true">
								<option value="0"></option>
								<option value="2 Braids">2 Braids > €20</option>
								<option value="4 Braids">4 Braids > €22,50</option>
								<option value="6 Braids">6 Braids > €25</option>
								<option value="Design">Design > €27,50</option>
								</select>
							</div>

							<div class="form-wrapper" id="8">
								<label for="Boxbraids">Boxbraids</label>
								<select required name="Boxbraids" id="Boxbraids" class="form-control" required="required" aria-required="true">
								<option value="0"></option>
								<option value="Large">Large > €45</option>
								<option value="Medium">Medium > €60</option>
								<option value="Small">Small > €90</option>
								</select>
							</div>

							<div class="form-wrapper" id="9">
								<label for="Knotless">Knotless Braids</label>
								<select required name="Knotless" id="Knotless" class="form-control" required="required" aria-required="true">
								<option value="0"></option>
								<option value="Large">Large > €50</option>
								<option value="Medium">Medium > €75</option>
								<option value="Small">Small > €110</option>
								</select>
							</div>

							<div class="form-wrapper" id="10">
								<label for="Natural">Natural Braids/Twist</label>
								<select required name="Natural" id="Natural" class="form-control" required="required" aria-required="true">
								<option value="0"></option>
								<option value="Large Full Head">Large Full Head > €30</option>
								<option value="Medium Full Head">Medium Full Head> €35</option>
								<option value="Small Full Head">Small Full Head> €40</option>
								<option value="Large Island">Large Island> €25</option>
								<option value="Medium Island">Medium Island> €30</option>
								<option value="Small Island">Small Island> €35</option>

								</select>
							</div>

							<div class="form-wrapper">
								<label for="Datum" class="elementor-field-label" >Datum die u schikt</label>
								<input required type="date" name="datum" id="datum" aria-required="true" class="form-control">
							</div>

								<button class="button" id="SaveModal">Verzenden</button>
						</div>	
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
					
				$(".button").click(function (event) {

					var test = $(".naam").val();

					alert(test);

					$('#basic').popup({
					  onopen: function() {
						$("#basic_action").val("add");
						$("#basic_klantid").val("");
						$("#naam").val("");
						$("#achternaam").val("");
						$("#telefoon").val("");
						$("#email").val("");
						$("#keuze").val("");
						$(".inhoud").val("");			
					  }
					  				});
					$('#basic').popup('show');

				});


				$("#10").hide();
				$("#6").hide();
				$("#7").hide();
				$("#8").hide();
				$("#9").hide();

					$('#keuze').on('change', function() 
					{  	
						if (this.value == "0")
							{
								$("#6").hide();
								$("#7").hide();
								$("#8").hide();
								$("#9").hide();
								$("#10").hide();
								$("#corn").val("");
								$("#cornex").val("");
								$("#Boxbraids").val("");
								$("#Knotless").val("");
								$("#Natural").val("");
							}

						if (this.value == "Cornrowns natural")
							{
								$("#6").show();
								$("#7").hide();
								$("#8").hide();
								$("#9").hide();
								$("#10").hide();
								$("#corn").val("");
								$("#cornex").val("");
								$("#Boxbraids").val("");
								$("#Knotless").val("");
								$("#Natural").val("");
							}
						if (this.value == "Cornrowns with extensions")
							{
								$("#7").show();
								$("#6").hide();
								$("#8").hide();
								$("#9").hide();
								$("#10").hide();
								$("#corn").val("");
								$("#cornex").val("");
								$("#Boxbraids").val("");
								$("#Knotless").val("");
								$("#Natural").val("");
							}
						if (this.value == "Boxbraids")
							{
								$("#8").show();
								$("#6").hide();
								$("#7").hide();
								$("#9").hide();
								$("#10").hide();
								$("#corn").val("");
								$("#cornex").val("");
								$("#Boxbraids").val("");
								$("#Knotless").val("");
								$("#Natural").val("");
							}
						if (this.value == "Knotless Braids")
							{
								$("#9").show();
								$("#6").hide();
								$("#7").hide();
								$("#8").hide();
								$("10").hide();
								$("#corn").val("");
								$("#cornex").val("");
								$("#Boxbraids").val("");
								$("#Knotless").val("");
								$("#Natural").val("");
							}
						if (this.value == "Natural Braids/Twist")
							{
								$("#10").show();
								$("#6").hide();
								$("#7").hide();
								$("#8").hide();
								$("#9").hide();
								$("#corn").val("");
								$("#cornex").val("");
								$("#Boxbraids").val("");
								$("#Knotless").val("");
								$("#Natural").val("");
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
							alert("Uw reserveering is");
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

	<script src="<?php echo $config_url; ?>/assets/js/jquery.filtertable.min.js"></script>
	<script>
	$(document).ready(function() {
		$('table').filterTable(); // apply filterTable to all tables on this page
	});
	</script>
