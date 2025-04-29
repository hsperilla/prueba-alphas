<?php
namespace App\Models;
use App\Interfaces\SearchDataModelInterface; 

class SearchDataModel implements SearchDataModelInterface{
    protected $conn;
    public function __construct(){
        $this->conn = mysqli_connect('localhost','root','','startup');
    }

    public function getClases($request) {
        $query = "SELECT c.nombre, p.nombre AS ponderacion FROM Clases c INNER JOIN Ponderacion p ON c.idPonderacion = p.id WHERE c.nombre LIKE '%".$request."%'";
        $query_result = mysqli_query($this->conn,$query);
        $retornar = '';
        while($row = mysqli_fetch_array($query_result)){
            $retornar .= 'Clase | '.$row['nombre'].' | '.$row['ponderacion'].' || ';
        } 
        return $retornar;      
    }

    public function getExamenes($request) {
        $query = "SELECT e.nombre, te.nombre AS tipo_examen FROM Examenes e INNER JOIN TipoExamen te ON e.idTipoExamen = te.id WHERE e.nombre LIKE '%".$request."%'";
        $query_result = mysqli_query($this->conn,$query);
        $retornar = '';
        while($row = mysqli_fetch_array($query_result)){
            $retornar .= 'Exámen | '.$row['nombre'].' | '.$row['tipo_examen'].' || ';
        } 
        return $retornar; 
    }    
}

?>