<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Suscripciones extends CI_Controller {

  function __construct(){
    parent::__construct();

    /*MENSAJES DE VALIDACIÓN*/

    $this->CI = & get_instance(); // Esto para acceder a la instancia que carga la librería
    $this->load->database();
    $this->load->helper('url');
    $this->CI->load->model('Model_Usuario');
    $this->CI->load->model('Model_suscripciones');
    $this->load->library('UsuarioLib');
    $this->load->library('grocery_CRUD');
  }

  public function alta(){
    $this->load->helper('form');
    $usr = $this->input->post('usuario');
    $susc = $this->input->post('suscripcion');

    $query = $this->CI->Model_suscripciones->registrarAlta($usr, $susc);
    $this->session->set_userdata('alta', 1);

    $this->load->view('templates/header');
    $this->load->view('transacciones/altaCorrecta');
    $this->load->view('templates/footer');
  }

  public function baja(){
    $this->load->helper('form');
    $usr = $this->input->post('customer');
    $susc = $this->input->post('sus');

    $query = $this->CI->Model_suscripciones->registrarBaja($usr, $susc);
    $this->session->set_userdata('alta', 0);

    $this->load->view('templates/header');
    $this->load->view('transacciones/bajaCorrecta');
    $this->load->view('templates/footer');
  }
}
