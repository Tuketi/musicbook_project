<br /><br />
<div class='center'>
<h2>Upload mp3</h2>
<div class='form_enclose'>
	<?php 
	echo form_open_multipart('upload/doupload/'.$track_id.'');?>
		<input type='file' name='userfile' id='userfile' size='20'>
		<p><input type='submit' value='upload'></p>
	</form>
</div>
</div>