<!doctype html>
<html>
<head>
	<title>calculator</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<?php
	$operator = $_POST['operator'];
	$getal1 = $_POST['getal1'];
	$getal2 = $_POST['getal2'];
	$getal3 = "";
	$uitkomst = "$getal1  $operator  $getal2 = $getal3";
	$bodyColor = "white";

	if (!is_numeric($getal1) or $getal1 == "0")
	{
		$foutGetal1 = "Getal 1 niet geldig: $getal1" ;
		$uitkomst = "";
		$bodyColor = "red";
	}
	elseif ($getal1 == "")
	{
		$foutGetal1 = "Voer een eerste getal in";
		$uitkomst = "";
		$bodyColor = "red";
	}
	
	if (!is_numeric($getal2) or $getal2 == "0")
	{
		$foutGetal2 = "Getal 2 niet geldig: $getal2" ;
		$uitkomst = "";
		$bodyColor = "red";
	}
	elseif ($getal2 == "")
	{
		$foutGetal2 = "Voer een tweede getal in";
		$uitkomst == "";
		$bodyColor = "red";
	}

	if ($operator == "+")
	{
		$getal3 = $getal1 + $getal2;
	}
	elseif ($operator == "-")
	{
		$getal3 = $getal1 - $getal2;
	} 
	elseif ($operator == "/")
	{
		$getal3 = $getal1 / $getal2;
	}
	elseif ($operator == "*")
	{
		$getal3 = $getal1 * $getal2;
	}
	elseif ($operator =="")
	{
		$foutOperator = "Voer een operator in";
		$uitkomst = "";
		$bodyColor = "red";
	} 
	else
	{
		$foutOperator = "Operator is niet geldig: $operator";
		$uitkomst = "";
		$bodyColor = "red";
	}
	?>
</head>
<body class="<?php echo $bodyColor ?>">
	<div class="frame">
		<h1>Calculator</h1>
		<?php 
		if (!empty($uitkomst))
		{
		echo "$getal1  $operator  $getal2 = $getal3" ;
		}

		echo "<br>";

		if (!empty($foutGetal1))
		{
			echo $foutGetal1;
		}

		echo "<br>";

		if (!empty($foutGetal2))
		{
			echo $foutGetal2;
		}

		echo "<br>";

		if (!empty($foutOperator))
		{
			echo $foutOperator;
		}
		?>
		<br><br>
		<a href="index.php"><button>Volgende berekening</button></a>
	</div>
</body>
</html>