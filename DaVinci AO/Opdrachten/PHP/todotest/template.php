<!DOCTYPE html>
<html>
<head>
	<title>Todo</title>
</head>
<body>
<table border="1">	
	<tr>
		<th>id</th>
		<th>omschrijving</th>
		<th colspan="2">actie</th>
	</tr>

	<?php foreach ($rows as $row) { ?>
	<tr>
		<td><?php echo $row['id'] . "<br>"; ?></td>
		<td><?php echo $row['omschrijving'] . "<br>"; ?></td>
		<td><a href="index.php?id=
		<?php echo $row['id'] ?>&action=delete">delete</a></td>
		<td><a href="index.php?id=
		<?php echo $row['id'] ?>&action=update">edit</a></td>
	</tr>
	<?php } ?>
</table>


</body>
</html>