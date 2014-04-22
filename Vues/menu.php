<div id="listmenu">
	<ul>
		<li class="greyAccueil" onmouseover="javascript:montre();">
			<a href="index.php">Accueil</a>
		</li>
		<li onmouseover="javascript:montre('smenu1');" onmouseout="javascript:montre('');">
			<a href="#" class="green">Panier</a>
			<ul id="smenu1">
				<li><a href = 'index.php?vue=panier&action=visualiser'>Visualiser les paniers</a></li>
				<li><a href = 'index.php?vue=panier&action=creer'>Créer le prochain panier</a></li>
			</ul>
		</li>
		<li onmouseover="javascript:montre('smenu2');" onmouseout="javascript:montre('');">
			<a href="#" class="blue">Liens externes</a>
			<ul id="smenu2">
				<li><a href="http://amael.olyme.in/portfolio">Portfolio</a></li>
				<li><a href="http://lordmalak.byethost11.com">Situation Professionnelle dfsi</a></li>
			</ul>
		</li>
		<li>
			<a href="mailto:amael.hervoche@gmail.com">Contact</a>
		</li>
	</ul>
</div>
<!--fin menu-->

<!-- CONTENEUR -->
<div class="conteneur">
	<!-- image panier -->
	<div class="gauche">
		<img src="image/legumes.jpg" width="180" height="455" alt="La biodiversité en panier" />
	</div>
	<div class="zoneindex">