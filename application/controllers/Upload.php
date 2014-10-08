<?php
class Upload extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('uploadModel');
		$this->load->model('playlistModel');
	}
	
	public function uploadTrack($trackid){
		if (!$this->session->userdata('username')){
			redirect(base_url());
		}
		$this->load->model('bandModel');
		
		$data['title'] = "Upload Track MP3";
		$data['tracks'] = $this->playlistModel->getYourPlaylist();
		$data['track_id'] = $trackid;
		$data['maincontent'] = "upload_mp3";
		$this->load->view('template',$data);
	}
	
	public function doUpload($trackid){
		if (!$this->session->userdata('username')){
			redirect(base_url());
		}
		$config['upload_path'] = "./assets/mp3s/";
		$config['allowed_types'] = "mp3";
		$config['max_size']	= '0';
		$config['overwrite'] = true;
		$config['file_name'] = "track".$trackid;
		
		$this->load->library('upload', $config);
		$this->upload->initialize($config);
		$this->upload->set_allowed_types('*');
		$data['upload_data'] = '';
		
		if (!$this->upload->do_upload('userfile')){
			echo $this->upload->display_errors('<p>', '</p>');
		}else{
			$this->load->model('bandModel');
				$data['band_id'] = $this->bandModel->getBandFromTrack($trackid);
			
			$this->uploadModel->addFile($trackid);
			$data['upload_data'] = $this->upload->data();
			$data['tracks'] = $this->playlistModel->getYourPlaylist();
			$data['title'] = "Upload Successful";
			$data['maincontent'] = "upload_success";
			$this->load->view('template',$data);
		}
	}

}