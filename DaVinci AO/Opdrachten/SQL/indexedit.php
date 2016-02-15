<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Database TODO test</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="shortcut icon" href="favicon.ico">



<?php
	$servername = "localhost";
	$username = "root";
	$password = "";

	$conn = mysqli_connect($servername, $username, $password, 'todo');


	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}
	
?> 
</head>
<body>
	<div class="frame">
		<div class="content">
			<h1>To-Do List</h1>
			<h3>Welcome to my To-Do list!</h3>
			<p>Here you can edit the your activities on your to-do list!</p>

			<ul  style="list-style: none; ">
			Current items:
			<br><br>
			<li>
			<?php
			$sql = "SELECT * FROM activiteiten";
			$result = $conn->query($sql);
			if ($result->num_rows > 0) {
			    // output data of each row
			    while($row = $result->fetch_assoc()) {
			    	// echo '&nbsp;<input type="radio" name="edit" value="">';
			        echo /*"Item " . $row["id"]. */"Activity:  "
			         . $row["omschrijving"]. " <br>";
			    }
			} else {
			    echo "0 results";
			}

			$conn->close();

			?>
			</li>
			
			</ul>

			

			<p class="disclaimer">Disclaimer: all things added here will probably
			be deleted within an hour, due to continuous tests to improve the provided service. 
			Thanks for your understanding.</p>
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