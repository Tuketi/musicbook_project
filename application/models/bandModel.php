<?php
class bandModel extends CI_Model{
	public function __construct(){
		$this->load->database();
	}
	
	public function getBand($bandid = NULL){
		if ($bandid){
			$this->db->where('band_id', $bandid);
			$this->db->order_by("band_name", "asc");
			$query = $this->db->get('bands');
			return $query->row_array();
		}else{
			$this->db->order_by("band_name", "asc");
			$query = $this->db->get('bands');
			return $query->result_array();
		}
	}
	
	public function getATrack($trackid){
		$query = $this->db->get_where('tracks', array('track_id' => $trackid));
		$tracks = $query->row_array();
	}
	
	public function getBandFromTrack($trackid){
		$this->db->select('albums.band_id');
		$this->db->from('tracks');
		$this->db->join('albums', 'tracks.album_id = albums.album_id');
		$this->db->where('tracks.track_id', $trackid);
		$query = $this->db->get();
		return $query->row_array();
	}
	
	public function getTracks($albumarray){
		$trackarray = array();
		
		foreach ($albumarray as $albums){
			$query = $this->db->get_where('tracks', array('album_id' => $albums['album_id']));
			$tracks = $query->result_array();
			
			$trackarray[] = $tracks;
		}
		return $trackarray;
	}
	
	public function getAlbums($bandid){
		if ($bandid){
		$query = $this->db->get_where('albums', array('band_id' => $bandid));
		return $query->result_array();
		}
	}
	
	public function bandSearch($searchstr){
		if ($searchstr){
			$this->db->order_by("band_name", "asc");
			$this->db->like('band_name', $searchstr, 'after');
			$query = $this->db->get('bands');
			return $query->result_array();
		}
	}
	
	public function favAdded($bandid){
		$query = $this->db->get_where('favourites', array('band_id' => $bandid, 'user_id' => $this->session->userdata('user_id')));
		
		if ($query->num_rows == 1){
			return true;
		}
	}
	
	public function addFav($bandid){
		$data = array(
				'user_id' => $this->session->userdata('user_id'),
				'band_id' => $bandid
			);
		$this->db->insert('favourites', $data);
	}

}?>