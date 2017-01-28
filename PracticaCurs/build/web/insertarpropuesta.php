        <?php
    // checks and alerts
    // ...

// Actualizamos en funcion del id que recibimos

        $titulo = $_POST['nombre'];
        $descripcion = $_POST['descripcion'];
        $capitalInicial = $_POST['capital'];
        $objetivo = $_POST['objetivo'];
        $fecha = $_POST['fecha'];
        $prioridad = $_POST['prioridad'];

        $mysqli = mysqli_connect("localhost","root","root", "test");
        mysqli_set_charset($mysqli, "utf8");
        $query = "INSERT INTO `propuestas` (`id`, `titulo`, `prioridad`,`descripcion` , `fechaAlta`, `fechaBaja` , fechaAprobacion, `fechaInicio` , `capitalInicial` , `capitalAsignado` ,`idObjetivo`, `estado`) VALUES (NULL, ";

        $query .= "'";
        $query .= $titulo;
        $query .= "'";

        $query .= " , ";

        $query .= "'";
        $query .= $prioridad;
        $query .= "'";


        $query .= " , ";

        $query .= "'";
        $query .= $descripcion;
        $query .= "'";

        $query .= " , ";
        $query .= "CURDATE()";
        $query .= " , ";

        $query .= "'";
        $query .= NULL;
        $query .= "'";

        $query .= " , ";

        $query .= "'";
        $query .= NULL;
        $query .= "'";

        $query .= " , ";

        $query .= "'";
        $query .= $fecha;
        $query .= "'";

        $query .= " , ";

        $query .= "'";
        $query .= $capitalInicial;
        $query .= "'";

        $query .= " , ";

        $query .= "'0'";

        $query .= " , ";

        $query .= "'";
        $query .= $objetivo;
        $query .= "'";

        $query .= " , ";

        $query .= "'";
        $query .= "pendiente";
        $query .= "'";
        $query .= " )";

if (mysqli_query($mysqli, $query)== FALSE)   {
     echo "Error: " . $query . "<br>" . mysqli_error($mysqli);
}

mysqli_close($mysqli);

  header('Location: propuestas.php');
  exit();

?>