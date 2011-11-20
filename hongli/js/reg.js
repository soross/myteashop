function checkspace(checkstr) {
    var str = '';
    for (i = 0; i < checkstr.length; i++) {
        str = str + ' ';
    }
    return (str == checkstr);
}

function checkusername(){//用户名
	var username = document.formUser.username.value;

	if (checkspace(username)) {
        //document.formUser.username.focus();
        alert("对不起，请填写会员名！");
        return false;
    }else{
		return true;
	}
}

function checkpassword(){//密码
	var password = document.formUser.password1.value;

	if (checkspace(password) || password.length < 6 || password.length > 20) {
        //document.formUser.password1.focus();
        alert("密码长度不能不能这空，在6位到20位之间，请重新输入！");
        return false;
    }else{
		return true;
	}

}

function checkconfirm_password(){//确认密码
	var confirm_password = document.formUser.confirm_password.value;
	var password = document.formUser.password.value;

	if (password != confirm_password) {
        //document.formUser.password.focus();
        document.formUser.password.value = '';
        document.formUser.confirm_password.value = '';
        alert("两次输入的密码不同，请重新输入！");
        return false;
    }else{
		return true;
	}

}

function checkpassword_2(){//二级密码
	var password_2 = document.formUser.password_2.value;
	if (checkspace(password_2) || password_2.length < 6 || password_2.length > 20) {
        //document.formUser.password_2.focus();
        alert("二级密码长度不能不能这空，在6位到20位之间，请重新输入！");
        return false;
    }else{
		return true;
	}
}

function checkconfirm_password_2(){
	if (document.formUser.password_2.value != document.formUser.confirm_password_2.value) {
        //document.formUser.password_2.focus();
        document.formUser.password_2.value = '';
        document.formUser.confirm_password_2.value = '';
        alert("两次输入的二级密码不同，请重新输入！");
        return false;
    }else{
		return true;
	}
}


function checkemail(){//email
	var email = document.formUser.email.value;
	if (email.length != 0) {
        var patn = /^[_a-zA-Z0-9\-]+(\.[_a-zA-Z0-9\-]*)*@[a-zA-Z0-9\-]+([\.][a-zA-Z0-9\-]+)+$/;
        if (!patn.test(email)) {
            alert("Email地址格式不正确！");
            //document.formUser.email.focus();
            return false;
        }else{
	        return true;
        }
    }else{
    	alert("请填写Email地址!");
    }
}

function checkQuesionSel(){//我的问题
	var QuesionSel = document.formUser.QuesionSel.value;

	if(QuesionSel==null&&QuesionSel==""||QuesionSel.length==0){
		alert("我的问题不能为空!");
		return false;
	}
	else{

		return true;
	}


}

function checkpasswd_answer(){//问题答案
	var passwd_answer = document.formUser.passwd_answer.value;

	if (checkspace(passwd_answer)) {
        //document.formUser.passwd_answer.focus();
        alert("对不起，请填写问题答案！");
        return false;
    }else{
		return true;
	}


}

/**
function checkmb_type(){//会员性质
	var mb_type = document.formUser.mb_type.value;

	if(checkspace(mb_type)){
		document.formUser.mb_type.focus();
		alert("请选择会员性质!");
		return false;
	}else{
		return true;
	}
}
**/

function checkshopxp_shiname(){//您的真实姓名
	var shopxp_shiname = document.formUser.shopxp_shiname.value;

	if(checkspace(shopxp_shiname)){
		//document.formUser.shopxp_shiname.focus();
		alert("请填写真实姓名!");
		return false;
	}
	else{

		return true;
	}


}

function checkMoMNo(){//您的身份证号
	var sfz = document.formUser.MoMNo.value;
    if (checkspace(sfz)) {
       // document.formUser.MoMNo.focus();
        alert("对不起，请填写身份证号！");
        return false;
    }

 	if(document.getElementById("nosfz").checked){
		return true;
	}else{
    	isIDCard1 = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{2}([xX0-9]{1})$/;
    	isIDCard2 = /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([xX0-9]{1})$/;

	    if (!isIDCard1.test(sfz)) {
	        if (!isIDCard2.test(sfz)) {
	         //   document.formUser.MoMNo.focus();
	            alert("对不起，请填写正确地身份证号！");
	            return false;
	        }else{
	        	return true;
	        }
	    }

	    if (document.formUser.MoMNo.value.length != 15 && document.formUser.MoMNo.value.length != 18 && document.formUser.MoMNo.value.length != 10 && document.formUser.MoMNo.value.length != 9 && document.formUser.MoMNo.value.length != 6) {
	      //  document.formUser.MoMNo.focus();
	        alert("请输入正确的身份证号码！");
	        return false;
	    }else{
	    	return true;
	    }

    }

}
/**
function checkqyname(){//企业名称
	var qyname = document.formUser.qyname.value;

	 if (checkspace(qyname)) {
       // document.formUser.qyname.focus();
		alert("请填写企业名称!");
		return false;
	}
	else{

		return true;
	}


}
**/

