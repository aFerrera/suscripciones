<?php foreach($css_files as $file): ?>
  <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
  <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<main>
  <div class="center-block center-align">
    <h2 class="sectionHeader">ADMINISTRAR TABLAS</h2>
    <div class="nav-wrapper">
      <ul id="adminMenu" class="">
        <a href='<?php echo site_url('home/usuarios')?>' class="white-text">USUARIOS</a> ||
        <a href='<?php echo site_url('home/suscripciones')?>' class="white-text">SUSCRIPCIONES</a> ||
        <a href='<?php echo site_url('home/transacciones')?>' class="white-text">TRANSACCIONES</a> ||
        <a href='<?php echo site_url('home/registros')?>' class="white-text">REGISTROS</a> ||
        <a href='<?php echo site_url('home/wsrequest')?>' class="white-text">WS REQUESTS</a> ||
        <a href='<?php echo site_url('home/wsresponse')?>' class="white-text">WS RESPONSES</a>
      </ul>
    </div>


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
