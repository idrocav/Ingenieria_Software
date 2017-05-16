<?php

define('BD_HOST'		, 'localhost');
define('BD_USERNAME'	, 'root');
define('BD_PASSWORD'	, '');
define('BD_NAME'		, 'reservas');

define('SITE_URL'			, 'http://localhost:8080/Reservas'); //$protocol . "://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'] );
define('SITE_TITLE'			, 'Sistema de reservas');
define('SITE_TAGS'			, 'Reservas, restaurant');
define('SITE_DESCRIPTION'	, 'Sistemas para reserva de mesas en tu restaurant favorito');

//inicializando conexión
$link = mysql_connect(BD_HOST, BD_USERNAME, BD_PASSWORD) or die('No se pudo conectar: ' . mysql_error());
mysql_select_db(BD_NAME) or die('No se pudo seleccionar la base de datos');

?>