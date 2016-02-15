<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Mad Lips</title>
	<link rel="stylesheet" href="css/style.css">


	<?php 

		/*var_dump($_POST);*/
		$willenkunnen = $_POST['willenkunnen'];
		$persoon = $_POST['persoon'];
		$gebruiksvoorwerp = $_POST['gebruiksvoorwerp'];
		$vakantie = $_POST['vakantie'];
		$besteperseig = $_POST['besteperseig'];
		$slechtsteperseig = $_POST['slechtsteperseig'];
		$ergste = $_POST['ergste'];
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
			<h2>Onkunde</h2>


		<?php 

			echo "\"Er zijn veel mensen die niet kunnen $willenkunnen. Neem nou $persoon.
			Zelfs met de hulp van een $vakantie of zelfs $gebruiksvoorwerp kan $persoon niet $willenkunnen.
			Dat heeft niet te maken met een gebrek aan $besteperseig, maar met een te veel aan $slechtsteperseig.
			Te veel $slechtsteperseig leidt tot $ergste en dat is niet goed als je wilt $willenkunnen.
			Helaas voor $persoon.\"" ;


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