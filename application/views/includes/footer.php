
	</div>
<?php if ($this->session->userdata('username')){?>
	<div class='playlist_cont'>
		<div class='center'>
			<h3>Your Playlist</h3>
			<ul class='playlist_list'>
		<?php foreach($tracks as $list_track){
			echo "<li><img src='".base_url()."assets/images/albums/".$list_track['album_image']."' alt='album art' class='albumlist_art' align='absbottom' style='float:left;'>".$list_track['track_title']."<br /><a href='".base_url()."index.php/bands/view/".$list_track['band_id']."'>".$list_track['band_name']."</a></li>";
		}?>
			</ul>
		</div>
	</div>
<?php }else{?>
<div class='playlist_cont signedout'>
	<img src='<?php echo base_url();?>assets/images/upload-icon.png'><br />
		UPLOAD<br /><br /><br /><br /><br />
	<img src='<?php echo base_url();?>assets/images/listen-icon.png'><br />
		LISTEN<br /><br /><br /><br /><br /><br />
	<img src='<?php echo base_url();?>assets/images/share-icon.png'><br />
		SHARE<br /><br /><br /><br /><br /><br /><br />
	<img src='<?php echo base_url();?>assets/images/logo.png'>
</div>
<?php }?>

<footer>
	<div class='footer_left'>
	<span class='footertext'>
		<a href='<?php echo base_url();?>index.php/pages/about'>About</a>
		<br /><a href='<?php echo base_url();?>index.php/pages/contact'>Contact</a>
		<br /><a href='<?php echo base_url();?>index.php/pages/memberlist'>Member List</a>
	</span></div>
	<div class='footer_right'>&copy; <?php echo date('Y');?> <a href='<?php echo base_url();?>'><img src='<?php echo base_url();?>assets/images/logo.png' alt='logo'></a></div>
</footer>

</div>