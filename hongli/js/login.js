function checksltMemberType(){//会员类型
	var sltMemberType = document.procatshopform.sltMemberType.value;
	if(sltMemberType==null&&sltMemberType==""||sltMemberType.length==0){

		return false;
	}
	else{

		return true;
	}

}

function checkusername(){//帐号：
	var username = document.procatshopform.username.value;
	if(username==null&&username==""||username.length==0){

		return false;
	}
	else{

		return true;
	}

}

function checkpassword(){//密码
	var password = document.procatshopform.password.value;
	if(password==null&&password==""||password.length==0){

		return false;
	}
	else{

		return true;
	}

}

function checkrandomCode(){//验证码
	var randomCode = document.procatshopform.randomCode.value;
	if(randomCode==null&&randomCode==""||randomCode.length==0){

		return false;
	}
	else{

		return true;
	}

}

function login(){

	if(checksltMemberType()&&checkusername()&&checkpassword()&&checkrandomCode()){
		alert("aaa");

		return true;
	}
	else{
		alert("bbb");

		return false;
	}


}