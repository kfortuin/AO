<?php

	$db = new mysqli('localhost', 'root', '', 'hospital');

	$query = "select * from client";
	$result = $db->query($query);

	$clients = $result->fetch_all(MYSQLI_ASSOC);
	
?>