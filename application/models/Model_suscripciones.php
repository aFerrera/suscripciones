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

    /*GUARDAR REGISTRO DE ALTAS*/
    public function registrarAlta($user, $suscrip){
      /*Información del registro*/
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

      /*modificamos numero de suscritos*/
      $this->db->select('n_suscritos');
      $this->db->where('id_suscripcion', $suscrip);
      $aux = $this->db->get('suscripcion');

      foreach ($aux->result() as $row) {
        $v = $row->n_suscritos;
      }
      $data3 = array(
        'n_suscritos' => $v + 1
      );

      $this->db->where('id_suscripcion', $suscrip);
      $this->db->update('suscripcion', $data3);

      return $this->db->insert('registros', $data);
    }

    /*GUARDAR REGISTRO DE BAJAS*/
    public function registrarBaja($user, $suscripcion){
      /*Dar de baja al usuario*/
      $data2 = array(
        'alta' => 0
      );

      $this->db->where('nombre', $user);
      $this->db->update('usuario', $data2);

      /*reducimos el valor de numero de suscritos*/
      $this->db->select('n_suscritos');
      $this->db->where('id_suscripcion', $suscripcion);
      $aux = $this->db->get('suscripcion');

      foreach ($aux->result() as $row) {
        $v = $row->n_suscritos;
      }
      $data3 = array(
        'n_suscritos' => $v - 1
      );

      $this->db->where('id_suscripcion', $suscripcion);
      $this->db->update('suscripcion', $data3);

      /*Información del registro*/
      $data = array(
        'tipo' => 'baja suscripcion',
        'usuario' => $user,
        'suscripcion' => $suscripcion,
        'fecha' => standard_date('DATE_W3C', now())
      );

      return $this->db->insert('registros', $data);
    }

    public function verContenido($codigo){
      $this->db->where('id_suscripcion', $codigo);
      $query = $this->db->get('suscripcion');
      return $query->result_array();
    }

}
