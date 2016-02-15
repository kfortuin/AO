<!DOCTYPE html>
<html>
<head>
	<title>Hallo</title>
</head>
<body>
	<p>I made this page to test a few things</p>
	<div id="text" onclick="changeText()" onmouseover="hoverText()" onmouseout="unhoverText()"></div>
	<script>
	var element = document.getElementById('text');
		element.innerHTML = 'If you click on me I will change';

		function changeText()
		{
			if(element.innerHTML === 'If you click on me I will change')
			{
				element.innerHTML = 'See? Now click me again to change.';
			}
			else if(element.innerHTML === 'See? Now click me again to change.')
			{
				element.innerHTML = 'I can change again, see? Now click me to return to my original text';
			}
			else if(element.innerHTML === 'I can change again, see? Now click me to return to my original text')
			{
				element.innerHTML = 'If you click on me I will change';
			}
		}

		function hoverText()
		{
			if(element.innerHTML === 'If you click on me I will change')
			{
				element.innerHTML.visibility = visible;
			}
		}

		function unhoverText()
		{
			if (element.innerHTML === 'If you click on me I will change') 
			{
				element.innerHTML.visibility = hidden;	
			};
		}
	</script>
</body>
</html>