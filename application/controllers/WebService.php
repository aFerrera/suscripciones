<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class WebService extends CI_Controller {

  function __construct(){
    parent::__construct();

    $this->load->helper('url');
    $this->load->model('Model_webService');
    $this->load->model('Model_usuario');


  }

  public function individualToken(){
    $this->load->helper('form');
    $user = $this->input->post('usuario');
    $sus = $this->input->post('suscripcion');

    $aux = $this->Model_usuario->getUserByName($user);

    $usuario = $aux->row();

    $tel = $usuario->tel;

    $data['msisdn'] = $tel;
    $data['amount'] = 13.99;
    $sCode = substr(''.$data['msisdn'].'', 0, 3);
    $data['shortcode'] = $sCode;

    /*pide token*/
    $responseToken = $this->Model_webService->getToken($data);

    /*insert token*/
    $this->Model_webService->setRequest($responseToken);

    /*mirar switch*/
    $this->miraSwitch2($responseToken);
  }



  /*WS TOKEN REQUEST para cobro general de suscripciones*/
  public function getToken() {

    $auxiliar = $this->Model_webService->getAltas();

    if(sizeof($auxiliar) > 0){

      foreach ($auxiliar as $i):
        $data['msisdn'] = $i['tel'];
        $data['amount'] = 13.99;
        $sCode = substr(''.$data['msisdn'].'', 0, 3);
        $data['shortcode'] = $sCode;

        /*pide token*/
        $responseToken = $this->Model_webService->getToken($data);

        /*insert token*/
        $this->Model_webService->setRequest($responseToken);

        /*comprobar response*/
        $this->miraSwitch($responseToken);
      endforeach;
    }else{
      echo '<script language="javascript">alert("EN ESTE MOMENTO NO HAY USUARIOS DADOS DE ALTA");</script>';
      $this->load->view('templates/header');
      $this->load->view('templates/welcome');
      $this->load->view('templates/footer');
    }
  }

  /*WS BILL REQUEST*/
  public function getBill($responseToken){
    /*petición de pago*/
    $responseBill = $this->Model_webService->getBill($responseToken);

    /*insert de pago*/
    $this->Model_webService->setRequest($responseBill);

    if($responseToken['individual']==1){
      /*comprobar response*/
      $this->miraSwitch2($responseBill);
    }else{
      /*comprobar response*/
      $this->miraSwitch($responseBill);
    }

  }

  public function getSms($responseBill){
    /*petición de envio de sms*/
    $responseSms = $this->Model_webService->getSms($responseBill);

    /*Insert de mensaje*/
    $this->Model_webService->setRequest($responseSms);

    if($responseBill['individual']==1){
      /*comprobar response*/
      $this->miraSwitch2($responseSms);
    }else{
      /*comprobar response*/
      $this->miraSwitch($responseSms);
    }
  }




  public function darDeBaja($data){
    $tel = $data['msisdn'];

    $result = $this->Model_webService->bajaSuscrip($tel);

    $usr = $result[0]['nombre'];
    $sus = 2;

    $this->Model_suscripciones->registrarBaja($usr, $sus);
  }

  public function darDeAlta($data){
    $tel = $data['msisdn'];

    $result = $this->Model_webService->altaSuscrip($tel);

    $usr = $result[0]['nombre'];
    $sus = 2;

    $this->Model_suscripciones->registrarAlta($usr, $sus);
  }

  public function miraSwitch2($data){
    $code = $data['statusCode'];
    switch ($code) {
      case 'TOKEN_SUCCESS':
      $data['individual'] = 1;
      $this->getBill($data);
      break;

      case 'SUCCESS':
      if($data['tipo']=='PeticionCobro'){
        echo '<script language="javascript">alert("COBRO REALIZADO!");</script>';
        $data['text'] = 'Cobro realizado correctamente, se le ha cobrado la cantidad de '.$data['amount'].', le damos de alta! ';
        $this->Model_webService->efectuarCobro($data);
        $this->darDeAlta($data);
        $this->session->set_userdata('alta', 1);
        $data['individual'] = 1;
        $this->getSms($data);
      }
      if($data['tipo']=='PeticionSms'){
        echo '<script language="javascript">alert("Cobro realizado correctamente, se le ha cobrado la cantidad de '.$data['amount'].', le damos de alta!");</script>';
        $this->Model_webService->registrarSms($data);

        $this->load->view('templates/header');
        $this->load->view('templates/welcome');
        $this->load->view('templates/footer');
      }
      break;

      case 'NO_FUNDS':
      echo '<script language="javascript">alert("'.$code.', no hay fondos!");</script>';
      $data['text'] = 'No dispone de fondos suficientes para la suscripción, lo sentimos, no se le dió de alta';
      $this->getSms($data);
      break;

      default:
      echo '<script language="javascript">alert("'.$code.'Algo falló, reintentando..");</script>';
      $this->individualToken();
      break;
    }
  }

  /*COMPROBACIÓN RESPONSES*/
  public function miraSwitch($data){
    $code = $data['statusCode'];

    switch ($code) {
      case 'TOKEN_SUCCESS':

      $data['individual'] = 0;
      $this->getBill($data);
      break;

      case 'SUCCESS':
      if($data['tipo']=='PeticionCobro'){
        $data['text'] = 'Cobro realizado correctamente, se le ha cobrado la cantidad de '.$data['amount'].' ';
        $this->Model_webService->efectuarCobro($data);
        $data['individual'] = 0;
        $this->getSms($data);
      }
      if($data['tipo']=='PeticionSms'){
        $this->Model_webService->registrarSms($data);
        echo '<script language="javascript">alert("COBROS O BAJAS REALIZADAS, MENSAJES ENVIADOS");</script>';
        $this->load->view('templates/header');
        $this->load->view('templates/welcome');
        $this->load->view('templates/footer');
      }
      break;

      case 'BAD_REQUEST_TYPE':
      $this->getToken();
      break;

      case 'CHARGING_ERROR':
      $this->getToken();
      break;

      case 'NO_REQUEST':
      $this->getToken();
      break;

      case 'SYSTEM_ERROR':
      $this->getToken();
      break;

      case 'INVALID_XML':
      $this->getToken();
      break;

      case 'MISSING_PROPERTY':
      $this->getToken();
      break;

      case 'MISSING_CREDENTIALS':
      $this->getToken();
      break;

      case 'INVALID_CREDENTIALS':
      $this->getToken();
      break;

      case 'TOKEN_ALREADY_USED':
      $this->getToken();
      break;

      case 'INVALID_TOKEN':
      $this->getToken();
      break;

      case 'NO_FUNDS':
      $data['text'] = 'No dispone de fondos suficientes para continuar con la suscripción, procedemos a darle de baja';
      $this->darDeBaja($data);
      $data['individual'] = 0;
      $this->getSms($data);
      break;

      default:
      $this->getToken();
      break;
    }
  }

}
