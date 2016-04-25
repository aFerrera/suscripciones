<?php foreach($css_files as $file): ?>
  <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
  <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<main>
  <div class="center-block center-align">
    <h2>ADMINISTRAR TABLAS</h2>
    <a href='<?php echo site_url('home/usuarios')?>'>USUARIOS</a> |
    <a href='<?php echo site_url('home/suscripciones')?>'>SUSCRIPCIONES</a> |
  </div>
  <div style='height:20px;'></div>
  <div>
    <?php echo $output; ?>
  </div>
</main>
