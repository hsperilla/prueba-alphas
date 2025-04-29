<?php
namespace App\Interfaces;
// Interface de obtener datos
interface SearchDataModelInterface {
    public function getClases($request);
    public function getExamenes($request);
}

?>