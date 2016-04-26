<main>
  <div class="contenido">
    <span>Agregar Fondos en la cuenta de. <b> <?=$this->session->userdata('usuario'); ?></b></span>

    <div class="formTarjeta formAgregar">
      <div class="creditCard">

      </div>
          <?php echo validation_errors(); ?>
      <form id="myFormCard" class="myFormCard" action="#" method="post">
        <label for="number">nº targeta de credito</label>
        <input type="text" name="number" value="">

        <label for="expiry">caducidad</label>
        <input type="text" name="expiry" value="">

        <label for="cvc">numero secreto / (3 digitos detras de la targeta))</label>
        <input type="text" name="cvc" value="">

        <label for="name">name</label>
        <input type="text" name="name" value="">
      </form>
    </div>
    <div class="formAgregar">
      <?= form_open('Transacciones/agregarFondos', array('class'=>'form-horizontal')); ?>
      <input type="hidden" name="dniUser" id="dniUser" value="<?=$this->session->userdata('DNI'); ?>"/>
      <input type="hidden" name="saldo" id="saldo" value="<?=$this->session->userdata('fondos'); ?>"/>

      <label for="cantidad">Cantidad en euros</label>
      <input type="number" name="cantidad" value="">

      <button  type="submit" name="insertFondos" class="btn waves-light waves-effect deep-orange lighten-4 black-text" value="agregar">AGREGAR</button>
    </form>
  </div>

</div>
</main>
