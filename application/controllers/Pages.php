<?php
class Pages extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('playlistModel');
	}
	
	public function about(){
		$data['title'] = "About";
		$data['maincontent'] = "about";
		if ($this->session->userdata('username')){
			$data['tracks'] = $this->playlistModel->getYourPlaylist();
		}
		$this->load->view('template',$data);
	}
	
	public function contact(){
		$data['title'] = "Contact Us";
		$data['maincontent'] = "contact";
		if ($this->session->userdata('username')){
			$data['tracks'] = $this->playlistModel->getYourPlaylist();
		}
		$this->load->view('template',$data);
	}
	
	public function memberlist(){
		$this->load->model('memberModel');
		$data['title'] = "Member List";
		if ($this->session->userdata('username')){
			$data['tracks'] = $this->playlistModel->getYourPlaylist();
		}
		$data['member_list'] = $this->memberModel->getMember();
		$data['maincontent'] = "sitemap";
		$this->load->view('template',$data);
	}
}
?>