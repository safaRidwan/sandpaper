<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends CI_Controller {
	public function index(){
        $this->db->from('konfigurasi');
        $konfig = $this->db->get()->row();

        $this->db->from('kategori');
        $kategori = $this->db->get()->result_array();
        $this->db->join('kategori b','a.id_kategori=b.id_kategori','left');

        $data = array(
            'judul_halaman' => 'Home',
            'kategori' => $kategori,
            'konfig' => $konfig
        );
		$this->load->view('contact',$data);
	}
}