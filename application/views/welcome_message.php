<?php
/** If you're logged in, you see this **/
if ($this->session->userdata('username')){?>

<div class='center'><h2>Welcome back to Music Book!</h2></div>

<?php /** If not logged in, you see this **/
}else{?>

<div class='column_left'>

<?php if (isset($error)){
	echo $error;
}
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

</div>
<div class='column_left'>

<div id="feedback"></div><br /><br />

<div class='form_enclose'>
<div class='center'>
	<form method='post' onsubmit="return regForm(this)">
		<input type='text' name='username1' id='username1' placeholder='desired username' autocomplete='off'><br />
		<input type='text' name='email' id='email' placeholder='valid e-mail' autocomplete='off'><br />
		<input type='password' name='password1' id='password1' placeholder='password' autocomplete='off'><br />
		<input type='password' name='password2' id='password2' placeholder='password (again)' autocomplete='off'><br />
		<input type='submit' name='submit' value='Join Now!'>
	</form>
</div>
</div>

</div>

<?php }?>