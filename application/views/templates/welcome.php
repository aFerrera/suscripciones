<main>
  <div class="welcome center-align center-block">
          <img id="logo" alt="kitmaker_logo" src="<?= base_url('assets/img/kitmaker_logo.png')?>">
          <p>
            Bienvenido a la nueva web de suscripciones premium!.
          </p>
          <p>
            Suscribete y disfruta de una gran variedad de contenido descargable!
          </p>
          <p>
            Para empezar registrate en el sitio. ¿Ya tienes cuenta? pinxa en el siguiente enlace de login y accede a tu pájina personal.
          </p>
    <div class="buttons">
      <button id="loginBtn" type="button" name="button" class="btn waves-light waves-effect deep-orange lighten-4 black-text">INICIAR SESIÓN</button>
      <a href="<?=site_url('Logins/signIn')?>" class="btn waves-light waves-effect deep-orange lighten-4 black-text">REGISTRARSE</a>
    </div>
  <?= my_validation_errors(validation_errors()); ?>
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
        <?= form_button(array('type'=>'submit', 'content'=>'Ingresar', 'class'=>'btn btn-primary deep-orange lighten-4 black-text')); ?>

      </div>

      <?= form_close(); ?>
    </div>
  </div>
  <div class="masContenido center-block center-align">
    
  </div>
</main>
