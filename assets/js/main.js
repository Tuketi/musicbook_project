var xmlHttp;

if (window.XMLHttpRequest){
	xmlHttp = new XMLHttpRequest();
}else if (window.ActiveXObject){
	xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
}

function favBand(bandid){
	if (xmlHttp == null){
		alert("Browser does not support HTTP request");
		return;
	}
	
		var url = "http://localhost/music_book/index.php/bands/addfav/"+bandid;
		xmlHttp.onreadystatechange = favResult;
		xmlHttp.open("GET", url, true);
		xmlHttp.send(null);
}

function favResult(){
	if (xmlHttp.readyState == 4 || xmlHttp.readyState == 'complete'){	
		document.getElementById("band_cont_r").innerHTML = xmlHttp.responseText;
	}
}

function showResults(str){
	if (xmlHttp == null){
		alert("Browser does not support HTTP request");
		return;
	}
	
	if (window.event.keyCode == 8){
		document.getElementById("search_results").style.display = "none";
	}else{
		document.getElementById("search_results").style.display = "block";
		var url = "http://localhost/music_book/index.php/bands/searchbands/"+str;
		xmlHttp.onreadystatechange = stateChanged;
		xmlHttp.open("GET", url, true);
		xmlHttp.send(null);
	}
}

function stateChanged(){
	if (xmlHttp.readyState == 4 || xmlHttp.readyState == 'complete'){
	
		document.getElementById("search_results").innerHTML = xmlHttp.responseText;
	}
}

function regForm(thisform){
	if (xmlHttp == null){ //if it failed to create for some reason
		alert("Browser does not support HTTP Request");
	}
	
	var formdata = "username1=" + username1.value + "&email=" + email.value + "&password1=" + password1.value + "&password2=" + password2.value;
		
		xmlHttp.onreadystatechange = formSubmitted;
		xmlHttp.open("POST", "http://localhost/music_book/index.php/login/validateRegister/", true);
		xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xmlHttp.send(formdata);
		
		return false;
}

function formSubmitted(){
	if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete"){
		var feedbackthing = document.getElementById("feedback");
		
		feedbackthing.style.display = "block";
		feedbackthing.innerHTML = xmlHttp.responseText;
	}
}