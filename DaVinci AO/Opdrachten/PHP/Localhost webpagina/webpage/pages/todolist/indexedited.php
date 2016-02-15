<?php 
	$update = isset($_GET['id']) ? $_GET['id']:null;
	$edit = isset($_POST['edit']) ? $_POST['edit']:null;
	
	include ("includes/head.php");
	include ("includes/connect.php");
	$conn->close();

	?>
</head>
<body>
	<div class="frame">
		<div class="content">
			<h1>To-Do List</h1>
			<h3>Welcome to my To-Do list!</h3>
			<p>Here you can change the selected item </p>
			<form action="indexeditinput.php?id=<?php echo $update; ?>" method="post">
			<input type="text" name="edit" value="" placeholder="Edit item" autocomplete="off">
			<input type="submit" name="Submit" value="Update">
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