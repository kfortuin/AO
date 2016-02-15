<?php
	include "index.logic.php";
	include "../common/header.php";
?>
	<h1>Species</h1>
	<p class="options"><a href="create.php">create</a></p>
	<table>
		<thead>
			<tr>
				<!-- <th>Name</th> -->
				<th>Species</th>
				<th>Status</th>
				<th></th>
				<th></th>
			</tr>
		</thead>	
		<tbody>
<?php 
	foreach ($species as $part_species):
?>
		<tr>
			<!-- <td><?=$part_species['name']?></td> -->
			<td><?=$part_species['species']?></td>
			<td><?=$part_species['status']?></td>	
			<td class="center"><a href="edit.php?id=<?=$part_species['id']?>">edit</a></td>
			<td class="center"><a href="delete.php?id=<?=$part_species['id']?>">delete</a></td>
		</tr>
<?php 
	endforeach;
?>
		</tbody>
	</table>
	
<?php
	include "../common/footer.php";
?>