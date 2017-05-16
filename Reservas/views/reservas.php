      <!-- Example row of columns -->
        <div class="seleccion_restaurantes">
              <label for="restaurante">Seleccione restaurante: </label><select name="restaurante" id="restaurante"><?php echo $opts ?></select>
        </div>
      <div class="row container_mesas">


        <?php
        if($mesas)
        {
            foreach ($mesas as $mesa) {
              ?>
              <div class="col-md-3 col-sm-4 col-xs-12 mesa" data-fumador="<?php echo $mesa['Fumador'] ?>" data-numero="<?php echo $mesa['Numero_Mesa'] ?>" data-estado="<?php echo $mesa['Estado'] ?>" data-personas="<?php echo $mesa['Cantidad_Personas'] ?>">
                  <h2>Mesa <?php echo $mesa['Numero_Mesa'] ?></h2>
                  <span class="mesas mesa-btn glyphicon glyphicon-oil <?php echo $mesa['Estado'] ?>" aria-hidden="true" data-toggle="modal" data-target="#detalleMesa"></span>
                  <p><a class="btn mesa-btn btn-default" href="#" role="button" data-toggle="modal" data-target="#detalleMesa">Ver detalle &raquo;</a></p>
              </div>
        <?php
            }
        }
        else
        {
          echo 'No se encontraron restaurantes';
        }
        ?>

    </div>

    <!-- lEYENDA -->
    <ul class="container list-group mesas_leyenda">
        <div class="col-md-6">
          <li class="list-group-item libre">Libre</li>
          <li class="list-group-item reservado">Reservada</li>
          <li class="list-group-item ocupada">Ocupada</li>
          <li class="list-group-item pidiendo">Pidiendo</li>
        </div>
        <div class="col-md-6">
          <li class="list-group-item espera_comida">Esperando comida</li>
          <li class="list-group-item servido">Servido</li>
          <li class="list-group-item cuenta">Cuenta</li>
          <li class="list-group-item pagando">Pagando</li>
        </div>
    </ul>

      <hr class="featurette-divider">


      <!-- Modal -->
      <div id="detalleMesa" class="modal fade" role="dialog">
        <div class="modal-dialog">

          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4 class="modal-title">Detalle Mesa <span class="mesa_numero"></span></h4>
            </div>
            <div class="modal-body row">
              <div class="col-md-7">
                  <p>Cantidad de personas: <span class="d_n_personas">5</span></p>
                  <p>Fumador: <span class="d_fumador">f</span></p>
                  <p>Estado: <span class="d_estado">f</span></p>
              </div>
              <div class="col-md-5">
                  <a class="btn btn-success">Reservar</a>
                  <div class="clear"></div>
                  <a class="btn btn-danger">Pedido</a>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>

        </div>
      </div>

      <!-- /END THE FEATURETTES -->