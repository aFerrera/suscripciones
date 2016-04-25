<footer class="page-footer orange lighten-5">
  <div class="container">
    <div class="row">
      <div class="col l6 s12">
        <p><b><?=$this->session->userdata('usuario')?></b> - <?= date('d-m-Y H:i') ?> </p>
        <p class="black-text text-lighten-4">Prueba Blog</p>
        <p>Powered by:  <a href="http://www.codeigniter.com/">CodeIgniter</a>, <a href="http://materializecss.com/">MaterializeCss</a>, <a href="https://design.google.com/icons/">material_Icons</a></p>
      </div>
      <div class="col l4 offset-l2 s12">
        <h5 class="black-text">Links</h5>
        <ul>
          <li><a href="<?=base_url()?>">HOME</a></li>

          </ul>
        </div>
      </div>
    </div>
  <div class="footer-copyright">
    <div class="container black-text">
      © 2016 KitMaker
    </div>
  </div>
</footer>
</body>

</html>
