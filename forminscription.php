<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
require 'function.php';
?>

<form name="forminscription" method="post" action="inscription.php">
    <div>             
        <label for="pseudo">Pseudo:</label>
        <input value="" id="pseudo" class="mt-2 mb-2" type="text" name="pseudo">
    </div>
    <div>             
        <label for="email">Email</label>
        <input value="" id="email" class="mt-2 mb-2" type="text" name="email">
    </div>
    <div>             
        <label for="password">Mot de passe:</label>
        <input value="" id="password" class="mt-2 mb-2" type="password" name="password">
    </div>
    <input id="submit" class="mt-2 mb-5 offset-5" type="submit" value="inscription">
</form>
