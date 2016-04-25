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

}
