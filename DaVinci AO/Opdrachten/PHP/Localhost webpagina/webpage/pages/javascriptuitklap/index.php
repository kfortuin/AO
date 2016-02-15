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
<input type="button" name="button" value="button" onclick="showTekst()">
	<div id ="tekst" onclick="showTekst()"></div>
	<div id="block" onmouseover="hover()" onmouseout="unhover()"></div>
	<script>
	var element = document.getElementById('tekst');
		element.innerHTML = 'something';

		function showTekst() 
		{
			if(element.innerHTML === 'Hoi slimme leerling!')
		{
			element.innerHTML = 'something';
		}
		else
		{
			element.innerHTML = 'Hoi slimme leerling!';
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