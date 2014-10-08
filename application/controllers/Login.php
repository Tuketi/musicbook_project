<?php
class Login extends CI_Controller{
	public function __construct(){
		parent::__construct();
		$this->load->model('loginModel');
	}
	
	public function index(){
		$data['title'] = "Login";
		
		$data['maincontent'] = "login_page";
		$this->load->view('template',$data);
	}
	
	public function loginError(){
		$data['title'] = "Login";
		
		$data['maincontent'] = "welcome_message";
		$data['error'] = "<div id='feedback'><h2>There was an error!</h2>Please check your login details.</div>";
		$this->load->view('template',$data);
	}
	
	public function loggedIn(){
		$data['title'] = "Welcome!";
		
		$data['maincontent'] = "loggedin_page";
		$this->load->view('template',$data);
	}
	
	public function reg(){
		$data['title'] = "Register";
		
		$data['maincontent'] = "register_page";
		$this->load->view('template',$data);
	}
	
	public function validateLogin(){
		$user = $this->loginModel->attemptLogin();
		
		if($user){
			$data = array(
			'username' => $this->input->post('username'),
			'loggedin' => true,
			'avatar' => $user['user_avatar'],
			'user_id' => $user['user_id']
			);
			$this->session->set_userdata($data);
			redirect(base_url());
		}else{
			$this->loginError();
		}
	}
	
	public function validateRegister(){
	$this->load->helper('security');
		$errors = array();
		$username = $this->input->post('username1');
		$email = $this->input->post('email');
		$password1 = $this->input->post('password1');
		$password2 = $this->input->post('password2');
		
		if ($username == NULL){
			$errors[] = "Please provide a username.";
		}
		if ($email == NULL){
			$errors[] = "Please provide a valid e-mail.";
		}
		if ($password1 == NULL){
			$errors[] = "Please provide a password.";
		}
		if ($password2 == NULL){
			$errors[] = "You must enter your password twice.";
		}
		if ($password1 != $password2){
			$errors[] = "Passwords do not match.";
		}
		$errcount = count($errors);
			if ($errcount > 0){
			$errmsg = "";
				echo "<h2>Oops! The following errors occurred:</h2>";
				for($i = 0; $i < $errcount; $i++){
					$errmsg .= $errors[$i]."<br />";
				}
				echo $errmsg;
			}else{ //all is well
				$this->load->model('loginModel');
			$data = array(
				'user_login' => $username,
				'user_password' => do_hash($password1),
				'user_email' => $email
				);
				$this->loginModel->signUp($data);
				
				echo "Welcome to Music Book! You can now log in.";
			}
	}
}