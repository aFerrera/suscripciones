<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Model_suscripciones extends CI_Model {

    public function __construct() {
        $this->load->database();
        $this->load->helper('date');
    }

    /*FUNCION QUE DEVUELVE LAS SUSCRIPCIONES*/
    public function get_suscripciones() {

      $this->db->order_by("id_suscripcion", "desc");
      $query = $this->db->get('suscripcion');
      return $query->result_array();
    }

    public function registrarAlta($user, $suscrip){
      $data = array(
        'tipo' => 'alta suscripcion',
        'usuario' => $user,
        'suscripcion' => $suscrip,
        'fecha' => standard_date('DATE_W3C', now())
      );

      $data2 = array(
        'alta' => 1
      );

      $this->db->where('nombre', $user);
      $this->db->update('usuario', $data2);

      $data3 = array(
        'n_suscritos' => +1
      );

      $this->db->where('id_suscripcion', $suscrip);
      $this->db->update('suscripcion', $data3);

      return $this->db->insert('registros', $data);
    }

}
