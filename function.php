<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

require 'connection.php';
 

function getArticles(){
    $db=connection();
    $articles=$db->query('SELECT * FROM articles');
    $results=$articles->fetchAll(PDO::FETCH_ASSOC);
    return $results;
}

function getAuteur($id){
    $db=connection();
    $auteur=$db->query('SELECT pseudo FROM articles INNER JOIN auteurs ON articles.auteur_id=auteurs.id WHERE articles.id='.$id.'');
    $pseudo=$auteur->fetch(PDO::FETCH_ASSOC);
    return $pseudo;
}

function getArticleById($id){
    $db=connection();
    $article=$db->query('SELECT * FROM articles WHERE articles.id='.$id.'');
    $pseudo=$article->fetch(PDO::FETCH_ASSOC);
    return $pseudo;
}
