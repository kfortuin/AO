<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Mad Lips</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="frame">
	

	<h1>Mad Lips</h1>
	

	<ul class="top-menu">
		<li><a href="index.php">Er heerst paniek...</a></li>
		<li><a href="#">Onkunde</a></li>
	</ul>
	<div class="content">
		<h2>Onkunde</h2>

		<p class="text">
			Wat zou je graag willen kunnen?
			<br><br>
			Met welke persoon kun je goed opschieten?
			<br><br>
			Wat is je favoriete gebruiksvoorwerp?
			<br><br>
			Wat heb je altijd bij je als je op vakantie gaat?
			<br><br>
			Wat is je beste persoonlijke eigenschap?
			<br><br>
			Wat is je slechtste persoonlijke eigenschap?
			<br><br>
			Wat is het ergste dat je kan overkomen?
			<br><br>
		</p>
		<form action="onkunde.php" class= "formonkunde" method="post">
			<br>
			<input type="text" name="willenkunnen" value="" autocomplete="off">
			<br><br>
			<input type="text" name="persoon" value="" autocomplete="off">
			<br><br>
			<input type="text" name="gebruiksvoorwerp" value="" autocomplete="off">
			<br><br>
			<input type="text" name="vakantie" value="" autocomplete="off">
			<br><br>
			<input type="text" name="besteperseig" value="" autocomplete="off">
			<br><br>
			<input type="text" name="slechtsteperseig" value="" autocomplete="off">
			<br><br>
			<input type="text" name="ergste" value="" autocomplete="off">
			<br><br>
			<input id="submit" type="submit" name="Submit" value="Submit" autocomplete="off">
		</form>
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