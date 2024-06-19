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
			echo "<div class=\"wrapper\"><div class=\"box\"><img class=\"imgages\" src=\"".$row['fotolocation']."\"></br>".$row['naam']."</br><p>Korte beschrijving van mezelf: ".$row['beschrijving']."</p><button class=\"button\" id=\"".$row['id']."\"><a href=\"?page=frmreserveering&personeel=".$row['id']."\">reserveren</a></button></div></div></br>";
		}

?>

<script>

function w3_open() {
  document.getElementById("main").style.marginLeft = "25%";
  document.getElementById("mySidebar").style.width = "25%";
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("openNav").style.display = 'none';
}
function w3_close() {
  document.getElementById("main").style.marginLeft = "0%";
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("openNav").style.display = "inline-block";
}
	</script>