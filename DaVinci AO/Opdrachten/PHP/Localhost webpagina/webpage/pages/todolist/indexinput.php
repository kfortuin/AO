<?php
	include ("includes/head.php");
	include("includes/connect.php");
	$input = $_POST['input'];
	
	if (empty($input))
	{
		$input = "";
	}
	else
	{
		$sql = "INSERT INTO activiteiten (omschrijving) 
		VALUES ('" . $input . "')";
	}
?> 

<body>
	<div class="frame">
		<div class="content">
			<h1>To-Do List</h1>
			<h3>Welcome to my To-Do list!</h3>
			<p>Here you can enter what you would like
			to do today!</p>

			<form action="indexinput.php" method="post">
				<input id="input" type="text" name="input" 
				value="" placeholder="What would you like to do?" autocomplete="off">
				<input id="submit" type="submit" name="Submit" value="Add">
			</form>
<!-- 
			<?php 
				if (mysqli_query($conn, $sql)) {
					echo "New record created successfully!";
				// } else {
				// 	echo "Error: " . $sql . "<br>" . mysqli_error($conn);
				}
			?> -->
			<p><?php if (!empty($input))
			{
				echo("Last item: " .$input);
			}
			?></p>

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
					<ul style="list-style: none">
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
					</div>
				</div>
			</div>
			<span class="clear"></span>

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