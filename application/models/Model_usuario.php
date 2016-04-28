<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Model_usuario extends CI_Model {

  /*VALIDACION USUARIO*/
  function get_login($user, $pass) {
    $contra = MD5($pass);
    $this->db->where('login', $user);
    $this->db->where('password', $contra);
    return $this->db->get('usuario');
  }

  /*GET USER*/
  function getUser($d){
    $this->db->where('DNI', $d);
    $query = $this->db->get('usuario');

    return $query->result_array();
  }

  function getUserByName($name){
    $this->db->where('nombre', $name);
    return $this->db->get('usuario');
  }

  /*REGISTRO USUARIO*/
  function insertUser($nombre, $dni, $login, $pass, $tel, $mail) {
    $data = array(
      'nombre' => $nombre,
      'dni' => $dni,
      'login' => $login,
      'password' => MD5($pass),
      'email' => $mail,
      'tel' => $tel,
      'saldo' => 0,
      'alta' => 0,
      'admin'=> 0
    );
    return $this->db->insert('usuario', $data);
  }

}
