<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class WebService extends CI_Controller {

  function __construct(){
    parent::__construct();

    $this->load->helper('url');
    $this->load->model('Model_webService');

  }
  public function getToken() {
    $this->load->helper('form');
    $responseToken = $this->Model_webService->getToken();

    echo '<p>'.$responseToken.'</p>';

    $xml=simplexml_load_string($responseToken) or die("Error: Cannot create object");
    $data['statusCode'] = $xml->statusCode;
    $data['statusMessage'] = $xml->statusMessage;
    $data['txId'] = $xml->txId;
    $data['token'] = $xml->token;
    $data['tipo'] = 'ObtencionToken';
    $data['fecha']= standard_date('DATE_W3C', now());

    $this->Model_webService->setResponse($data);

    if ($data['statusCode'] == 'TOKEN_SUCCESS') {

      echo 'ok';
      $responseBill = $this->Model_webService->peticionCobro($data['token']);
      echo '<p>'.$responseBill.'</p>';
      $xml=simplexml_load_string($responseBill) or die("Error: Cannot create object");
      $data['statusCode'] = $xml->statusCode;
      $data['statusMessage'] = $xml->statusMessage;
      $data['txId'] = $xml->txId;
      $data['token'] = NULL;
      $data['tipo'] = 'PeticionCobro';
      $data['fecha']= standard_date('DATE_W3C', now());

      $this->Model_webService->setResponse($data);

    } else {
      echo '<script language="javascript">alert("Algo falló al pedir el token, reintentando..");</script>';
      $this->getToken();
    }
    $this->load->view('templates/header');
    $this->load->view('templates/welcome');
    $this->load->view('templates/footer');
  }

}
