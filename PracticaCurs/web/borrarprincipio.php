<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$idPrincipio = $_POST['item2'];
$mysqli = mysqli_connect("localhost","root","root", "test");
mysqli_set_charset($mysqli, "utf8");
$numeroFilas = $mysqli->query("SELECT * FROM objetivos WHERE idPrincipio = ".$idPrincipio."");
if ($numeroFilas->num_rows == 0){
    $resDelete = $mysqli->query("DELETE FROM `principios` WHERE `principios`.`id`=".$idPrincipio."");
}else{
    echo -1;
}
mysqli_close($mysqli);
?>