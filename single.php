<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

$id=$_GET['id'];

require 'function.php';
$resultid=getArticleById($id);
$categories=getCategories();
$categories2=getArticlesByCategory2($id);
require 'header1.php';
require 'header2.php';

?>


<div class="gigadiv container">
        <div class="row">
            <div class="col-6">
                <div class="singleimg" style="background-image:url('<?php echo $resultid['image'] ?>')">
                </div>
            </div>
            <div class="col-6 display-6">
                <div class="title text-center display-5 fw-bold text-primary">
                    <?php echo $resultid['title'] ?>
                </div>
                <div class="mx-3 my-3 fw-bold text-center"> 
                    <div class="row">
                        <div class="col-6">
                            <?php $pseudo=getAuteur($id);
                            echo $pseudo['pseudo'] ?>
                        </div>
                        <div class="col-6">
                            <?php echo $resultid['date de publication'] ?>
                        </div>
                    </div>
                </div>
                <div class="fontsize">
                    <?php echo $resultid['content'] ?>
                </div>
                <div class="my-4"><?php foreach($categories2 as $categorie2){ ?>
                    <a class="btn btn-primary" href="categories.php?category=<?php echo $categorie2['category'] ?>"><?php echo $categorie2['category'] ?></a>
                <?php } ?></div>
                

                <?php if(isset($_SESSION['id'])){ if($resultid['auteur_id']==$_SESSION['id']){ ?>
                <div class="row">
                    <div class="offset-3 col-3">
                        <div class="my-2 text-center">
                            <a class="btn btn-primary" href="singlemodif.php?id=<?php echo $id ?>">Modifier</a>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="my-2 text-center">
                            <a id="btnsuppress<?php echo $id ?>" class="btnsuppress btn btn-danger">Supprimer</a>
                        </div>
                    </div>
                </div>
                <?php }} ?>

                <div class="my-4 text-center">
                    <a href="index.php">Menu</a>
                </div>
            </div>
        </div>

</div>


<?php require 'footer.php';?>