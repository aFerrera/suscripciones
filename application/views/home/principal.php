<main class="contenido">
  <script type="text/javascript">
    $(document).ready(function(){
      Materialize.toast('Session iniciada!', 3000, 'rounded')
    });
  </script>
  <div class="contenido center-block">
    <h4>Bienvenido/a <?=$this->session->userdata('usuario'); ?></h4>

    <div class="personalInfo">
      <table class="highlight">
        <?php foreach ($user as $u): ?>
          <tr><th colspan="2">Información de la cuenta</th></tr>
          <tr>
            <td>DNI</td><td><?php echo $u['DNI'];?></td>
          </tr>
          <tr>
            <td>Saldo</td><td>?</td>


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
          </div>
          <div class="personalInfo suscripInfo">
            <?php if($this->session->userdata('alta')==1){?>
              <table id="suscripTabLe" class="highlight">
                <?php foreach ($suscrip as $i): ?>
                  <tr><th colspan="2">Suscripción</th></tr>
                  <tr>
                    <td>suscripcion</td><td><?php echo $i['nombre']?></td>
                  </tr>
                  <tr>
                    <td>Coste mensual</td><td><?php echo $i['coste']?>€</td>
                  </tr>

                <?php endforeach; ?>
              </table>
              <?php }?>
            </div>

            <div class="disponibles center-block center-align">
              <br>
              <h5>SUSCRIPCIONES DISPONIBLES</h5>

              <?php foreach ($suscrip as $item): ?>
                <div class="cartas center-block center-align">
                  <div class="col s12 m6">
                    <div class="card">
                      <div class="card-content black-text">
                        <span class="card-title"><b><?php echo $item['nombre']; ?></b></span>
                        <p><b><?php echo substr($item['descripcion'], 0, 256); ?></b></p>
                        <br>
                      </div>
                      <div class="card-action">
                        <div class="extraInfo">
                          <p><b>Coste mensual:</b> <?php echo $item['coste']; ?>€</p>
                          <p><b>Nº Suscritos:</b> <?php echo $item['n_suscritos']; ?></p>
                        </div>
                        <?= form_open('WebService/individualToken', array('class'=>'form-horizontal')); ?>
                        <input type="hidden" name="usuario" id="usuario" value="<?=$this->session->userdata('usuario'); ?>"/>
                        <input type="hidden" name="suscripcion" id="suscripcion" value="<?php echo $item['id_suscripcion']; ?>"/>
                        <button id="botonAlta" type="submit" name="but" class="btn waves-light waves-effect green accent-2 black-text">SUSCRIBIRSE</button>
                      </form>
                      <?php if($this->session->userdata('alta') == 1){?>
                        <?= form_open('Suscripciones/verSuscripcion', array('class'=>'form-horizontal')); ?>
                        <input type="hidden" name="codigoSus"  value="<?php echo $item['id_suscripcion']; ?>"/>
                        <button id="botonVer" type="submit" name="butVer" class="btn waves-light waves-effect green accent-2 black-text">VER CONTENIDOS</button>
                      </form>
                      <script type="text/javascript">
                      $(document).ready(function(){
                        $("#botonAlta").hide();
                      });
                      </script>
                      <?php }?>
                    </div>
                  </div>
                </div>
              </div>
            <?php endforeach; ?>
          </div>
        </div>

</main>
