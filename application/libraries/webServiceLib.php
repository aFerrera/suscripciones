<?php if (!defined('BASEPATH')) exit('No permitir el acceso directo al script');

// Validaciones para el modelo de usuarios (login, cambio clave, CRUD Usuario)
class webServiceLib{

  function __construct() {
    $this->CI = & get_instance(); // Esto para acceder a la instancia que carga la librería
    $this->CI->load->model('Model_webService');
    $this->CI->load->model('Model_usuario');
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

}
