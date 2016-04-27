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
    //cambiar por variable/input
    $msisdn = '666666666';
    //cambiar por variable/input
    $amount = 1;

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
