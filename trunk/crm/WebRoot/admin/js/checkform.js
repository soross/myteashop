//�Ƿ�Ϊ����
function isAge(obj){
	if(obj.value>120 || obj.value <10){
		alert("������10-120�������!");
		return false;
	}else{
		return !isNaN(obj.value);
	}
}

//Phone;
function isPhone(s){
	if(s!=""){
		s = trim(s);
		var p = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{7,8}$/; 
		return p.test(s);
	}
}

//�ʱ�
function isCode(s){
	if(s!=""){
		s = trim(s);
		var p = /^[0-9]{6}$/; 
		return p.test(s);
	}
}

//�ֻ�����;
function isMobile(s){
    s = trim(s);
    var p = /[13]\d{9}/;
    return p.test(s);
}

//Email;
function isEmail(s){
    s = trim(s);
     var p = /^[_\.0-9a-z-]+@([0-9a-z][0-9a-z-]+\.){1,4}[a-z]{2,3}$/i;
     return p.test(s);
}