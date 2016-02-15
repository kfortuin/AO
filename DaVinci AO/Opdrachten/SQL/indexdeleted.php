<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Database TODO test</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="shortcut icon" href="favicon.ico">


	<script>
	function delete()
	if 

	</script>

<?php
	$delete = $_GET['id'];
	$servername = "localhost";
	$username = "root";
	$password = "";

	$conn = mysqli_connect($servername, $username, $password, 'todo');


	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
	}

	$sql = "DELETE FROM activiteiten WHERE id=$delete";

	if (mysqli_query($conn, $sql)) 
	{
    	echo "Record deleted successfully";
	} 
	else 
	{
    	echo "Error deleting record: " . mysqli_error($conn);
	}

?>
</head>
<body>
	<div class="frame">
		<div class="content">
			<h1>To-Do List</h1>
			<h3>Welcome to my To-Do list!</h3>
			<p>Here you can delete items from your to-do list!</p>
			<form action="indexdeleted.php" method="get">
			
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
			    	echo "<input type=\"radio\" 
			    	name=\"id\" value=\"" . $row["id"] . "\">";
			        echo /*"Item " . . */"Activity:  "
			         . $row["omschrijving"]. " <br>";
			    }
			} else {
			    echo "0 results";
			}


			 
			if (mysqli_query($conn, $sql)) {
				echo "Record deleted successfully!";
			} else {
				echo "Error: " . $sql . "<br>" . mysqli_error($conn);
			}

			// $conn->close();
			
			$conn->close();

			?>
			</li>
			<input class="delete" type="submit" 
			name="submit" value="Delete">
			</ul>
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