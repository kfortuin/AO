<?php
include ("includes/head.php");
include("includes/connect.php");
	$delete = isset($_GET['id']) ? $_GET['id']:null;

	if ($delete)
	{
		$sql = "DELETE FROM activiteiten WHERE id=$delete";
		if (!mysqli_query($conn, $sql)) 
		{
		// 	echo "Record deleted successfully!";
		// } else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}
	}
?>

<body>
	<div class="frame">
		<div class="content">
			<h1>To-Do List</h1>
			<h3>Welcome to my To-Do list!</h3>
			<p>Here you can edit and delete items from your to-do list!</p>
			<form action="indexedited.php" method="get">
			
			<table  border="1" style="width: 40% ">
			Current items:
			<br><br>
			
			<?php
			$sql = "SELECT * FROM activiteiten";
			$result = $conn->query($sql);
			if ($result->num_rows > 0) {
			    // output data of each row
			    while($row = $result->fetch_assoc()) {
			        echo /*"Item " . . */"<tr><td> Activity: </td><td>"
			         . $row["omschrijving"]. " </td>";
			        echo "<td><a href=\"indexedited.php?id=" . $row['id'] . 
			        "&item=" . $row['omschrijving'] . "\"
			        >edit</a></td>";
			        echo "<td><a href=\"indexedit.php?id=" . $row['id'] . "\"
			        >delete</a></td></tr>";
			    }
			} else {
			    echo "0 results";
			}
			
			$conn->close();

			?>
			</table>
			</form>
			<br><br>
			<form action="index.php" method="post">
				<input type="submit" name="Submit" value="Add">
			</form>

			<?php
				include ("includes/disclaimer.php");
			?>
		</div>
		<?php 
			include ("includes/footer.php");
		?>
	</div>		
</body>
</html>