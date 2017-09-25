<?php
    $dbhost = "localhost:3306";
    $dbuser = "root";
    $dbpass = "admin";
    $connection = mysqli_connect($dbhost, $dbuser, $dbpass);
    if(!$connection){
        die("connection error " . mysqli_error());
    }
    echo "connected successfully";
    mysqli_close($connection);
?>
