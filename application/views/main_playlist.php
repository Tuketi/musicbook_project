<div class='center'><h2>Your Playlist</h2></div>
<div class='center' style='width:50%;'>

<?php if (isset($error)){
	echo $error;
}elseif (isset($success)){
	echo $success;
}?>

</div>

<?php if (isset($tracks)){?>
<div class='center'>
	<ul class='playlist_list'>
<?php foreach($tracks as $list_track){
	echo "<li><img src='".base_url()."assets/images/albums/".$list_track['album_image']."' alt='album art' class='albumlist_art' align='absbottom' style='float:left;'>".$list_track['track_title']."<br /><a href='".base_url()."index.php/bands/view/".$list_track['band_id']."'>".$list_track['band_name']."</a></li>";
}?>
	</ul>
</div>
<?php }?>