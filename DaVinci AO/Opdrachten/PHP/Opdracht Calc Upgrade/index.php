<!--Logic-->
<?php
//Output variables
$getal = "";
$getal2 = "";
$uitkomst = "";
$operator = "";
$bodyColor = "white";

//action
$method = $_SERVER['REQUEST_METHOD'];
if ($method == "POST") {
	// input
	if (isset($_POST['getal'])){
		$getal = $_POST['getal'];
	}
	if (isset($_POST['getal2'])){
		$getal2 = $_POST['getal2'];
	}
	if (isset($_POST['operator'])){
		$operator = $_POST['operator'];
	}
	//clean up & validation
	if (!is_numeric($getal) or $getal == "0")
	{
		$foutgetal = "Getal 1 niet geldig: $getal" ;
		$uitkomst = "";
		$bodyColor = "red";
	}
	elseif ($getal == "")
	{
		$foutgetal = "Voer een eerste getal in";
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

	if ($operator =="")
	{
		$foutOperator = "Voer een operator in";
		$uitkomst = "";
		$bodyColor = "red";
	}
	// process
		if ($operator == "+")
	{
		$uitkomst = $getal + $getal2;
	}
	elseif ($operator == "-")
	{
		$uitkomst = $getal - $getal2;
	} 
	elseif ($operator == "/")
	{
		$uitkomst = $getal / $getal2;
	}
	elseif ($operator == "*")
	{
		$uitkomst = $getal * $getal2;
	} 
	else
	{
		$foutOperator = "Operator is niet geldig: $operator";
		$uitkomst = "";
		$bodyColor = "red";
	}
}
else
{
	$welcome = "Op deze website kunt u al uw sommen uitreken!"; // most likely GET
}

?>
<!--Response-->
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body class="<?= $bodyColor; ?>">
	<div class="frame">
		<h1>Calculator</h1>
		<form method="post">
			<label>Getal 1:</label>
			<input name="getal" value="0" autocomplete="off"><br>
			<?php if (!empty($foutgetal))
			{
				echo $foutgetal;
			}?>
			<label>Getal 2:</label>
			<input name="getal2" value="0" autocomplete="off"><br>
			<?php if (!empty($foutGetal2))
			{
				echo $foutGetal2;
			}?>
			<label>Operator (+ - * /):</label>
			<input name="operator" maxlength="1" autocomplete="off"><br>
			<?php  if (!empty($foutOperator))
			{
				echo $foutOperator;
			}?>
			<label>
			<?php if (!empty($uitkomst))
			{
			echo "$getal $operator $getal2 = $uitkomst";
			}
			?>
			</label>
			<input type="submit" value="Berekenen">
			<?php
			if (isset($welcome))
			{
				echo $welcome;
			}
			?>
		</form>
	</div>
	</div>
</body>
</html>