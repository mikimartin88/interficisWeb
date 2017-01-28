<?php
        if(isset($_POST['botonAñadir']))
{
    // checks and alerts
    // ...

// Actualizamos en funcion del id que recibimos

        $nombre = $_POST['nombre'];
        $descripcion = $_POST['descripcion'];

        $mysqli = mysqli_connect("localhost","root","root", "test");
        mysqli_set_charset($mysqli, "utf8");
        $query = "INSERT INTO `principios` (`id`, `nombre`, `descripcion`) VALUES (NULL, ";

        $query .= "'";
        $query .= $nombre;
        $query .= "'";
        $query .= ", ";

        $query .= "'";
        $query .= $descripcion;
        $query .= "'";
        $query .= " )";

if (mysqli_query($mysqli, $query)== FALSE)   {
     echo "Error: " . $query . "<br>" . mysqli_error($mysqli);
}
mysqli_close($mysqli);
}
header('Location: principios.php');
exit;
?>