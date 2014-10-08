<?php
class Playlists extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('playlistModel');
	}
	
	public function index(){
		if (!$this->session->userdata('username')){
			redirect(base_url());
		}
		$data['title'] = "Your Playlist";
		$data['tracks'] = $this->playlistModel->getYourPlaylist();
		
		$data['maincontent'] = "main_playlist";
		$this->load->view('template',$data);
	}
	
	public function addSong($trackid){
		if (!$this->session->userdata('username')){
			redirect(base_url());
		}
		if ($this->playlistModel->checkForSong($trackid)){
			$data['error'] = "<div id='feedback'><h1>There was an error!</h1>You already have this song in your playlist.</div>";
		}else{
			$data = array(
				'track_id' => $trackid,
				'user_id' => $this->session->userdata('user_id')
				);
			$this->playlistModel->addSong($data);
			$data['success'] = "<h3>Song added!</h3>";
		}
	
		$data['title'] = "Your Playlist";
		$data['tracks'] = $this->playlistModel->getYourPlaylist();
		
		$data['maincontent'] = "main_playlist";
		$this->load->view('template',$data);
	}
}
?>