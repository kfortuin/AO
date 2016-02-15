<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Database TODO test</title>
	<link rel="stylesheet" href="css/style.css">

	<?php
		$input = $_POST['input'];
		$servername = "localhost";
		$username = "root";
		$password = "";

		$conn = mysqli_connect($servername, $username, $password, 'todo');


		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		}

		$sql = "INSERT INTO activiteiten (omschrijving) 
		VALUES ('" . $input . "')";
	?>
		

	 

</head>
<body>
	<div class="frame">
		<div class="content">
			<h1>To-Do List</h1>

			<?php 
			if (mysqli_query($conn, $sql)) {
				echo "New record created successfully";
			} else {
				echo "Error: " . $sql . "<br>" . mysqli_error($conn);
			}

			$conn->close();
			?>

			<p><?php echo("Last item: " .$input)
			?></p>


			<button onclick="history.go(-1);">Back </button>

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





