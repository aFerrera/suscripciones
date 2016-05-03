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
    $this->load->model('Model_suscripciones');
  }

  /*REQUEST DE TOKEN*/
  public function getToken($data){
    $trans = $this->getId();

    $data['tipo'] = 'ObtencionToken';
    $data['transaction'] = $trans;
    $data['text'] = NULL;
    $data['token'] = NULL;
    $data['fecha']= standard_date('DATE_W3C', now());

    $req = '<?xml version="1.0" encoding="UTF-8"?>
    <request>
    <transaction>'.$trans.'</transaction>
    </request>';

    $url = "http://52.30.94.95/token";
    $output = $this->requestWS($url, $req);

    $xml=simplexml_load_string($output) or die("Error: Cannot create object");
    $data['statusCode'] = $xml->statusCode;
    $data['statusMessage'] = $xml->statusMessage;
    $data['txId'] = $xml->txId;
    $data['token'] = $xml->token;

    return $data;
  }

  /*obtenemos un código para 'transaction'*/
  public function getId(){
    $this->db->select_max('id');
    $query = $this->db->get('wsrequest');

    $aux= $query->result_array()[0]['id']+1; //lo obtenemos a partir del id, así siempre será único.
    $tran = base_convert( $aux, 10, 36 );
    return $tran;
  }

  /*REQUEST DE COBRO*/
  public function getBill ($data){
    $trans = $this->getId();

    $data['tipo'] = 'PeticionCobro';
    $data['transaction'] = $trans;

    $req = '<?xml version="1.0" encoding="UTF-8"?>
    <request>
    <transaction>'.$trans.'</transaction>
    <msisdn>'.$data['msisdn'].'</msisdn>
    <amount>'.$data['amount'].'</amount>
    <token>'.$data['token'].'</token>
    </request>';

    $url = "http://52.30.94.95/bill";

    $output = $this->requestWS($url, $req);

    $xml = simplexml_load_string($output) or die("Error: Cannot create object");

    $data['statusCode'] = $xml->statusCode;
    $data['statusMessage'] = $xml->statusMessage;
    $data['txId'] = $xml->txId;

    return $data;
  }

  /*TENER EN CUENTA QUE MENSAJE HAI Q ENVIAR!!!!!!*/
  public function getSms($data){
    $trans = $this->getId();

    $data['tipo'] = 'PeticionSms';
    $data['transaction'] = $trans;

    $req = '<?xml version="1.0" encoding="UTF-8"?>
    <request>
    <shortcode>'.$data['shortcode'].'</shortcode>
    <text>'.$data['text'].'</text>
    <msisdn>'.$data['msisdn'].'</msisdn>
    <transaction>'.$trans.'</transaction>
    </request>';

    $url = "http://52.30.94.95/send_sms";

    $output = $this->requestWS($url, $req);

    $xml = simplexml_load_string($output) or die("Error: Cannot create object");

    $data['statusCode'] = $xml->statusCode;
    $data['statusMessage'] = $xml->statusMessage;
    $data['txId'] = $xml->txId;

    return $data;
  }

  /*CONNEXION AL WEBSERVICE*/
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

  /*Devuelve todos los usuarios que estan de alta*/
  public function getAltas(){
    $this->db->where('alta', 1);
    $query = $this->db->get('usuario');

    return $query->result_array();
  }

  /*inser de request/response en la base de datos*/
  public function setRequest($data){
    unset($data['individual']);
    $this->db->insert('wsrequest', $data);
  }

  /*dar de baja al usuario*/
  public function bajaSuscrip($tel){
    $data = array(
      'alta' => 0
    );

    $this->db->where('tel', $tel);
    $this->db->update('usuario', $data);

    $this->db->where('tel', $tel);
    $query = $this->db->get('usuario');

    return $query->result_array();

  }

  /*Dar de alta al usuario*/
  public function altaSuscrip($tel){
    $data = array(
      'alta' => 1
    );
    $this->db->where('tel', $tel);
    $this->db->update('usuario', $data);

    $this->db->where('tel', $tel);
    $query = $this->db->get('usuario');

    return $query->result_array();
  }

  public function efectuarCobro($data){

    /*modificamos el saldo del usuario*/
    $tel = $data['msisdn'];
    $this->db->select('saldo');
    $this->db->where('tel', $tel);
    $aux = $this->db->get('usuario');

    foreach ($aux->result() as $row) {
      $v = $row->saldo;
    }
    $data2 = array(
      'saldo' => $v - $data['amount']
    );

    $this->db->where('tel', $tel);
    $this->db->update('usuario', $data2);

    $this->registrarTransaccion($tel, $data);
  }

  /*REGISTRAR LA TRANSACCIÓN EN LA BASE DE DATOS*/
  public function registrarTransaccion($tel, $data){
    $this->db->select('DNI');
    $this->db->where('tel', $tel);
    $aux = $this->db->get('usuario');
    foreach ($aux->result() as $row) {
      $dni = $row->DNI;
    };
    $data = array(
      'usuario' => $dni,
      'tipo' => 'pago',
      'cantidad' => $data['amount'],
      'fecha' => standard_date('DATE_W3C', now())
    );
    $this->db->insert('transaccion', $data);
  }

  /*REGISTRAR EL MENSAJE DE TEXTO EN LA BASE DE DATOS*/
  public function registrarSms($data){
    $tel = $data['msisdn'];
    $this->db->select('DNI');
    $this->db->where('tel', $tel);
    $aux = $this->db->get('usuario');
    foreach ($aux->result() as $row) {
      $dni = $row->DNI;
    }
    $data = array(
      'destino' => $dni,
      'texto' => $data['text'],
      'fecha' => standard_date('DATE_W3C', now())
    );
    $this->db->insert('sms', $data);
  }

}
