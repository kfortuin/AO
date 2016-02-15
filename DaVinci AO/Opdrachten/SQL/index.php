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
			<p>Here you can enter what you would like
			to do today!</p>

			<form action="indexinput.php" method="post">
				<input id="input" type="text" name="input" 
				value="" placeholder="What would you like to do?">
				<input id="submit" type="submit" name="Submit" value="Add">
			</form>

			<input type="button" name="button" value="Show" 
			onclick="visibility()">
			
			<script>

				function visibility()
				{
					var element = document.getElementById('show');
				
					if(element.style.display != 'none')
					{
						element.style.display = 'none';
					}
					else
					{
						element.style.display = '';
					}
				}

			</script>
			
			<div id="show" style="display: none;">
				<div class="showlist">
					
					<ul style="list-style: none; ">					
					Current items:
					<br><br>
					<li>
					
					<?php
					$sql = "SELECT * FROM activiteiten";
					$result = $conn->query($sql);
					if ($result->num_rows > 0) {
					    // output data of each row
					    while($row = $result->fetch_assoc()) {
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
					<div class="editdelete">
					<form action="indexedit.php" method="post" 
					value="Edit">
						<input type="submit" name="edit" value="Edit"
						style="margin-left: 40px;">
					</form>
					<form action="indexdelete.php" method="post"
					value="Delete">
						<input type="submit" name="delete" value="Delete"
						style="margin-left: 40px;">
					</form>
					</div>
				</div>
			</div>	
			
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