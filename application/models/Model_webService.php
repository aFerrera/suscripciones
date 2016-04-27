<?php

/*
* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/

class Model_webService extends CI_Model {

  public function __construct() {
    $this->load->database();
    $this->load->helper('date');
  }

  //peticion de token al WS
  public function getToken(){
    $id = $this->getId();

    $tran = base_convert( $id, 10, 36 );

    $data['id'] = $id;
    $data['tipo'] = 'ObtencionToken';
    $data['transaction'] = $tran;
    $data['msisdn'] = NULL;
    $data['shortcode'] = NULL;
    $data['text'] = NULL;
    $data['amount'] = NULL;
    $data['token'] = NULL;
    $data['fecha']= standard_date('DATE_W3C', now());

    $this->setRequest($data);

    $req = '<?xml version="1.0" encoding="UTF-8"?>
    <request>
    <transaction>'.$tran.'</transaction>
    </request>';

    $url = "http://52.30.94.95/token";

    return $output = $this->requestWS($url, $req);
  }

  public function getId(){
    $this->db->select_max('id');
    $query = $this->db->get('wsrequest');
    return $query->result_array()[0]['id']+1;
  }

  //peticion de cobro al WS
  public function peticionCobro ($token){
    $id = $this->getId();
    $tran = base_convert( $id, 10, 36 );
    //numero de telefono facilitado
    $msisdn = '666666666';
    //coste de la suscripción
    $amount = 13.99;

    $data['id'] = $id;
    $data['tipo'] = 'PeticionCobro';
    $data['transaction'] = $tran;
    $data['msisdn'] = $msisdn;
    $data['shortcode'] = NULL;
    $data['text'] = NULL;
    $data['amount'] = $amount;
    $data['token'] = $token;
    $data['fecha']= standard_date('DATE_W3C', now());

    $this->setRequest($data);

    $req = '<?xml version="1.0" encoding="UTF-8"?>
    <request>
    <transaction>'.$tran.'</transaction>
    <msisdn>'.$msisdn.'</msisdn>
    <amount>'.$amount.'</amount>
    <token>'.$token.'</token>
    </request>';

    $url = "http://52.30.94.95/bill";

    return $output = $this->requestWS($url, $req);
  }

  function mensajes($response){
    $id = $this->getId();
    $tran = base_convert( $id, 10, 36 );

    //numero de telefono facilitado
    $msisdn = '666666666';

    switch ($response) {
      case 'SUCCESS':
      $info = 'Todo correcto';


      $data['id'] = $id;
      $data['tipo'] = 'Envio de sms';
      $data['transaction'] = $tran;
      $data['msisdn'] = $msisdn;
      $data['shortcode'] = 666;
      $data['text'] = $info;
      $data['fecha']= standard_date('DATE_W3C', now());

      echo '<script language="javascript">alert("insertando request del mensaje");</script>';
      $this->setRequest($data);

      $xml = '<?xml version="1.0" encoding="UTF-8"?>
        <request>
          <shortcode>'.$data['shortcode'].'</shortcode>
          <text>'.$data['text'].'</text>
          <msisdn>'.$data['msisdn'].'</msisdn>
          <transaction>'.$data['transaction'].'</transaction>
        </request>';

      $url = 'http://52.30.94.95/send_sms';
      return $output = $this->requestWS($url, $xml);
      break;

      case 'BAD_REQUEST_TYPE':
      $data['info'] = 'Tipo de petición incorrecto';
      break;

      case 'NO_REQUEST':
      $data['info'] = 'No se encontró ninguna petición';
      break;

      case 'SYSTEM_ERROR':
      $data['info'] = 'Error del sistema';
      break;

      case 'INVALID_XML':
      $data['info'] = 'XML inválido';
      break;

      case 'MISSING_PROPERTY':
      $data['info'] = 'Falta algun campo de la petición';
      break;

      case 'MISSING_CREDENTIALS':
      $data['info'] = 'No se encontraron credenciales';
      break;

      case 'INVALID_CREDENTIALS':
      $data['info'] = 'Credenciales incorrectas';
      break;

      case 'TOKEN_SUCCESS':
      $data['info'] = 'Petición de token correcta';
      break;

      case 'TOKEN_ALREADY_USED':
      $data['info'] = 'Token ya esta en uso';
      break;

      case 'INVALID_TOKEN':
      $data['info'] = 'El token es incorrecto';
      break;

      case 'NO_FUNDS':
      $info = 'No hay fondos suficientes';

      $data['id'] = $id;
      $data['tipo'] = 'Envio de sms';
      $data['transaction'] = $tran;
      $data['msisdn'] = $msisdn;
      $data['shortcode'] = 666;
      $data['text'] = $info;
      $data['fecha']= standard_date('DATE_W3C', now());

      echo '<script language="javascript">alert("insertando request del mensaje");</script>';
      $this->setRequest($data);

      $xml = '<?xml version="1.0" encoding="UTF-8"?>
        <request>
          <shortcode>'.$data['shortcode'].'</shortcode>
          <text>'.$data['text'].'</text>
          <msisdn>'.$data['msisdn'].'</msisdn>
          <transaction>'.$data['transaction'].'</transaction>
        </request>';

      $url = 'http://52.30.94.95/send_sms';
      return $output = $this->requestWS($url, $xml);

      break;

      case 'CHARGING_ERROR':
      $data['info'] = 'Error de carga';
      break;

      case 'DUPLICATED_TR':
      $data['info'] = 'Petición duplicada';
      break;

      default:
      $data['info'] = 'Respuesta desconocida.';
      break;
    }
  }

  //conexion ws
  public function requestWS ($url, $xml) {

    $username = 'aferrera';
    $password = '7DqA78Na';

    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_USERPWD, $username . ":" . $password);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: text/xml'));
    curl_setopt($ch, CURLOPT_POSTFIELDS, "$xml");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($ch);
    curl_close($ch);

    return $output;

  }

  public function setResponse($data){
    $this->db->insert('wsresponse', $data);
  }

  public function setRequest($data){
    $this->db->insert('wsrequest', $data);
  }
}
