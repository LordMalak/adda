<HTML>
	<HEAD>
		<!--||||||||||||||||||||||||||||||||||||SCRIPT MENU-->
		<script type="text/javascript">
			window.onload=montre;
			function montre(id)
			{
				var d = document.getElementById(id);
				for (var i = 1; i<=10; i++)
				{
					if (document.getElementById('smenu'+i)) {document.getElementById('smenu'+i).style.display='none';}
				}
				if (d) {d.style.display='block';}
			}
		</script><!--fin SCRIPT MENU-->
		<link href="Style.css" rel="stylesheet" type="text/css" />
		<TITLE>
			Association ADDA Paniers Solidaires
		</TITLE>
	</HEAD>
	<BODY>
	<div class="cadre">
		<p><img src="image/header.jpg" alt="AMAP accueil" width="985" height="80" /></p>