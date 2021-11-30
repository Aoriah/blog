<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

$id=$_GET['id'];

require 'function.php';
$resultid=getArticleById($id);
require 'header.php';

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
                <div class="text-center">
                    <a href="index.php">Menu</a>
                </div>
            </div>
        </div>

</div>


<?php require 'footer.php';?>