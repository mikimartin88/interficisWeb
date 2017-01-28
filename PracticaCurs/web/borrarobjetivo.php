<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
// checks and alerts
// ...
// Actualizamos en funcion del id que recibimos
$idObjetivo = $_POST['item2'];
$mysqli = mysqli_connect("localhost","root","root", "test");
mysqli_set_charset($mysqli, "utf8");
$numeroFIlas = $mysqli->query("SELECT * FROM proyectos WHERE alineadoObj = ".$idObjetivo."");
if ($numeroFIlas->num_rows == 0){
    $resDelete = $mysqli->query("DELETE FROM `objetivos` WHERE `objetivos`.`id`= ".$idObjetivo."");
}else{
    echo -1;
}
mysqli_close($mysqli);
?>
