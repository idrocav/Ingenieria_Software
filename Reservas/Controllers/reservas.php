<?php
include('../config.php');
include('../models/restaurante_model.php');
include('../models/mesa_model.php');

//Objeto restaurante
$objResuarante = new restaurante_model();
$objMesa = new mesa_model();
$restaurantes = $objResuarante->listar();
$mesas = array(); // array que acumulará las mesas
$opts = '<option value="">Seleccione</option>'; //variable acumuladora de los options de restaurante

$scripts_js = array('reservas'); //scripts javascript que seràn incluidos

//variable con los options para restaurants
if($restaurantes)
{
    foreach ($restaurantes as $rst) {
      $opts .= '<option value="' .$rst['Cod_Restaurante'].'">' .$rst['Nombre_Restaurante'] . '</option>';
    }

    // Si hay restaurantes, por defecto listamos las mesas del primer restaurant
    /*$objMesa->Cod_Restaurante = $restaurantes[0]['Cod_Restaurante']; // Asiganamos el codigo del primer restarant al objeto mesa
    $mesas = $objMesa->listarDeRestaurante();*/
}

include('../views/header.php');
include('../views/reservas.php');
include("../views/footer.php");
?>