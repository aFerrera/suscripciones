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

    echo '<p>respuesta token-> '.$responseToken.'</p>';

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
      echo '<p>respuesta bill -> '.$responseBill.'</p>';
      $xml=simplexml_load_string($responseBill) or die("Error: Cannot create object");
      $data['statusCode'] = $xml->statusCode;
      $data['statusMessage'] = $xml->statusMessage;
      $data['txId'] = $xml->txId;
      $data['token'] = NULL;
      $data['tipo'] = 'PeticionCobro';
      $data['fecha']= standard_date('DATE_W3C', now());

      $this->Model_webService->setResponse($data);

      $responseSms = $this->Model_webService->mensajes($xml->statusCode);
      echo '<p>respuesta sms -> '.$responseSms.'</p>';
      $xml2=simplexml_load_string($responseSms) or die("Error: Cannot create object");
      $data2['statusCode'] = $xml2->statusCode;
      $data2['statusMessage'] = $xml2->statusMessage;
      $data2['txId'] = $xml2->txId;
      $data2['token'] = NULL;
      $data2['tipo'] = 'Envio de sms';
      $data2['fecha']= standard_date('DATE_W3C', now());

      echo '<script language="javascript">alert("Nos disponemos a insertar la respuesta");</script>';
      $this->Model_webService->setResponse($data2);


    } else {
      echo '<script language="javascript">alert("Algo falló al pedir el token, reintentando..");</script>';
      $this->getToken();
    }
    $this->load->view('templates/header');
    $this->load->view('templates/welcome');
    $this->load->view('templates/footer');
  }

}
