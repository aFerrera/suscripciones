<main class="contenido">
  <script type="text/javascript">
    $(document).ready(function(){
      Materialize.toast('Session iniciada!', 3000, 'rounded')
    });
  </script>
  <div class="contenido center-block">
    <h2>BIENVENIDO <?=$this->session->userdata('usuario'); ?></h2>

    <div class="personalInfo card">
      <table class="highlight">
        <?php foreach ($user as $u): ?>
        <tr><th colspan="3">Información de la cuenta</th></tr>
        <tr>
          <td>DNI</td><td><?php echo $u['DNI'];?></td><td></td>
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
            <td>NO</td><td></td>
            <?php }else{?>
              <td>SI</td><td></td>
              <?php }?>
            </tr>
            <?php endforeach; ?>
          </table>
        </div>
        <div class="card personalInfo">
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
            <tr>
              <td>Dar de baja</td>
              <td>
              <?= form_open('Suscripciones/baja', array('class'=>'form-horizontal')); ?>
              <input type="hidden" name="sus" id="sus" value="<?php echo $i['id_suscripcion']; ?>"/>
              <input type="hidden" name="customer" id="customer" value="<?=$this->session->userdata('usuario'); ?>"/>
              <button type="submit" name="botonBaja" class="btn waves-light waves-effect deep-orange lighten-4 black-text">BAJA</button>
            </td>
            </tr>
          <?php endforeach; ?>
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
                      <p><b>Nº Suscritos:</b> <?php echo $item['n_suscritos']; ?>€</p>
                    </div>
                  </div>
                  <div class="card-action">
                    <?php if($this->session->userdata('fondos') > $item['coste']){?>
                      <?= form_open('Suscripciones/alta', array('class'=>'form-horizontal')); ?>
                      <input type="hidden" name="usuario" id="usuario" value="<?=$this->session->userdata('usuario'); ?>"/>
                      <input type="hidden" name="suscripcion" id="suscripcion" value="<?php echo $item['id_suscripcion']; ?>"/>
                      <button id="botonAlta" type="submit" name="but" class="btn waves-light waves-effect deep-orange lighten-4 black-text">SUSCRIBIRSE</button>
                    </form>
                    <?php }else{?>
                      <p>
                        No dispones de suficiente fondos para esta suscripción.
                      </p>
                      <?php }?>
                      <?php if($this->session->userdata('alta') == 1){?>
                        <?= form_open('Suscripciones/verSuscripcion', array('class'=>'form-horizontal')); ?>
                        <input type="hidden" name="codigoSus"  value="<?php echo $item['id_suscripcion']; ?>"/>
                        <button id="botonVer" type="submit" name="butVer" class="btn waves-light waves-effect deep-orange lighten-4 black-text">VER CONTENIDOS</button>
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
