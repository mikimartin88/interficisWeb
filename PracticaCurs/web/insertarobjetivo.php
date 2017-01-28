        <?php
    // checks and alerts
    // ...

// Actualizamos en funcion del id que recibimos

        $nombre = $_POST['nombre'];
        $descripcion = $_POST['descripcion'];
        $idPrincipio = $_POST['principio'];

        $mysqli = mysqli_connect("localhost","root","root", "test");
        mysqli_set_charset($mysqli, "utf8");
        $query = "INSERT INTO `objetivos` (`id`, `nombre`, `descripcion`, `idPrincipio`) VALUES (NULL, ";

        $query .= "'";
        $query .= $nombre;
        $query .= "'";
        $query .= ", ";

        $query .= "'";
        $query .= $descripcion;
        $query .= "'";
        $query .= ", ";

        $query .= "'";
        $query .= $idPrincipio;
        $query .= "'";
        $query .= " )";

if (mysqli_query($mysqli, $query)== FALSE)   {
     echo "Error: " . $query . "<br>" . mysqli_error($mysqli);
}
mysqli_close($mysqli);

header('Location: objetivos.php');
  exit();

?>