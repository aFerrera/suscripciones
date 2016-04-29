<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <!-- Site's designed for mobile -->
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

  <title>plataformaS</title>
  <!--jQuery -->
  <script src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  <script src="http://code.jquery.com/jquery-latest.js"></script>

  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <!-- CSS -->
  <link rel="stylesheet" type="text/css" href="<?= base_url('assets/css/style.css')?>">

  <!-- JS-->
  <script src="<?= base_url('assets/js/main.js')?>"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js"></script>

  <style media="screen">
  .card-content{
    height: 200px;
    background-image: url('<?=base_url('assets/img/games.png')?>');
  }

  .welcome{
    background-image: url('<?=base_url('assets/img/games.png')?>');
  }

  .personalInfo{
    background-image: url('<?=base_url('assets/img/mountains.jpg')?>');
  }

  footer{
    background-image: url('<?=base_url('')?>');
  }

  .sectionHeader{
    background-image: url('<?=base_url('assets/img/games.png')?>');
  }

  th{
      background-image: url('<?=base_url('assets/img/games.png')?>');
      
  }
  </style>
</head>
<body>
  <header>
    <nav class="navbar-material">
      <div class="nav-wrapper">

        <a href="#" class="brand-logo">SUSCRIPCIONES</a>

        <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
        <ul id="topMenu" class="right hide-on-med-and-down">
          <li><a href="<?=site_url('home/index')?>">HOME</a></li>

          <?php if($this->session->userdata('admin') == 1){?>
            <li><a href="<?=site_url('home/administrar')?>">Administrador</a></li>

            <?php } ?>
            <?php if($this->session->userdata('usuario')){?>
              <li><a href="<?=site_url('logins/logout')?>">Logout</a>
                <li><a href="<?=site_url('logins/principal')?>">Mi Cuenta</a></li>
                <?php }else{ ?>
          <li><a href="<?=site_url('logins/registrarse')?>">Registrarse</a></li>
                  <?php }?>
              </li>
            </ul>
            <ul class="side-nav " id="mobile-demo">
              <li><a href="<?=site_url('home/index')?>">HOME</a></li>

              <?php if($this->session->userdata('admin') == 1){?>
                <li><a href="<?=site_url('home/administrar')?>">Administrador</a></li>

                <?php } ?>
                <?php if($this->session->userdata('usuario')){?>
                  <li><a href="<?=site_url('logins/logout')?>">Logout</a>
                    <li><a href="<?=site_url('logins/principal')?>">Mi Cuenta</a></li>
                    <?php }else{ ?>
              <li><a href="<?=site_url('logins/registrarse')?>">Registrarse</a></li>
                      <?php }?>
            </ul>
          </div>
        </nav>
      </header>
