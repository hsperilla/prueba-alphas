<?php
namespace App\Controllers;
use App\Models\SearchDataModel; 
use App\Interfaces\SearchDataInterface; 
// Clase abstracta que implementa la interface
abstract class AbstractSearchDataController implements SearchDataInterface {
    protected $dato;
    protected $model;
    public function __construct(){
        $this->dato = $_SERVER['argv'][1];
        $this->model = new SearchDataModel();
    }
    // Métodos abstractos (requeridos en las clases hijas)     
    abstract protected function getClases();
    abstract protected function getExamenes();

    // Método concreto que muestra los datos obtenidos
    public function showData() {
        $numCaracteres = strlen($this->dato);
        if($numCaracteres < 3){
            return '¡ALERTA! El número mínimo de caracteres a consultar es 3';
        }else{
            $clases = $this->getClases();
            $examenes = $this->getExamenes();
            return $clases.' '.$examenes;
        }         
    }
}
// Clase concreta que extiende la clase abstracta y proporciona la lógica, sus métodos usa la clase model para realizar la busqueda de los datos
class SearchDataController extends AbstractSearchDataController {
    protected function getClases() {
        $clases = $this->model->getClases($this->dato);
        return $clases;
    }

    protected function getExamenes() {
        $examenes = $this->model->getExamenes($this->dato);
        return $examenes;
    }
}

?>

