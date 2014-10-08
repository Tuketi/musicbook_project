<?php
class loginModel extends CI_Model{
	public function __construct(){
		$this->load->database();
	}
	
	public function attemptLogin(){
	$this->load->helper('security');
		$this->db->where('user_login', $this->input->post('username'));
		$this->db->where('user_password', do_hash($this->input->post('password')));
		$query = $this->db->get('users');
		
		if($query->num_rows == 1){
			return $query->row_array();
		}
	}
	
	public function signUp($data){
		$this->db->insert('users',$data);
		return "Welcome to Music Book!";
	}
	
}?>