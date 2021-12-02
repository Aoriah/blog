<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

require 'function.php';
$articles=getArticles();
$categories=getCategories();
require 'header1.php';
require 'header2.php';
?>




<div class="container">
    <div class="row">

        <?php foreach($articles as $article){ ?>
            <div class="d-flex col-3 my-5 mx-5 carte" style="background-image:url('<?php echo $article['image'] ?>')">
                <div class="bodytext fw-bold text-center"> 
                    <div class="title">
                        <?php echo $article['title'] ?>
                    </div>
                    <div class="row">
                        <div class="col-6 auteur">
                            <?php $id=$article['id'];
                            $pseudo=getAuteur($id);
                            echo $pseudo['pseudo'] ?>
                        </div>
                        <div class="col-6 date">
                            <?php echo $article['date de publication'] ?>
                        </div>
                    </div>
                    <div class="petitcomment">
                        <?php echo $article['petit'] ?>
                    </div>
                    <div class="bouton">
                        <a href="single.php?id=<?php echo $article['id'] ?>" class="btn btn-primary">Voir Plot</a>
                    </div>
                </div>
            </div>
        <?php } ?>

    </div>
    <!-- FORMULAIRE D'AJOUT-->
    <div><p class="display-6 text-danger text-center">CONNECTEZ-VOUS POUR AJOUTER UN ANIME</p>
    <?php if ($_SESSION){ ?>
        <form name="add" method="post" action="traitement.php" enctype='multipart/form-data'>
            <div>             
                <label for="title">Titre</label>
                <input value="" id="title" class="mt-2 mb-2" type="text" name="title">
            </div>
            <div>             
                <label for="image">Chemin de l'image:</label>
                <input value="" id="image" class="mt-2 mb-2" type="text" name="image">
            </div>
            <div>             
                <label for="petit">Synthèse</label>
                <input value="" id="petit" class="mt-2 mb-2" type="text" name="petit">
            </div>

            <div>
                <label for="type">Catégories:</label>
                <div class="row">
                    <?php $getallcategories=getAllCategories();
                    foreach($getallcategories as $getallcategorie){;?>
                    <div class="col-4">
                        <input id="checkbox" value="<?php echo $getallcategorie['id'] ?>" class="mt-2 mb-2 type" type="checkbox" name="category<?php echo $getallcategorie['id'] ?>">
                        <label for="type"><?php echo $getallcategorie['category'] ?></label>
                    </div>
                    <?php } ?>
                    <div class="col-4">
                        <label for="addcategory">Autre catégorie</label>
                        <input id="addcategory" value="" class="mt-2 mb-2 type" type="text" name="addcategory">
                        <button class="btn btn-primary" value="" id="btncategory" name="btncategory">Ajouter</button>
                    </div>
                </div>
            </div>

            <div>             
                <label for="content">Commentaire</label>
                <input value="" id="content" class="mt-2 mb-2" type="text" name="content">
            </div>
            <!--<div>             
                <label for="date de publication">Date</label>
                <input value="" id="date de publication" class="nes-input mt-2 mb-2" type="date" name="date de publication">
            </div>-->
            <input id="submit" class="mt-5 mb-5 col-2 offset-5" type="submit" value="Ajouter">
        </form>
    <?php } ?>
    </div>
</div>






<?php require 'footer.php';?>