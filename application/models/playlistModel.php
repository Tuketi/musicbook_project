<?php
class playlistModel extends CI_Model{
	public function __construct(){
		$this->load->database();
	}
	
	public function checkForSong($trackid){
		$this->db->where('track_id', $trackid);
		$this->db->where('user_id', $this->session->userdata('user_id'));
		$query = $this->db->get('playlist_tracks');
		
		if ($query->num_rows == 1){
			return true;
		}
	}
	
	public function addSong($data){
		$this->db->insert('playlist_tracks',$data);
	}
	
	public function getYourPlaylist(){
		$this->db->select('playlist_tracks.list_id, tracks.track_title, albums.album_image, bands.band_name, bands.band_id');
		$this->db->from('playlist_tracks');
		$this->db->where('user_id', $this->session->userdata('user_id'));
		$this->db->join('tracks', 'tracks.track_id = playlist_tracks.track_id');
		$this->db->join('albums', 'albums.album_id = tracks.album_id');
		$this->db->join('bands', 'bands.band_id = albums.band_id');
		
		$query = $this->db->get();
		return $query->result_array();
	}
}
?>