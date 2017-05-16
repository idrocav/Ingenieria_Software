<?php

class mesa_model
{
	var $Cod_Restaurante;

	function listar( $condition = '')
	{
		$sql = 'select m.Cod_Mesa, m.Fumador, m.Cantidad_Personas, rm.Numero_Mesa, rm.Estado
					from restaurante_mesa as rm 
						inner join mesa as m
					on m.Cod_Mesa = rm.Cod_Mesa
						inner join restaurante as r 
					on r.Cod_Restaurante = rm.Cod_Restaurante ' . $condition . ' order by rm.Numero_Mesa asc';
		$sql = mysql_query($sql);
		if(mysql_num_rows($sql))
		{
			while($dt = mysql_fetch_array($sql))
			{
				$ret[] = $dt;
			}
			return $ret;
		}
		else
		{
			return FALSE;
		}
	}

	function listarDeRestaurante()
	{
		return $this->listar(" where rm.Cod_Restaurante = '". $this->Cod_Restaurante ."'");
	}
}

?>