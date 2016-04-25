<main>
  <div class="contenido">
    <span>Agregar Fondos en la cuenta de. <b> <?=$this->session->userdata('usuario'); ?></b></span>

    <div class="formAgregar">
      <?= form_open('Transacciones/agregarFondos', array('class'=>'form-horizontal')); ?>
      <input type="hidden" name="dniUser" id="dniUser" value="<?=$this->session->userdata('DNI'); ?>"/>
      <input type="hidden" name="saldo" id="saldo" value="<?=$this->session->userdata('fondos'); ?>"/>
      <!--
      <label for="targeta">nº targeta de credito</label>
      <input type="text" name="targeta" value="">

      <label for="caducidad">caducidad</label>
      <input type="date" name="caducidad" value="">

      <label for="numero">numero secreto / (3 digitos detras de la targeta))</label>
      <input type="number" name="numero" value="">
-->
<p>
  saldo actual. <?php echo $sal?>
</p>
      <label for="cantidad">Cantidad en euros</label>
      <input type="number" name="cantidad" value="">

      <button  type="submit" name="insertFondos" class="btn waves-light waves-effect deep-orange lighten-4 black-text" value="agregar">AGREGAR</button>
    </form>
  </div>

</div>
</main>
