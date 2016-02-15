<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Mijn webpagina</title>
	
	<link rel="shortcut icon" href="icon.ico">

<?php
	require ("include/clock.php");
	$css = "style";

	function isMobile()
	{
		 return preg_match("/(android|avantgo|blackberry|bolt|boost|cricket|docomo|fone|hiptop|mini|mobi|palm|phone|pie|tablet|up\.browser|up\.link|webos|wos)/i", $_SERVER["HTTP_USER_AGENT"]);
	}

	if (isMobile())
	{
		$css = "stylemobile";
	}
	else
	{
		$css = "style";
	}
?>
	<link rel="stylesheet" href="css/<?= $css ?>.css">
</head>
<body onload="updateClock(); 
	setInterval('updateClock()', 1000 )">
	<div class="frame">
		<div class="header">
			<h1>Mijn webpagina's</h1>
		</div>

		<ul class="top-menu">
			<li><a href="#">Home</a></li>
			<li><a href="pages/contact/index.php">Contact</a></li>
		</ul>

		<div class="content">

			<p style="margin-top: 0px; margin-bottom: 20px; 
			text-align: center; font-size: 13pt;">
			<i>Hier kunt u al mijn webpagina's vinden. 
			U kunt op één van de onderstaande foto's of linkjes drukken
			om door verbonden te worden naar de website.
			Telkens wanneer ik een nieuwe webpagina maak zal die pagina ook
			 op deze website komen.</p></i>
<!--New picture 
<li id="surround">
				
				<span class="pages">
					
					<a id="example" href="pages/example/index.php">
					<img src="../images/examplepage.png" 
					alt="Example page"></a>
				
				</span>
				
				<a href="pages/example/index.php"><i><b>Example pagina</i></b></a>
				
				</li>

--> 

<!-- Onder elke webpagina:
	<div class="bottommenu">
		<ul class="bottommenu">
			<li><a href="../../index.php">Terug naar mijn webpagina</a></li>
			<span class="clear"></span>
		</ul>
	</div>
Link de 'a' naar de index.php van Mijn Webpagina's

Link de css, daarin: 

ul.bottommenu{
	background-color: black;
	padding: 5px;
	margin: 0px;
}

ul.bottommenu li{
	float: right;
	display: inline;
	margin-left: 15px;
	margin-right: 15px;
}

ul.bottommenu li a{
	text-decoration: none;
	font-family: Verdana;
	font-size: 13px;
	color: white;
}

ul.bottommenu li a:hover{
	color: white;
	text-decoration: underline;
}

span.clear{
	display: block;
	clear: both;
}
-->
			<ul class="pages">
				<li id="surround">
					<span class="pages">
						<a id="todo" href="pages/todolist/index.php">
						<img src="images/todopagina.png" 
						alt="To-do List pagina"></a>
					</span>
					<a href="pages/todolist/index.php"><i><b>To-do list pagina</b></i></a>
				</li>
			
				<li id="surround">
					<span class="pages">
						<a id="madlips" href="pages/madlips/index.php">
						<img src="images/madlipspage.png" 
						alt="Madlips page"></a>
					</span>				
					<a href="pages/madlips/index.php"><i><b>Mad lips pagina</i></b></a>				
				</li>

				<li id="surround">
					<span class="pages">
						<a id="good" href="pages/good/index.php">
						<img src="images/goodpagina.png" 
						alt="Good ... pagina"></a>
					</span>
					<a href="pages/good/index.php"><i><b>Good day pagina</b></i></a>
				</li>
			</ul>
		</div>
		<div class="footer">
			<p>
			<a  class="namelink" href="pages/contact/index.php"
			>&copy;  2015 Kevin Fortuin</a>
			</p>
		</div>
		<div class= "timestamp" >
			<?php 
			echo date("D M d");
			?>
			<br>
			<span id="clock">
			&nbsp;</span>
		</div>
	</div>
</body>
</html>