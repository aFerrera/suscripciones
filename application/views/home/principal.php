<main class="contenido">
  <script type="text/javascript">
    $(document).ready(function(){
      Materialize.toast('Session iniciada!', 3000, 'rounded')
    });
  </script>
  <div class="contenido center-block">
    <h2>BIENVENIDO <?=$this->session->userdata('usuario'); ?></h2>

    <div class="personalInfo card">
      <table>
        <?php foreach ($user as $u): ?>
        <tr><th colspan="2">Información de la cuenta</th></tr>
        <tr>
          <td>DNI</td><td><?php echo $u['DNI'];?></td>
        </tr>
        <tr>
          <td>Saldo</td><td><?php echo $u['saldo']; ?>€</td>
          <?php $this->session->set_userdata('fondos', $u['saldo']);?>
          <td>
            <?= form_open('Transacciones/paginaAgregar', array('class'=>'form-horizontal')); ?>
            <input type="hidden" name="sal" id="sal" value="<?php echo $u['saldo']; ?>"/>
            <button type="submit" name="but" class="btn waves-light waves-effect deep-orange lighten-4 black-text">Agregar fondos</button>
          </form>
          </td>
        </tr>
        <tr>
          <td>Dado de alta</td>
          <?php if($this->session->userdata('alta')==0){?>
            <td>NO</td>
            <?php }else{?>
              <td>SI</td>
              <?php }?>
            </tr>
            <?php endforeach; ?>
          </table>
          <?php if($this->session->userdata('alta')==1){?>
          <table id="suscripTabLe">
            <tr><th colspan="2">Suscripción</th></tr>
            <tr>
              <td>suscripcion</td><td></td>
            </tr>
            <tr>
              <td>Coste mensual</td><td>€</td>
            </tr>
            <tr>
              <td>Dar de baja</td>
              <td><button type="button" name="button">BAJA</button></td>
            </tr>
          </table>
          <?php }?>
        </div>

        <div class="disponibles">
          <h3>SUSCRIPCIONES DISPONIBLES</h3>

          <?php foreach ($suscrip as $item): ?>
            <div class="row cartas center-block centered">
              <div class="col s12 m6">
                <div class="card">
                  <div class="card-content black-text">
                    <span class="card-title"><b><?php echo $item['nombre']; ?></b></span>
                    <p><?php echo substr($item['descripcion'], 0, 256); ?></p>
                    <br>

                    <div class="extraInfo">
                      <p><b>Coste:</b> <?php echo $item['coste']; ?>€</p>
                      <p><b>Nº Suscritos:</b> <?php echo $item['n_suscritos']; ?></p>
                    </div>
                  </div>
                  <div class="card-action">
                    <?php if($this->session->userdata('fondos') > $item['coste']){?>
                    <button type="button" name="button" class="btn waves-light waves-effect deep-orange lighten-4 black-text">SUSCRIBIRSE</button>
                    <?php }else{?>
                      <p>
                        No dispones de suficiente fondos para enta suscripción.
                      </p>
                      <?php }?>
                  </div>
                </div>
              </div>
            </div>
          <?php endforeach; ?>
        </div>
      </div>

</main>
