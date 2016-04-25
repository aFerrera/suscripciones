<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transacciones extends CI_Controller {

  function __construct(){
    parent::__construct();

    /*MENSAJES DE VALIDACIÓN*/

    //$this->form_validation->set_message('Email', 'La dirección de E-mail tiene que ser valida');

    $this->CI = & get_instance(); // Esto para acceder a la instancia que carga la librería
    $this->load->database();
    $this->load->helper('url');
    $this->load->model('Model_transacciones');
    $this->load->model('Model_suscripciones');
  }

  public function paginaAgregar(){
    $this->load->helper('form');

    $data['sal'] = $this->input->post('sal');
    $this->CI->session->set_userdata('fondos',  $data['sal']);

    $this->load->view('templates/header');
    $this->load->view('transacciones/agregar', $data);
    $this->load->view('templates/footer');
  }

  /*AGREGAR FONDOS A CUENTA PEROSNAL*/
  public function agregarFondos(){
    $this->load->helper('form');
    $this->load->library('form_validation');

    $this->form_validation->set_rules('cantidad', 'cantidad', 'required');

    $dni = $this->input->post('dniUser');
    $cantidad = $this->input->post('cantidad');
    $saldo = $this->input->post('saldo');

    if ($this->form_validation->run() === FALSE) {
      $this->load->view('templates/header');
      $this->load->view('transacciones/agregar');
      $this->load->view('templates/footer');
    } else {
      $query = $this->CI->Model_transacciones->agregarSaldo($dni, $saldo, $cantidad);

      $data['suscrip'] = $this->Model_suscripciones->get_suscripciones();
      $dni = $this->session->userdata('DNI');
      $data['user'] = $this->Model_Usuario->getUser($dni);
      $this->CI->session->set_userdata('fondos', $saldo);
      echo '<script language="javascript">alert("fondos agregados!")</script>';

      $this->load->view('templates/header');
      $this->load->view('home/principal', $data);
      $this->load->view('templates/footer');
    }

  }
}
