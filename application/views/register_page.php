<div id="feedback"></div><br /><br />

<div class='form_enclose'>
<div class='center'>Sign up for Music Book!<br />
	<form method='post' onsubmit="return regForm(this)">
		<input type='text' name='username' id='username' placeholder='desired username' autocomplete='off'><br />
		<input type='text' name='email' id='email' placeholder='valid e-mail' autocomplete='off'><br />
		<input type='password' name='password' id='password' placeholder='password' autocomplete='off'><br />
		<input type='password' name='password2' id='password2' placeholder='password (again)' autocomplete='off'><br />
		<input type='submit' name='submit' value='Join Now!'>
	</form>
</div>
</div>

<div class='under_login'><?php echo anchor('login', 'Already have an account? Click to log in.'); ?></div>