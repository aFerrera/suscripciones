<main>
  <div class="center-block">
    <p class="contenido">
      Usuario> <b><?=$this->session->userdata('usuario')?></b>- <?= date('d-m-Y H:i') ?>
    </p>
    <?php foreach ($sus as $suscripcion): ?>
      <div class="sectionHeader">
        <h3><?php echo $suscripcion['nombre']?></h3>
      </div>
      <p>
        <?php echo $suscripcion['descripcion']?>
      </p>
    <?php endforeach; ?>
  </div>
</main>
