var t;
var max=6;
function toggle(id){
	clear();
	var displayValue = document.getElementById(id).style.display;
	if(displayValue == "" || displayValue == "none"){
		document.getElementById(id).style.display="block";
		if(id=="languageList"){
			document.getElementById('languageSelect').className="on";
		}
	}
	else{
		document.getElementById(id).style.display="none";
		if(id=="languageList"){
			document.getElementById('languageSelect').className="off";
		}
	}
}
function c(id){
	document.getElementById(id).value="";
}
function timer(){
	clearTimeout(t);
	t=setTimeout('clear()',100);
}
function clearTimer(){
	clearTimeout(t);
}
function clear(){
	clearTimer();
	for(i=0;i<max;i++){
		document.getElementById('mainLink'+i).style.textDecoration="none";
		document.getElementById("sub"+i).style.display="none";
	}
	document.getElementById('languageList').style.display="none";
	//document.getElementById('liveHelpList').style.display="none";
	document.getElementById('languageSelect').className="off";
}
function dd(id){
	clear();
	document.getElementById('mainLink'+id).style.textDecoration="underline";
	document.getElementById("sub"+id).style.display="block";
}

function isValidSearch(searchLabel,errMsg) {
	if(document.getElementById('searchField').value != searchLabel && document.getElementById('searchField').value.length > 2) {
		return true;
	} else {
		alert(errMsg);
		return false;

	}
}

function showSonMenu(flag){
	var	lis = document.getElementsByName("li"+flag);
	for(var i=0;i<lis.length;i++){
		if(lis[i].style.display=="none"){
			lis[i].style.display="block";
		}else{
			lis[i].style.display="none";
		}
	}
}