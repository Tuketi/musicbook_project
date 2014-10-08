<?php
class uploadModel extends CI_Model{
	public function __construct(){
		$this->load->database();
	}
	
	public function addFile($trackid){
		$filename = "track".$trackid.".mp3";
		
		$data = array(
				'track_mp3' => $filename,
				'uploaded_by' => $this->session->userdata('user_id')
			);
		
		$this->db->where('track_id', $trackid);
		$this->db->update('tracks', $data); 
	}
	
}