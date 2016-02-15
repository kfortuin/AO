<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Database TODO test</title>
	<link rel="stylesheet" href="css/style.css">

<?php
	$servername = "localhost";
	$username = "root";
	$password = "";

	$conn = mysqli_connect($servername, $username, $password, 'todo');


	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}
	
	$conn->close();

?> 
</head>
<body>
	<div class="frame">
		<div class="content">
			<h1>To-Do List</h1>
			<h3>Welcome to my To-Do list!</h3>
			<p>Here you can enter what you would like
			to do today!</p>

				<form action="test.php" method="post">
					<input id="input" type="text" name="input" 
					value="" placeholder="What would you like to do?">
					<input id="submit" type="submit" name="Submit" value="Add">
				</form>

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