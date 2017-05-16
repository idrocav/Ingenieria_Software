<?php

class restaurante_model
{
	function listar()
	{
		$sql = 'select * from restaurante';
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
}

?>