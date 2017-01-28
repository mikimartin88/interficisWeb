<?php
    $um = $_POST['umbralmedio'];
    $uo = $_POST['umbraloptimo'];
    $queryUpdate = "UPDATE `metricas` SET `umbralMedio` = ".$um." , `umbralOptimo` = ".$uo." WHERE `metricas`.`id` = 99";
    $mysqli = mysqli_connect("localhost","root","root", "test");
    mysqli_set_charset($mysqli, "utf8");
    $res = $mysqli->query($queryUpdate);
    mysqli_close($mysqli);
    
    //header('Location: geco.php');
    exit();
?>