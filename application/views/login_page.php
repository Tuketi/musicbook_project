<?php echo validation_errors();
echo form_open('login/validateLogin');?>
<br /><br />

<div class='form_enclose'>
	<div class='center'>
		<input type='text' name='username' id='username' placeholder='username' autocomplete='off'><br />
		<input type='password' name='password' id='password' placeholder='password' autocomplete='off'><br />
		<input type='submit' name='submit' value='Login'>
		</form>
	</div>
</div>
	
<div class='under_login'><?php echo anchor('login/reg', 'Or register?'); ?></div>