$( document ).ready(function() {

	$("#restaurante").change(function (){
		var rest = $(this).val();
		$.ajax({
			  method: 'POST',
			  dataType: "json",
			  url: _base_url + '/restaurante',
			  data: 'tipo=ajax&rest=' + rest,
			  success: function(resultado){
			        if(resultado.estado == 1)
			        {
			        	var $ctrl = '';
			        	mesas = resultado.mesas;
			        	$.each( mesas, function( key, value ) {

			        		$ctrl += '<div class="col-md-3 col-sm-4 col-xs-12 mesa" data-fumador="'+value.Fumador+'" data-numero="'+value.Numero_Mesa+'" ';
			        		$ctrl += 'data-estado="'+ value.Estado +'" data-personas="'+ value.Cantidad_Personas + '">';
				            $ctrl += '<h2>Mesa ' + value.Numero_Mesa + '</h2>';
				            $ctrl += '<span class="mesas mesa-btn glyphicon glyphicon-oil '+ value.Estado +'" aria-hidden="true" data-toggle="modal" data-target="#detalleMesa"></span>';
				            $ctrl += '<p><a class="btn mesa-btn btn-default" href="#" role="button" data-toggle="modal" data-target="#detalleMesa">Ver detalle &raquo;</a></p>';
				            $ctrl += '</div>';
						});
						$('.container_mesas').html($ctrl);
						init_mesas_clic();						

			        }
			        else
			        {
			        	alert(resultado.error);
			        }
			    }
		});
	});

	function init_mesas_clic()
	{
		$(".mesa-btn").click(function (){
			var control = $(this).parents(".mesa");
			var fumador = SelectFumador(control.attr('data-fumador'));
			var numero = control.attr('data-numero');
			var personas = control.attr('data-personas');
			var estado = SelectEstado(control.attr('data-estado'));
			
			$('.mesa_numero').html(numero);
			$('.d_n_personas').html(personas);
			$('.d_fumador').html(fumador);
			$('.d_estado').html(estado);
		});
	}

	function SelectEstado(valor){
		switch(valor){
			case 'LI': return 'LIBRE'; 
					break;
			case 'OC': return 'OCUPADO';
					break;
			case 'RE': return 'RESERVADO';
					break;
			case 'PI': return 'PIDIENDO';
					break;
			case 'ES': return 'ESPERANDO COMIDA';
					break;
			case 'SE': return 'SERVIDO';
					break;
			case 'CU': return 'CUENTA';
					break;
			default : return 'PAGANDO';
					break; 
		}
	}

	function SelectFumador(valor){
		switch(valor){
			case 'F': return 'FUMADOR'; 
					break;
			default : return 'NO FUMADOR';
					break; 
		}
	}

	init_mesas_clic();

});