<?php
include("qryGlobal.php");
// Check user login or not
if(!isset($_SESSION['uname'])){
   header('Location: index.php');
}

?>
<!doctype html>
<html>
    <head></head>
    <body>
        <h1>Homepage</h1>
        <br>
        <a href="?page=logout">Logout</a>
    </body>
</html>