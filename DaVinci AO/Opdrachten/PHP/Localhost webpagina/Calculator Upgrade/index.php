<!--PHP-->
<?php
//Output variables
$operator = isset($_POST['operator']) ? $_POST['operator'] : null;
$getal1 = isset($_POST['getal1']) ? $_POST['getal1'] : null;
$getal2 = isset($_POST['getal2']) ? $_POST['getal2'] : null;
$getal3 = "";
$uitkomst = "$getal1  $operator  $getal2 = $getal3";
$bodyColor = "white";
//action
$method = $_SERVER['REQUEST_METHOD'];

//Calculate
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

if (isset($getal3));
{
	$getal = "$getal1  $operator  $getal2 = $getal3";
}
?>

<!--HTML-->
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="frame">
		<h1>Calculator</h1>
		<form method="post">
			<label>Getal 1:</label>
			<input name="getal1" value="0" autocomplete="off"><br>
			<?php if (!empty($foutGetal1))
			{
				echo $foutGetal1;
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
			<label></label>
			<input type="submit" value="Berekenen">
			<?php if (!empty($uitkomst))
			{
			echo "$getal1  $operator  $getal2 = $getal3" ;
			}
			?>
		</form>
	</div>
	</div>
</body>
</html>