/**
function checkqymc(){//企业编号
	var qymc = document.formUser.qymc.value;

	if(qymc==null&&qymc==""||qymc.length==0){

		return false;
	}
	else{

		return false;
	}
}
**/

/**
function checklianxiren(){//联 系 人
	var lianxiren = document.formUser.lianxiren.value;

	 if (checkspace(lianxiren)) {
        //document.formUser.lianxiren.focus();
		alert("请填写联系人!");
		return false;
	}
	else{

		return false;
	}


}

function checkphone(){//联系电话
	var phone = document.formUser.phone.value;
	var reg=/(^[0-9]{3,4}\-[0-9]{7,8}$)|(^[0-9]{7,8}$)|(^\([0-9]{3,4}\)[0-9]{3,8}$)|(^0{0,1}13[0-9]{9}$)/;

	 if (checkspace(phone)) {
      //  document.formUser.phone.focus();
		alert("请填写联系电话!");
		return false;
	}else if(reg.test(phone)){
	//	document.formUser.phone.focus();
		alert("联系电话不合法!");
		return false;
	}else{
		return true;
	}
}
**/
function checktjr(){//推荐人用户名
	var tjr = document.formUser.tjr.value;

	 if (checkspace(tjr)) {
      //  document.formUser.tjr.focus();
		alert("请填写推荐人!");
		return false;
	}else{
		return true;
	}

}

function checkszSheng(){//所在省市
	var szSheng = document.formUser.szSheng.value;

	if(szSheng==null&&szSheng==""||szSheng.length==0){
		alert("请选择省!");
		return false;
	}else{

		return true;
	}

}

function checkaddress(){//详细地址
	var address = document.formUser.address.value;

	 if (checkspace(address)) {
        //document.formUser.address.focus();
		alert("请填写详细地址!");
		return false;

	}else{
		return true;
	}
}

function checkusertel(){//联系电话
	var usertel = document.formUser.usertel.value;

	if (checkspace(usertel)) {
        //document.formUser.usertel.focus();
		alert("请填写联系电话!");
		return false;

	}else{
		return true;
	}

}

function checkband_name(){//开户行
	var band_name = document.formUser.band_name.value;

	if (checkspace(band_name)) {
        //document.formUser.band_name.focus();
		alert("请填写开户行!");
		return false;

	}else{
		return true;
	}
}

function checkband_user(){//户名
	var band_user = document.formUser.band_user.value;

	if (checkspace(band_user)) {
        //document.formUser.band_user.focus();
		alert("请填写户名!");
		return false;
	}else{
		return true;
	}
}

function checkband_id(){//账号
	var band_id = document.formUser.band_id.value;
	if (checkspace(band_id)) {
        //document.formUser.band_id.focus();
		alert("请填写账号!");
		return false;
	}else{
		return true;
	}
}

function checkagreement(){//
	var agreement = document.formUser.agreement.value;

	if(agreement==null&&agreement==""||agreement.length==0){
		alert("请同意用户协议，否则无法注册!");
		return false;
	}else{
		return true;
	}
}

function onformUser(){

//&&checkqymc()&&checkmb_type()&&checkqyname()&&checklianxiren()&&checkphone()
	if(checkusername()&&checkpassword()&&checkconfirm_password()&&checkpassword_2()&&checkemail()&&checkQuesionSel()&&
		checkpasswd_answer()&&checkshopxp_shiname()&&checkMoMNo()&&checktjr()&&checkszSheng()&&checkaddress()&&checkusertel()&&checkband_name()&&checkband_user()&&checkband_id()&&checkagreement()){
		return true;
	}else{
		return false;
	}
}