<div class='center'>
	<h1>Member List</h1>
	<ul class='message_li'>
	<?php
	foreach($member_list as $members){
		echo "<li><a href='".base_url()."index.php/members/view/".$members['user_login']."'><img src='".base_url()."assets/images/avatars/".$members['user_avatar']."' align='texttop' alt='user avatar' class='albumlist_art' style='float:left;'> ".$members['user_login']."</a></li>";
	}?>
	</ul>
</div>