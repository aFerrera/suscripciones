<?php foreach($css_files as $file): ?>
  <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
  <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<main>
  <div class="center-block center-align">
    <h2 class="sectionHeader">ADMINISTRAR TABLAS</h2>
    <a href='<?php echo site_url('home/usuarios')?>'>USUARIOS</a> |
    <a href='<?php echo site_url('home/suscripciones')?>'>SUSCRIPCIONES</a> |
    <a href='<?php echo site_url('home/transacciones')?>'>TRANSACCIONES</a> |
    <a href='<?php echo site_url('home/registros')?>'>REGISTROS</a> |
    <a href='<?php echo site_url('home/wsrequest')?>'>WS REQUESTS</a> |
    <a href='<?php echo site_url('home/wsresponse')?>'>WS RESPONSES</a> |
  </div>
  <div style='height:20px;'></div>
  <div>
    <?php echo $output; ?>
  </div>
  <div class="more center-block center-align">
    <h4>COBROS Y MENSAJES</h4>
      <?php echo form_open('WebService/getToken'); ?>
      <input type="submit" name="submit" id="getToken" value="GetToken" class="waves-light btn deep-orange lighten-4 black-text"/>
    </form>
  </div>
</main>
