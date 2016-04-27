<main>
  <h2 class="sectionHeader">FORMULARIO DE REGISTO</h2>
  <div id="signIn" class="left-align center-block">

    <div class="validationErrors">
      <?php echo validation_errors(); ?>
    </div>


    <?php echo form_open('logins/registrarse'); ?>

    <label for="newUser">Nombre completo*</label>
    <input type="text" name="newUser" class="validate"/>

    <label for="newDni">DNI / NIE*</label>
    <input type="text" name="newDni" class="validate" maxlength="9"/>

    <label for="newLogin">Nombre de login*</label>
    <input type="text" name="newLogin" class="validate"/>

    <label for="newPass">password*</label>
    <input type="password" name="newPass" class="validate"/>

    <label for="confirmPass">Confirma Password*</label>
    <input type="password" name="confirmPass" class="validate"/>

    <label for="newTel">Teléfono*</label>
    <input type="text" name="newTel" class="validate" maxlength="9"/>

    <label for="newMail">E-mail*</label>
    <input type="text" name="newMail" class="validate"/>


    <input type="submit" name="submit" id="nuevoUsuario" value="Registrarse" class="waves-light btn deep-orange lighten-4 black-text"/>

  </form>
  </div>
</main>
