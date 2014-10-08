<?php
class Members extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('memberModel');
		$this->load->model('playlistModel');
	}
	
	public function view($memberid, $friendid = NULL){
		$data['member_favs'] = $this->memberModel->getFavs($memberid);
		$data['member_friends'] = $this->memberModel->getFriends($memberid);
		$data['member_messages'] = $this->memberModel->getMessages($memberid);
		$data['member_info'] = $this->memberModel->getMember($memberid);
		$data['title'] = $data['member_info']['user_login']."'s Profile";
		
		if (!$this->session->userdata('username')){
			redirect(base_url());
		}else{	
			$data['maincontent'] = "profile";
			$data['tracks'] = $this->playlistModel->getYourPlaylist();
			$data['member_info']['added'] = false;
			$data['member_info']['have_as_friend'] = $this->memberModel->checkFriend($data['member_info']['user_id']);
			
			if ($friendid == "add"){
				if ($this->memberModel->addFriend($data['member_info']['user_id'])){
					$data['member_info']['added'] = true;
				}
			}
		}
		$this->load->view('template',$data);
	}
	
	public function logout(){
		if (!$this->session->userdata('username')){
			redirect(base_url());
		}
		$this->session->sess_destroy();
		$data['title'] = "Goodbye!";
		$data['maincontent'] = "logout";
		$this->load->view('template',$data);
	}
	
	public function postmessage(){
		if (!$this->session->userdata('username')){
			redirect(base_url());
		}
		$data = array(
				'owner_id' => $this->input->post('owner_id'),
				'poster_id' => $this->session->userdata('user_id'),
				'message_text' => $this->input->post('message_text'), 
				'message_date' => date("Y-m-d H:i:s")
				);
		$this->memberModel->addMessage($data);
		redirect(base_url().'index.php/members/view/'.$this->input->post('thisuser'));
	}
}
?>