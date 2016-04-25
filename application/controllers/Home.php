<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

  function __construct(){
    parent::__construct();

    /*MENSAJES DE VALIDACIÓN*/
    $this->form_validation->set_message('required', 'Debe ingresar un valor para %s');
    $this->form_validation->set_message('loginok', 'Usuario o clave incorrectos');
    $this->form_validation->set_message('matches', '%s no coincide con %s');
    $this->form_validation->set_message('cambiook', 'No se puede realizar el cambio de clave');

    $this->CI = & get_instance(); // Esto para acceder a la instancia que carga la librería

    $this->load->database();
    $this->load->helper('url');

    $this->load->library('grocery_CRUD');
  }

  public function index()
  {

    $this->load->view('templates/header');
    $this->load->view('templates/welcome');
    $this->load->view('templates/footer');
  }

  function usuarios()
  {
    $crud = new grocery_CRUD();

    $crud->set_table('usuario')
    ->set_subject('usuario')
    ->columns('id_usuario','nombre','DNI','login','password','tel', 'email', 'saldo', 'alta');

    $crud->fields('nombre','DNI','login','password', 'email', 'tel');
    $crud->required_fields('nombre','DNI', 'login', 'password');

  $crud->callback_before_insert(array($this,'encrypt_password'));

    $output = $crud->render();

    $this->_example_output($output);
  }

  function encrypt_password($post_array, $primary_key = null)
    {

	    $this->load->helper('security');
	    $post_array['password'] = do_hash($post_array['password'], 'md5');
	    return $post_array;

    }

  function suscripciones()
  {
    $crud = new grocery_CRUD();

    $crud->set_table('suscripcion')
    ->set_subject('suscripcion')
    ->columns('id_suscripcion','nombre','descripcion','coste','n_suscritos');

    $crud->fields('nombre','descripcion','coste','n_suscritos');
    $crud->required_fields('nombre','descripcion','coste','n_suscritos');

    $output = $crud->render();

    $this->_example_output($output);
  }

  public function _example_output($output = null)
  {
    $this->load->view('templates/header');
    $this->load->view('templates/adminHeader',$output);
    $this->load->view('templates/footer');
  }

  public function administrar()
  {

    $this->_example_output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array()));
  }




}
