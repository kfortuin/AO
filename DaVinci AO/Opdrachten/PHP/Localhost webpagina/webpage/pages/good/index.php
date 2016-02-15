<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="css/style.css" type="text/css">
		<link rel="shortcut icon" href="favicon.ico">

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

 
        <script type="text/javascript">
		function updateClock (){
		  var currentTime = new Date ( );

		  //Get the hours for updating clock
		  var currentHours = currentTime.getHours ();
		  
		  //Get the minuts for updating clock
		  var currentMinutes = currentTime.getMinutes ();
		  
		  //Get the secconds for updating clock
		  var currentSeconds = currentTime.getSeconds ();

		  // Pad the minutes and seconds with leading zeros, if required
		  currentMinutes = ( currentMinutes < 10 ? "0" : "" ) + currentMinutes;
		  currentSeconds = ( currentSeconds < 10 ? "0" : "" ) + currentSeconds;

		  // Choose either "AM" or "PM" as appropriate
		  var timeOfDay = ( currentHours < 12 ) ? "AM" : "PM";

		  // Convert the hours component to 12-hour format if needed
		  currentHours = ( currentHours > 23 ) ? currentHours - 23 : currentHours;

		  // Convert an hours component of "0" to "12"
		  currentHours = ( currentHours == 0 ) ? 12 : currentHours;

		  // Compose the string for display
		  var currentTimeString = currentHours + ":" + currentMinutes + ":" + currentSeconds; // + " " + timeOfDay;

		  // Update the time display
		  document.getElementById("clock").firstChild.nodeValue = currentTimeString;
		}
	</script>
	</head>
	<body onload="updateClock(); setInterval('updateClock()', 1000 )" 
	style="background: url('<?php echo $imageUrl ?>') 
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
					echo "It's now: "; //.date('H:i');
				?>
				<br>
				<span id="clock">&nbsp;</span>
			</p>
		<a id="link" href="../../index.php">Homepage</a>	
		</div>
	</body>
</html>