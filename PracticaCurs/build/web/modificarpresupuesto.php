     <?php

    // checks and alerts
    // ...

// Actualizamos en funcion del id que recibimos

        $idPropuesta = $_POST['idPropuesta'];
        $capitalAsignado = $_POST['newPrice'];
        $mysqli = mysqli_connect("localhost","root","root", "test");
        mysqli_set_charset($mysqli, "utf8");
        $query = "UPDATE `propuestas` SET  `capitalAsignado` = ".$capitalAsignado." WHERE `propuestas`.`id` = ".$idPropuesta;

if (mysqli_query($mysqli, $query)== FALSE)   {
     echo "Error: " . $query . "<br>" . mysqli_error($mysqli);
}
mysqli_close($mysqli);
header('Location: propuestas.php');
exit;
?>