<?php 
	$title = "Rondom het kampvuur";
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
			<h2>De man met de bijl</h2>
			<p 
			<?php/*
			$fontsize = "";
			$size = "";

			if (isset($_GET['fontsize'])){
				$fontsize = $_GET['fontsize'];
			}
			if ($fontsize == "huge") $size = "30pt"; 

			if (isset($_GET['fontsize'])){
				$fontsize = $_GET['fontsize'];
			}
			if ($fontsize == "big") $size = "20pt"; 

			if (isset($_GET['fontsize'])){
				$fontsize = $_GET['fontsize'];
			}
			if ($fontsize == "normal") $size = "15pt"; 

			if (isset($_GET['fontsize'])){
				$fontsize = $_GET['fontsize'];
			}
			if ($fontsize == "") $size = "15pt"; 

			*/?>

			>

			Zombie ipsum reversus ab viral inferno, 
			nam rick grimes malum cerebro. De carne 
			lumbering animata corpora quaeritis. Summus
			 brains sit, morbo vel maleficia? De 
			 apocalypsi gorger omero undead survivor 
			 dictum mauris. Hi mindless mortuis soulless 
			 creaturas, imo evil stalking monstra 
			 adventus resi dentevil vultus comedat
			  cerebella viventium. Qui animated corpse,
			   cricket bat max brucks terribilem incessu 
			   zomby. The voodoo sacerdos flesh eater, 
			   suscitat mortuos comedere carnem virus. 
			   Zonbi tattered for solum oculi eorum defunctis
			    go lum cerebro. Nescio brains an Undead
			     zombies. Sicut malus putrid voodoo horror.
			      Nigh tofth eliv ingdead.</p>
			<h2>Het vuur dooft</h2>
			<p>Cum horribilem walking dead resurgere de crazed
			 sepulcris creaturis, zombie sicut de grave feeding 
			 iride et serpens. Pestilentia, shaun ofthe 
			 dead scythe animated corpses ipsa screams. 
			 Pestilentia est plague haec decaying ambulabat 
			 mortuos. Sicut zeder apathetic malus voodoo. 
			 Aenean a dolor plan et terror soulless vulnerum 
			 contagium accedunt, mortui iam vivam unlife. 
			 Qui tardius moveri, brid eof reanimator sed 
			 in magna copia sint terribiles undeath 
			 legionis. Alii missing oculis aliorum sicut 
			 serpere crabs nostram. Putridi braindead odores 
			 kill and infect, aere implent left four dead.
			</p>
		</div>
		<?php
			include "inc/footer.php";
		?>
	</div>
</body>
</html>