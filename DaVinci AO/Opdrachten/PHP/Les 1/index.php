<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="css/style.css" type="text/css">
		
		<?php
		$day = "";
		$hour = "";	
		$time = "";
		$hour =	date('H');
		$imageUrl = "";

		if ($hour >= 06 && $hour < 12) {
			$day = 'morning';
			$imageUrl = 'images/morning.png' ;
			$time = "morning";
		} elseif ($hour >= 12 && $hour < 17) {
			$day = 'afternoon';
			$imageUrl = 'images/afternoon.png';
			$time = "afternoon";
		} elseif ($hour >= 17 && $hour < 21) {
			$day = 'evening';
			$imageUrl =  'images/evening.png';
			$time =  "evening";
		} elseif ($hour >= 21 || $hour < 06) {
			$day = 'night';
			$imageUrl = 'images/night.png';
			$time =  "night";
		} 
		
 		?>
			<title>
			<?php
			 echo "Good " .$time;

			?>
			</title>

 
        </script>
	</head>
	<body style="background: url('<?php echo $imageUrl ?>') 
	50% 50% / cover no-repeat fixed">
		
		<div id="container">
			<p id="good">

				<?php  
					echo "Good " .$time; 
				?>	
			</p>
				<br>
			<p id="date">
				<?php	
					echo "It's now: " .date('H:i');
				?>
			</p>
		<a id="link" href="../../index.php">Homepage</a>	
		</div>
	</body>
</html>