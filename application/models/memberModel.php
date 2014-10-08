<?php
class memberModel extends CI_Model{
	public function __construct(){
		$this->load->database();
	}
	
	public function getMember($memberid = NULL){
		if (!$memberid){
			$this->db->order_by("user_login", "asc");
			$query = $this->db->get('users');
			return $query->result_array();
		}else{
			$query = $this->db->get_where('users', array('user_login' => $memberid));
			return $query->row_array();
		}
	}
	
	public function checkFriend($friendid){
		$query = $this->db->get_where('friends_list', array('friend_id' => $friendid, 'user_id' => $this->session->userdata('user_id')));
		if ($query->num_rows == 1){ //friend record already exists
			return true;
		}else{
			return false;
		}
	}
	
	public function showFriends(){
		$this->db->select('users.user_login');
		$this->db->from('friends_list');
		$this->db->join('users', 'friends_list.friend_id = users.user_id');
		$query = $this->db->get();
		return $query->result_array();
	}
	
	public function addFriend($friendid){
		if (!$this->checkFriend($friendid)){
			$data = array(
				'user_id' => $this->session->userdata('user_id'),
				'friend_id' => $friendid
			);

			$this->db->insert('friends_list', $data);
			return true;
		}
	}
	
	public function getFavs($userid){
		$this->db->select('favourites.band_id, bands.band_image');
		$this->db->from('favourites');
		$this->db->join('bands', 'favourites.band_id = bands.band_id');
		$this->db->join('users', 'users.user_id = favourites.user_id');
		$this->db->where('users.user_login', $userid);
		$query = $this->db->get();
		return $query->result_array();
	}
	
	public function getFriends($userid){
		$query = $this->db->get_where('users', array('user_login' => $userid));
		$this_user = $query->row_array();
			$this_user_id = $this_user['user_id'];
	
		$this->db->select('friends_list.friend_id, users.user_avatar, users.user_login');
		$this->db->from('friends_list');
		$this->db->join('users', 'users.user_id = friends_list.friend_id');
		$this->db->where('friends_list.user_id', $this_user_id);
		$query = $this->db->get();
		return $query->result_array();
	}
	
	public function getMessages($userid){
		$query = $this->db->get_where('users', array('user_login' => $userid));
		$this_user = $query->row_array();
			$this_user_id = $this_user['user_id'];
			
		$this->db->select('users.user_login, users.user_avatar, users.user_id, messages.message_text, messages.message_date');
		$this->db->from('messages');
		$this->db->join('users', 'users.user_id = messages.poster_id');
		$this->db->where('messages.owner_id', $this_user_id);
		$this->db->order_by('messages.message_id', 'desc');
		$query = $this->db->get();
		return $query->result_array();
	}
	
	public function addMessage($data){
		$this->db->insert('messages',$data);
	}
}