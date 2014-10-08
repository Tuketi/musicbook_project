
<section class='main_sect'>
	<?php if (!$fav_added){?>
	<div class='band_cont_r' id='band_cont_r'>
		<img src='<?php echo base_url();?>assets/images/heart-empty.png' alt='favourite icon' title='click to fav this band' onclick='favBand(<?php echo $band_info['band_id'];?>)'>
	</div>
	<?php }else{?>
	<div class='band_cont_r' id='band_cont_r'>
		<img src='<?php echo base_url();?>assets/images/heart-full.png' alt='favourite icon' title='this is one of your favourites!'>
	</div>
	<?php }?>
	
	<div class='band_cont'>
		<img src='<?php echo base_url();?>assets/images/bands/<?php echo $band_info['band_image'];?>' alt='band photo'>
	</div>
	<div class='band_cont last'>
		<h1><?php echo stripslashes($band_info['band_name']);?></h1>
		<?php echo stripslashes(nl2br($band_info['band_bio']));?>
	</div>
	
	<div class='band_albums'><h2>Albums</h2>
	<ul class='album_list'>
	<?php
	$i = 0;
	foreach($album_info as $albums){
		echo "<li><img src='".base_url()."assets/images/albums/".$albums['album_image']."' alt='album art' class='albumlist_art' align='center'><b>".stripslashes($albums['album_name'])."</b>
			<ul>";
	
			foreach($track_info[$i] as $tracks){
				echo "<li>";
					if (strlen($tracks['track_title']) > 25){
						$title = substr($tracks['track_title'], 0,25)." ...";
					}else{
						$title = $tracks['track_title'];
					}
					if ($tracks['track_mp3'] == NULL){
						$playlisticon = "<img src='".base_url()."assets/images/playlist_icon_grey.png' alt='playlist icon' title='cant add to playlist without an mp3'>";
						echo "<span style='color:#999;' title='No mp3 uploaded'>".stripslashes($title)."</span>";
					}else{
						$playlisticon = "<a href='".base_url()."index.php/playlists/addsong/".$tracks['track_id']."'><img src='".base_url()."assets/images/playlist_icon.png' alt='add to playlist' title='add track to playlist'></a>";
						echo stripslashes($title);
					}
				echo "<span class='upload_icons'><a href='".base_url()."index.php/upload/uploadtrack/".$tracks['track_id']."'><img src='".base_url()."assets/images/upload_icon.png' alt='upload mp3' title='upload mp3 for this track'></a>".$playlisticon."</span></li>";
			}
		$i++;
		echo "</ul></li>";
	}?>
	</ul>
	</div>
</section>