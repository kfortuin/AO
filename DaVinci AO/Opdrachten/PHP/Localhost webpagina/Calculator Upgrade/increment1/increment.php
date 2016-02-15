<?php 
/* ----- LOGIC ----- */
// initialise output variables
	$number = '';
	$error = '';			
	$instruction = '';
// action
	$method = $_SERVER['REQUEST_METHOD'];
	if ($method == 'POST') {
		// input
		if (isset($_POST['number'])){
			$number = $_POST['number'];
		}
		//clean up
		$number = trim($number); 
		if ($number == ''){
			$number = '0';
		}
		// validation
		if (!is_numeric($number)){
			$error = "Input $number is not a valid number" ;
		}
		// process 
		if ($error == ''){
			$number = $number + 1; //Do the heavy calculation now.
		}
	} else { // method is probably GET 
		$instruction = "enter a number that this app can increment" ;
	}
?>

<!----- RESPONSE ---->
<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>increment</title>
	<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	<div class="frame">
		<h1>Increment</h1>
		<form method="post">
			<label>Getal</label><input name="number" value="<?php echo $number; ?>"><br>
			<label></label><input type="submit" value="i want more">
		</form>
<?php if ($error != ''){ ?>
		<h2 class="error"><?php echo $error; ?></h2>
<?php } // endif ?>
<?php if ($instruction != ''){ ?>
		<p class="instruction"><?php echo $instruction; ?></p>
<?php } // endif ?>
	</div>
</body>
</html>