//�ǳ�
function isUsername(obj){
	if(obj.value.length==0){
		document.getElementById("username_ps").innerHTML="�ǳƲ���Ϊ��";
		return false;
	}else{
		document.getElementById("username_ps").innerHTML="";
		return true;
	}
}

function isTitle(obj){
	if(obj.value.length<5){
		document.getElementById("title_ps").innerHTML="����������5λ���ַ��ı���";
		return false;
	}else{
		document.getElementById("title_ps").innerHTML="";
		return true;
	}
}

function isEmail(obj){
	if ((obj.value).search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1){
		document.getElementById("email_ps").innerHTML="";
		return true;
	}else{
		document.getElementById("email_ps").innerHTML="��������ȷ�������ʽ";
		return false;
	}
}

function isContent(obj){
	if(obj.value.length<10){
		document.getElementById("content_ps").innerHTML="����������10λ�ַ�����������";
		return false;
	}else{
		document.getElementById("content_ps").innerHTML="";
		return true;
	}
}

function isCode(obj){
	if(obj.value.length!=4){
		document.getElementById("code_ps").innerHTML="������4λ��֤��";
		return false;
	}else{
		document.getElementById("code_ps").innerHTML="";
		return true;
	}
}


function check(){
	var submit = document.getElementById("submit");
	var username = document.getElementById("username");
	if((username.value).length<1){
		document.getElementById("username_ps").innerHTML="�ǳƲ���Ϊ��";
		username.focus();
		return false;
	}else{
		document.getElementById("username_ps").innerHTML="";
	}

	var title = document.getElementById("title");
	if((title.value).length<5){
		document.getElementById("title_ps").innerHTML="����������5λ���ַ��ı���";
		title.focus();
		return false;
	}else{
		document.getElementById("title_ps").innerHTML="";
	}
	var email = document.getElementById("email");
	if((email.value).search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) == -1){
		document.getElementById("email_ps").innerHTML="��������ȷ�������ʽ";
		email.focus();
		return false;
	}else{
		document.getElementById("email_ps").innerHTML="";
	}

	var content = document.getElementById("content");
	if((content.value).length<10){
		document.getElementById("content_ps").innerHTML="����������10λ�ַ�����������";
		content.focus();
		return false;
	}else{
		document.getElementById("content_ps").innerHTML="";
	}

	var code = document.getElementById("code");
	if((code.value).length==4){
		document.getElementById("code_ps").innerHTML="";
	}else{
		document.getElementById("code_ps").innerHTML="������4λ��֤��";
		code.focus();
		return false;
	}

	return true;
}
