
   <?php

        $mysqli = mysqli_connect("localhost","root","root", "test");
        mysqli_set_charset($mysqli, "utf8");
        $queryEvaluaciones ="SELECT * FROM evaluaciones WHERE idProyecto=".$idProyecto." ";
        if(isset($_POST['date-start'])){
            $queryEvaluaciones .= "AND fecha >= ".$_POST['date-start']." ";
        }
        if(isset($_POST['date-end'])){
            $queryEvaluaciones .= "AND fecha <= ".$_POST['date-end']." ";
        }
        $res = $mysqli->query($queryEvaluaciones);
        $resp = $mysqli->query("SELECT * FROM proyectos WHERE id=".$idProyecto.";");


        $fecha = array();
        $responsabilidad = array();
        $estrategia = array();
        $adquision = array();
        $rendimiento = array();
        $conformidad = array();
        $conductaHumana = array();

        $nombre = array();

        while($row = $res->fetch_row()){
        array_push($fecha, $row[1]);

        array_push($responsabilidad, $row[2]);
        array_push($estrategia, $row[3]);
        array_push($adquision, $row[4]);
        array_push($rendimiento, $row[5]);
        array_push($conformidad, $row[6]);
        array_push($conductaHumana, $row[7]);


        }


        while($row1 = $resp->fetch_row()){
            array_push($nombre, $row1[1]);

         }

json_encode($fecha)



?>
