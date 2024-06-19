<?php
include("qryGlobal.php");

$uname = mysqli_real_escape_string($mysqli,$_POST['username']);
$password = mysqli_real_escape_string($mysqli,$_POST['password']);

if ($uname != "" && $password != ""){

    $sql_query = "select id from personeel where username='".$uname."' and password='".$password."'";

    $result = mysqli_query($mysqli,$sql_query);
    $row = mysqli_fetch_array($result);

    if (isset($row['id']) && $row['id'] != "")
    {
        $_SESSION['uname'] = $uname;
        $_SESSION['personeel'] = $row['id'];
        echo 1;
    }else{
        echo 0;
    }

}