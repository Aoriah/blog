<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

require 'function.php';
$articles=getArticles();
require 'header.php';
;?>




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
</div>






<?php require 'footer.php';?>