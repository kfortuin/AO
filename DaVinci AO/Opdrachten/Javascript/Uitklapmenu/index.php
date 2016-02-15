<!doctype HTML>
<html>
<head>
<style>
	#block {
		width: 100px;
		height: 100px;
		background-color: red;
	}

</style>
</head>
<body>

	<div id ="tekst" onclick="showTekst()"></div>
	<p>Hover over this block really fast for a mad rave party, yo</p>
	<div id="block" onmouseover="hover()" onmouseout="unhover()"></div>
	<script>
	var element = document.getElementById('tekst');
		element.innerHTML = 'Click here for magic';

		function showTekst() 
		{
			if(element.innerHTML === 'You\'re a wizard, Harry')
		{
			element.innerHTML = 'Click here for magic';
		}
		else
		{
			element.innerHTML = 'You\'re a wizard, Harry';
		}
		}

	var sender = document.getElementById('block');
	function hover()
	{
		sender.style.backgroundColor = 'blue';
	}
	function unhover()
	{
		sender.style.backgroundColor = 'red';
	}

	</script>
</body>
</html>