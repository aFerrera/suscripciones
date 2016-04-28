<main id="welcomeMain">
  <div class="welcome center-align center-block">
    <div class="subWelcome">
      <img id="logo" alt="kitmaker_logo" src="<?= base_url('assets/img/kitmaker_logo.png')?>">
      <div class="pes white-text">


        <?php if($this->session->userdata('usuario')){?>
          <a href="<?=site_url('logins/principal')?>" class="btn waves-light waves-effect green accent-2 black-text">Mi cuenta</a>
          <script type="text/javascript">
          $(document).ready(function(){
            $("#login").hide();
          });
          </script>
          <?php }else{?>

            <a href="<?=site_url('Logins/signIn')?>" class="btn waves-light waves-effect  green accent-2 black-text">REGISTRARSE</a>
            <?php }?>
          </div>

        </div>

        <div class="validationErrors">
          <?php echo validation_errors(); ?>

        </div>

        <div id="login" class="center-block">
          <?= form_open('Logins/ingresar', array('class'=>'form-horizontal')); ?>

          <div class="control-group">
        <label for="login">Login name</label>
        <input type="text" name="login" value="">
      </div>

      <div class="control-group">
        <label for="password">password</label>
        <input type="password" name="password" value="">
      </div>

      <div class="form-actions">
        <?= form_button(array('type'=>'submit', 'content'=>'INICIAR SESIÓN', 'class'=>'btn btn-primary  green accent-2 black-text')); ?>

      </div>

      <?= form_close(); ?>
    </div>
  </div>
  <div class="masContenido center-block center-align">

  </div>
</main>
