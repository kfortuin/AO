<?php 
$update = isset($_GET['id']) ? $_GET['id']:null;
$edit = $_POST['edit'];
include("includes/connect.php");



if (empty($edit))
	{
		$edit = "";
	}
	else
	{
	$sql = "UPDATE activiteiten SET omschrijving =  '$edit' 
	WHERE id = $update";
	}

	if (mysqli_query($conn, $sql)) {
		echo "Record updated successfully";
	} 
	else 
	{
		echo "Error updating record: " . mysqli_error($conn);
	}

header('Location: indexedit.php');

$conn->close();