<main>
  <div class="center-block">
    <p class="contenido">
      Usuario> <b><?=$this->session->userdata('usuario')?></b>- <?= date('d-m-Y H:i') ?>
    </p>
    <?php foreach ($sus as $suscripcion): ?>
      <div class="susHeader">
        <h3><?php echo $suscripcion['nombre']?></h3>
        <p>
          <?php echo $suscripcion['descripcion']?>
        </p>
      </div>
    <?php endforeach; ?>
  </div>
</main>
