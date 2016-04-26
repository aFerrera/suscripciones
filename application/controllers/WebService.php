<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class WebService extends CI_Controller {

  function __construct(){
    parent::__construct();


  }

  public function pedirToken(){
    $xml_data ='<?xml version="1.0" encoding="UTF-8"?>'.
    '<request>'.
    '<transaction>78220272</transaction>'.
    '</request>';

    $URL = "http://52.30.94.95/token";

    $ch = curl_init($URL);
    curl_setopt($ch, CURLOPT_USERPWD, 'aferrera' . ":" . '7DqA78Na');
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: text/xml'));
    curl_setopt($ch, CURLOPT_POSTFIELDS, "$xml_data");
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($ch);
    curl_close($ch);
  }
}
