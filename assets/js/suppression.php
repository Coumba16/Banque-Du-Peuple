<?php
//echo "vous m'avez supprimer";
require_once '../model/bd.php';
global $bd;
$sql = "DELETE from operation where id='".$_POST['coumba']."' ";
echo $bd->exec($sql);