<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends CI_Controller {
	public function index(){
		$this->load->model('memberModel');
		$this->load->model('playlistModel');
		if ($this->session->userdata('username')){
			$data['tracks'] = $this->playlistModel->getYourPlaylist();
		}
	
		$data['title'] = "Music Book";
		$data['maincontent'] = "welcome_message";
		$this->load->view('template',$data);
	}
}