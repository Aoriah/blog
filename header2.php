
		<div class="row">
			<div class="col-1">
				<div class="dropdown d-inline">
					<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
						Categories
					</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<?php foreach($categories as $categorie){ ?>
							<li><a class="dropdown-item" href="categories.php?category=<?php echo $categorie['category'] ?>"><?php echo $categorie['category'] ?></a></li>
						<?php } ?>
					</ul>
				</div>
			</div>

			<div class="col-6 offset-3">
				<input id="search" name="search" value="Recherchez votre anime préféré" type="text">
			</div>

			<?php if(!$_SESSION){ ?>
				<div class="col-1 offset-9">
					<form name="identification" method="post" action="identification.php">
						<div>             
							<label for="pseudo">Pseudo:</label>
							<input value="" id="pseudo" class="mt-2 mb-2" type="text" name="pseudo">
						</div>
						<div>             
							<label for="password">Mot de passe:</label>
							<input value="" id="password" class="mt-2 mb-2" type="password" name="password">
						</div>
						<input id="submit" class="mt-2 offset-5" type="submit" value="Connexion">
					</form>
				</div>
				<div class="col-2 offset-10 text-danger alert">

					<?php if(isset($_GET['message'])){ if($_GET['message']=="pasok"){?>
						Veuillez remplir tous les champs.
					<?php }?>
					<?php if($_GET['message']=="pseudofalse"){?>
						Pseudo inconnu.
					<?php }?>
					<?php if($_GET['message']=="mdpfalse"){?>
						Mot de passe incorrect.
					<?php }}?>
				</div>
				<div class="col-2 offset-10">
					<p>Pas encore de compte?</p>
				</div>
				<div class="col-2 offset-9">
					<div class="text-end">
						<a href="forminscription.php"> Incrivez-vous</a>
					</div>
				</div>	
			<?php } ?>
			
			<?php if($_SESSION){?>
				<div class="col-1 offset-10">
					<div class="dropdown text-end">
						<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false"><?php echo $_SESSION['pseudo'] ?></button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
							<li><a class="dropdown-item" href="deco.php?">Deconnexion</a></li>
							<li><a class="dropdown-item" href="articlebyauteur.php?">Articles</a></li>
						</ul>
					</div>
				</div>
			<?php } ?>
		</div>