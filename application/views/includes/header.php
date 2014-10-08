<html>
<head>
	<title><?php echo $title;?> - Music Book</title>
	<link href='http://fonts.googleapis.com/css?family=Alegreya+Sans' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700,400italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/css/main.css">
	<link rel="icon" type="image/png" href="<?php echo base_url();?>assets/images/favicon.png">
	<script type="text/javascript" src="<?php echo base_url();?>assets/js/main.js"></script>
</head>
<body>

<div id='cont'>

<header>
	<nav>
		<ul>
			<li><a href='<?php echo base_url();?>'><img src='<?php echo base_url();?>assets/images/logo.png' alt='logo'></a></li>
			<?php
			/** Nav options when you're logged in **/
			if ($this->session->userdata('username')){
				if ($this->session->userdata('avatar') != NULL){
					$avatar = base_url()."assets/images/avatars/".$this->session->userdata('avatar');
				}else{
					$avatar = base_url()."assets/images/avatars/default.png";
				}?>
			<li><a href='<?php echo base_url();?>index.php/bands'>New Music</a></li>
			<li><a href='<?php echo base_url();?>index.php/playlists'>Playlist</a></li>
			<li class='profile'><a href='<?php echo base_url();?>index.php/members/view/<?php echo $this->session->userdata('username');?>'>
				<img src='<?php echo $avatar;?>' alt='user avatar' class='header_avatar' align='texttop'><?php echo $this->session->userdata('username');?></a>
				<br /><span class='smalltext'><a href='<?php echo base_url();?>index.php/members/logout'>Logout</a></span></li>
		<?php }
			echo "</ul>";
			if ($this->session->userdata('username')){?>
			<form>
				<input type='search' onkeyup='showResults(this.value)' name='searchbox' id='searchbox' autocomplete='off' placeholder='search for bands'>
			</form>
			<?php }?>
	</nav>
</header>
<div id='search_cont'>
	<div id='search_results'></div>
</div>

<div id='left_cont'>