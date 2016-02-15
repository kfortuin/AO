<?php 
	$title = "Raadsel";
	include "inc/head.php";
?>
<body 

<?php 
	$style = "";
	$bg = "";
 	if (isset($_GET['style'])){
 		$style = $_GET['style'];
	}
	if ($style == "") $bg = "smokey";

	if (isset($_GET['style'])){
 		$style = $_GET['style'];
	}
	if ($style == "smokey") $bg = "smokey";

 	if (isset($_GET['style'])){
		$style = $_GET['style'];
	}
	if ($style == "night") $bg = "night";
	
 	if (isset($_GET['style'])){
 		$style = $_GET['style'];
	}
	if ($style == "misty") $bg = "misty";

 	if (isset($_GET['style'])){
		$style = $_GET['style'];
	}
	if ($style == "zombies") $bg = "zombies";	
?>
class="<?php echo $bg; ?>">
	<div class="frame">
		<?php
			include "inc/header.php";
		
			include "inc/menu.php";
		?>	
		<div class="content">
			<?php 
				include "inc/getriddle.php";

				$hints = "";
				if (isset($_GET['hints'])){
					$hints = $_GET['hints'];
				} 
				if ($hints == "all") include "inc/gethints.php";

				$solution = "";
				if (isset($_GET['solution'])){
					$solution = $_GET['solution'];
				}
				if ($solution == "all") include "inc/getsolution.php";
			?>
			
			
		</div>
		<?php
			include "inc/footer.php";
		?>
	</div>
</body>
</html>