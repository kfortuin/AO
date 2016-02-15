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