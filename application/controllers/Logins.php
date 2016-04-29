<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logins extends CI_Controller {

  function __construct(){
    parent::__construct();

    /*MENSAJES DE VALIDACIÓN*/
    $this->form_validation->set_message('required', 'Debe ingresar un valor para %s');
    $this->form_validation->set_message('loginok', 'Usuario o clave incorrectos');
    $this->form_validation->set_message('matches', '%s no coincide con %s');
    $this->form_validation->set_message('valid_email', 'La dirección de e-mail debe ser válida');
    //$this->form_validation->set_message('Email', 'La dirección de E-mail tiene que ser valida');

    $this->CI = & get_instance(); // Esto para acceder a la instancia que carga la librería
    $this->load->database();
    $this->load->helper('url');
    $this->CI->load->model('Model_Usuario');
    $this->CI->load->model('Model_suscripciones');
    $this->load->library('UsuarioLib');
    $this->load->library('grocery_CRUD');
  }

  /*REGISTRO*/
  public function signIn(){
    $this->load->view('templates/header');
    $this->load->view('home/signIn');
    $this->load->view('templates/footer');
  }

  /*PRINCIPAL*/
  public function principal(){
    $data['suscrip'] = $this->Model_suscripciones->get_suscripciones();

    $dni = $this->session->userdata('DNI');
    $data['user'] = $this->Model_Usuario->getUser($dni);
    $this->load->view('templates/header');
    $this->load->view('home/principal', $data);
    $this->load->view('templates/footer');
  }

  /*FUNCIONES DE LOGIN CUSTOMERS*/
  /*FUNCIONES DE LOGIN*/
  public function ingresar() {
    $this->form_validation->set_rules('login', 'Usuario', 'required|callback_loginok');
    $this->form_validation->set_rules('password', 'Clave', 'required');
    if($this->form_validation->run() == FALSE) {
      $this->ingreso();
    }
    else {
      $data['suscrip'] = $this->Model_suscripciones->get_suscripciones();
      $dni = $this->session->userdata('DNI');
      $data['user'] = $this->Model_Usuario->getUser($dni);
      $this->load->view('templates/header');
      $this->load->view('home/principal', $data);
      $this->load->view('templates/footer');
    }
  }


  public function ingreso() {

    $this->load->view('templates/header');
    $this->load->view('templates/welcome');
    $this->load->view('templates/footer');

  }

  public function loginok() {
    $nombre = $this->input->post('login');
    $password = $this->input->post('password');
    return $this->login($nombre, $password);
  }

  public function login($user, $password){
    $query = $this->CI->Model_Usuario->get_login($user, $password);

    if($query->num_rows() > 0){
      $usuario = $query->row();
      $this->CI->session->set_userdata('usuario', $usuario->nombre);
      $this->CI->session->set_userdata('DNI', $usuario->DNI);
      $this->CI->session->set_userdata('fondos', $usuario->saldo);
      $this->CI->session->set_userdata('alta', $usuario->alta);
      $this->CI->session->set_userdata('admin', $usuario->admin);
      return TRUE;
    }else{
      $this->CI->session->sess_destroy();
      return FALSE;
    }
  }

  /*FUNCIÓN DE LOGOUT*/
  public function logout(){
    $this->session->sess_destroy();
    $this->load->view('templates/header');
    $this->load->view('templates/welcome');
    $this->load->view('templates/footer');
  }



  /*FUNCIÓN DE REGISTRO*/
	public function registrarse(){
    $this->load->helper('form');
    $this->load->library('form_validation');

    $this->form_validation->set_rules('newUser', 'User', 'required');
    $this->form_validation->set_rules('newDni', 'Dni', 'required');
    $this->form_validation->set_rules('newLogin', 'LoginName', 'required');
    $this->form_validation->set_rules('newPass', 'Password', 'required|matches[confirmPass]');
    $this->form_validation->set_rules('confirmPass', 'Password Confirmation', 'required');
    $this->form_validation->set_rules('newTel', 'Telefono', 'required');
    $this->form_validation->set_rules('newMail', 'Email', 'required|valid_email');

    $nuevoUser = $this->input->post('newUser');
    $nuevoDni = $this->input->post('newDni');
		$nuevoLogin = $this->input->post('newLogin');
    $nuevaPass = $this->input->post('newPass');
    $nuevoTel = $this->input->post('newTel');
    $nuevoMail = $this->input->post('newMail');

    if ($this->form_validation->run() === FALSE) {
      $this->load->view('templates/header');
      $this->load->view('home/signIn');
      $this->load->view('templates/footer');
    } else {
      $this->Model_Usuario->insertUser($nuevoUser, $nuevoDni, $nuevoLogin ,$nuevaPass, $nuevoTel, $nuevoMail);
       echo '<script language="javascript">alert("Registro completo!, ahora inicia session ");</script>';
      $this->load->view('templates/header');
      $this->load->view('templates/welcome');
      $this->load->view('templates/footer');
    }
  }

}
