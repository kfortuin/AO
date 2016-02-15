<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Mad Lips</title>
	<link rel="stylesheet" href="css/style.css">


	<?php 

		//var_dump($_POST);
		$huisdier = $_POST['huisdier'];
		$belangpers = $_POST['belangpers'];
		$land = $_POST['land'];
		$vervelen = $_POST['vervelen'];
		$speelgoed = $_POST['speelgoed'];
		$docent = $_POST['docent'];
		$geld = $_POST['geld'];
		$bezigheid = $_POST['bezigheid'];
		$submit = $_POST['submit'] = "Submit";

	?>
</head>
<body>
	<div class="frame">
		

		<h1>Mad Lips</h1>
		

		<ul class="top-menu">
			<li><a href="index.php">Er heerst paniek...</a></li>
			<li><a href="index2.php">Onkunde</a></li>
		</ul>
		<div class="content">
			<h2>Er heerst paniek...</h2>


		<?php 

			echo "\"Er heerst paniek in het koninkrijk $land.
			Koning $belangpers is ten einde raad en als 
			koning $belangpers ten einde raad is, dan roept hij zijn 
			ten-einde-raadsheer $docent\"
			\"$docent! Het is een ramp! Het is een schande!\"
			\"Sire, Majesteit, Uwe Luidruchtigheid, wat is er aan de hand?\"
			\"Mijn $huisdier is verdwenen! Zo maar, zonder waarschuwing.
			En ik had net $geld voor hem gekocht!\"
			\"Majesteit, uw $huisdier komt vast vanzelf weer terug?\"
			\"Ja, da's leuk en aardig, maar hoe moet ik in de tussentijd 
			$bezigheid leren?\"
			\"Maar Sire, daar kunt u toch uw $speelgoed voor gebruiken.\"
			\"$docent, je hebt helemaal gelijk! 
			Wat zou ik doen als ik jou niet had.\" \"$vervelen, Sire.\"" ;


		 ?>
		 </div>
		<div class="bottommenu">
			<ul class="bottommenu">
				<li><a href="../../index.php">Terug naar mijn webpagina</a></li>
				<span class="clear"></span>
			</ul>
		</div>


		 	
	</div>
</body>
</html>