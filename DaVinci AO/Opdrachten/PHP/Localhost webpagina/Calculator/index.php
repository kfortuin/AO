<!doctype html>
<html>
<head>
	<title>calculator</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div class="frame">
		<h1>Calculator</h1>
		<form action="calculate.php" method="post">
			<label>Getal 1:</label>
			<input name="getal1" value="0" autocomplete="off"><br>
			
			<label>Getal 2:</label>
			<input name="getal2" value="0" autocomplete="off"><br>
			
			<label>Operator (+ - * /):</label>
			<input name="operator" maxlength="1" autocomplete="off"><br>
			<label></label>
			<input type="submit" value="Berekenen">
		</form>
	</div>
	</div>
</body>
</html>