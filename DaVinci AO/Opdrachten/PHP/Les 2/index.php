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
		<li><a href="#">Er heerst paniek...</a></li>
		<li><a href="index2.php">Onkunde</a></li>
	</ul>
	<div class="content">
		<h2>Er heerst paniek...</h2>

		<p class="text">
			Welk dier zou je nooit als huisdier willen hebben?
			<br><br>
			Wie is de belangrijkste persoon in je leven?
			<br><br>
			In welk land zou je graag willen wonen?
			<br><br>
			Wat doe je als je je verveelt?
			<br><br>
			Met welk speelgoed speelde je als kind het meest?
			<br><br>
			Bij welke docent spijbel je het liefst?
			<br><br>
			Als je €100.000,- had, wat zou je dan kopen?
			<br><br>
			Wat is je favoriete bezigheid?
			<br><br>
		</p>
		<form action="erheerstpaniek.php" class= "formpaniek" method="post">
			<br>
			<input type="text" name="huisdier" value="" autocomplete="off">
			<br><br>
			<input type="text" name="belangpers" value="" autocomplete="off">
			<br><br>
			<input type="text" name="land" value="" autocomplete="off">
			<br><br>
			<input type="text" name="vervelen" value="" autocomplete="off">
			<br><br>
			<input type="text" name="speelgoed" value="" autocomplete="off">
			<br><br>
			<input type="text" name="docent" value="" autocomplete="off">
			<br><br>
			<input type="text" name="geld" value="" autocomplete="off">
			<br><br>
			<input type="text" name="bezigheid" value="" autocomplete="off">
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