<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

 class Model_transacciones extends CI_Model {

   public function __construct() {
     $this->load->database();
     $this->load->helper('date');
   }

   public function agregarSaldo($dni, $saldo, $cantidad){
     $data2 = array(
       'saldo' => $saldo + $cantidad
     );

     $this->db->where('DNI', $dni);
     $this->db->update('usuario', $data2);

     $this->CI->session->set_userdata('fondos', $saldo);

     $data = array(
       'usuario' => $dni,
       'tipo' => 'agregar fondos',
       'cantidad' => $cantidad,
       'fecha' => standard_date('DATE_W3C', now())
     );
     return $this->db->insert('transaccion', $data);
   }

 }
