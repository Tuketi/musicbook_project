<?php if ($member_info['user_avatar'] != NULL){
	$avatar = base_url()."assets/images/avatars/".$member_info['user_avatar'];
}else{
	$avatar = base_url()."assets/images/avatars/default.png";
}?>

<div class='band_cont_r' id='band_cont_r'>
	<?php if ($member_info['added']){
		echo "Friend added!";
	}
	if ($member_info['have_as_friend']){
		echo "<img src='".base_url()."assets/images/heart-full.png' alt='friends' title='you are friends with this person' style='margin-right:5px;margin-top:5px;'>";
	}elseif ($member_info['user_login'] != $this->session->userdata('username')){?>
		<a href='<?php echo base_url();?>index.php/members/view/<?php echo $member_info['user_login'];?>/add'><img src='<?php echo base_url();?>assets/images/heart-empty.png' alt='add friend' title='add friend' onclick='addFriend(<?php echo $member_info['user_id'];?>)' style='margin-right:5px;margin-top:5px;'></a>
	<?php }?>
</div>

<div class='center'>
	<div class='profile_section' style='width:20%;'><img src='<?php echo $avatar;?>' alt='user avatar'></div>
	<div class='profile_section' style='width:40%;'>
		<h2><?php echo stripslashes($member_info['user_login']);?></h2>
	</div>
	<div class='profile_section' style='width:40%;'><h2>Favourites</h2>
	<?php
	if (count($member_favs) == 0){
		echo "no favourites yet!";
	}
	foreach($member_favs as $favs){
		echo "<a href='".base_url()."index.php/bands/view/".$favs['band_id']."'>
			<img src='".base_url()."assets/images/bands/".$favs['band_image']."' alt='band image' class='albumlist_art'>
		</a>";
	}?>
	<h2>Friends</h2>
	<?php
	if (count($member_friends) == 0){
		echo "no friends yet!";
	}
	foreach($member_friends as $frans){
		echo "<a href='".base_url()."index.php/members/view/".$frans['user_login']."'><img src='".base_url()."assets/images/avatars/".$frans['user_avatar']."' alt='user avatar' class='albumlist_art'></a>";
	}?>
	<h2>Message Wall</h2>
	<?php
	if (count($member_messages) == 0){
		echo "no messages yet!";
	}
		echo "<ul class='message_li'>";
	foreach($member_messages as $posts){
		$dateski = strtotime($posts['message_date']);
		$messagedate = date("M j, Y @ H:i A", $dateski);
		echo "<li><a href='".base_url()."index.php/members/view/".$posts['user_login']."'><img src='".base_url()."assets/images/avatars/".$posts['user_avatar']."' align='texttop' alt='user avatar' class='albumlist_art' style='float:left;'></a>".$posts['message_text']."<br /><span style='font-size:70%;float:right;'>".$messagedate."</span></li>";
	}
		echo "</ul>";
	if ($member_info['user_login'] != $this->session->userdata('username')){
		echo form_open('members/postmessage');?>
	<br /><br />
	<div class='form_enclose'>
		<textarea name='message_text' id='message_text' rows='3' cols='30' placeholder='enter your message here'></textarea>
		<input type='hidden' name='thisuser' value='<?php echo $member_info['user_login'];?>'>
		<input type='hidden' name='owner_id' value='<?php echo $member_info['user_id'];?>'>
		<input type='submit' name='submit' value='Post Message'>
	</form>
	</div>
	<?php }?></div>
</div>