<main>
  <div id="signIn" class="left-align center-block">
    <h2>FORMULARIO DE REGISTO</h2>

    <?php echo validation_errors(); ?>

    <?php echo form_open('logins/registrarse'); ?>

    <label for="newUser">Nombre completo*</label>
    <input type="text" name="newUser" class="validate"/>

    <label for="newDni">DNI / NIE*</label>
    <input type="text" name="newDni" class="validate"/>


    <label for="newLogin">Nombre de login*</label>
    <input type="text" name="newLogin" class="validate"/>

    <label for="newPass">password*</label>
    <input type="password" name="newPass" class="validate"/>


    <label for="newTel">Teléfono*</label>
    <input type="text" name="newTel" class="validate"/>

    <label for="newMail">E-mail*</label>
    <input type="text" name="newMail" class="validate"/>


    <input type="submit" name="submit" id="nuevoUsuario" value="Gegistrarse" class="waves-light btn orange lighten-4 black-text"/>

  </form>
  </div>
</main>
