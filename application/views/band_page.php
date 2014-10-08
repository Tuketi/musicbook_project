<div class='band_page_cont'>
<?php
foreach($bands as $bandinfo){?>
	
	<div class='band_cont2'>
		<img src='../assets/images/bands/<?php echo $bandinfo['band_image'];?>' alt='band photo' class='albumlist_art' align='texttop'>
		<a href='./bands/view/<?php echo $bandinfo['band_id'];?>'><?php echo $bandinfo['band_name'];?></a>
	</div>
	
<?php }?>
</div>