<?php
class Bands extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('bandModel');
		$this->load->model('playlistModel');
	}
	
	public function index(){
		$data['title'] = "Band list";
		if (!$this->session->userdata('username')){
			redirect(base_url());
		}else{
			$data['bands'] = $this->bandModel->getBand();
			$data['tracks'] = $this->playlistModel->getYourPlaylist();
			$data['maincontent'] = "band_page";
		}
		$this->load->view('template',$data);
	}
	
	public function view($bandid){
		if (!$this->session->userdata('username')){
			redirect(base_url());
		}
		$data['band_info'] = $this->bandModel->getBand($bandid);
		$data['album_info'] = $this->bandModel->getAlbums($bandid);
		
		$data['track_info'] = $this->bandModel->getTracks($data['album_info']);
		
		if (empty($data['band_info'])){
			show_404;
		}
		if ($this->bandModel->favAdded($bandid)){
			$data['fav_added'] = true;
		}else{
			$data['fav_added'] = false;
		}
		
		$data['title'] = $data['band_info']['band_name'];
		$data['tracks'] = $this->playlistModel->getYourPlaylist();
		
		$data['maincontent'] = "band_info_page";
		$this->load->view('template',$data);
	}
	
	public function searchBands($searchstr){
		echo "<ul class='searchlist'>";
		foreach ($this->bandModel->bandSearch($searchstr) as $bands){
			echo "<li><a href='".base_url()."index.php/bands/view/".$bands['band_id']."'><img src='".base_url()."assets/images/bands/".$bands['band_image']."' alt='band image' class='albumlist_art' align='absmiddle'> ".stripslashes($bands['band_name'])."</a></li>";
		}
		echo "</ul>";
	}
	
	public function addFav($bandid){
		if (!$this->session->userdata('username')){
			redirect(base_url());
		}
		if (!$this->bandModel->favAdded($bandid)){
			$this->bandModel->addFav($bandid);
			echo "<span class='band_faved'>Band favourited!</span> <img src='".base_url()."assets/images/heart-full.png' alt='faved' align='absmiddle'>";
		}
	}
}?>