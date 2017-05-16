<?php
include('../config.php');
include('../models/restaurante_model.php');
include('../models/mesa_model.php');

$restaurante = str_replace("'","",$_POST['rest']);

//Objeto restaurante
$objResuarante = new restaurante_model();
$objMesa = new mesa_model();
$mesas = array(); // array que acumulará las mesas

//variable con los options para restaurants
if($restaurante)
{
    // Si hay restaurantes, por defecto listamos las mesas del primer restaurant
    $objMesa->Cod_Restaurante = $restaurante; // Asiganamos el codigo del primer restarant al objeto mesa
    $mesas = $objMesa->listarDeRestaurante();
    if($mesas)
    {
        echo json_encode(array('estado'=>1, 'mesas'=>$mesas));
    }
    else
    {
        echo json_encode(array('estado'=>0, 'error'=>'Mesas no encontradas'));
    }
}
else
        echo json_encode(array('estado'=>0, 'error'=>'Restaurant errado'));

?>