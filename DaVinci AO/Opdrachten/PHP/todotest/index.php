<?php 

require("config.php");

// Create Connection
$conn = mysqli_connect(SERVERNAME, USERNAME, PASSWORD, DBNAME);

// Check Connection
if (!$conn) 
{
	die("Connection failed: " . mysqli_connect_error());
}

// Read table from DB
$sql = "SELECT * FROM `activiteiten`";

$result = mysqli_query($conn, $sql);

$rows = mysqli_fetch_all($result, MYSQLI_ASSOC);

if (!empty($_GET['id']))
{
	echo  $_GET['id'] . " " . $_GET['action'];
}
else
{
	require "template.php";
}

?>