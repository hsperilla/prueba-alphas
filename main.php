<?php
require 'vendor/autoload.php';
use App\Controllers\SearchDataController;

$search = new SearchDataController();
echo $search->showData(); 
?>
