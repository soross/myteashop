function checkspace(checkstr) {
    var str = '';
    for (i = 0; i < checkstr.length; i++) {
        str = str + ' ';
    }
    return (str == checkstr);
}

function checkusername(){//�û���
	var username = document.formUser.username.value;

	if (checkspace(username)) {
        //document.formUser.username.focus();
        alert("�Բ�������д��Ա����");
        return false;
    }else{
		return true;
	}
}

function checkpassword(){//����
	var password = document.formUser.password1.value;

	if (checkspace(password) || password.length < 6 || password.length > 20) {
        //document.formUser.password1.focus();
        alert("���볤�Ȳ��ܲ�����գ���6λ��20λ֮�䣬���������룡");
        return false;
    }else{
		return true;
	}

}

function checkconfirm_password(){//ȷ������
	var confirm_password = document.formUser.confirm_password.value;
	var password = document.formUser.password.value;

	if (password != confirm_password) {
        //document.formUser.password.focus();
        document.formUser.password.value = '';
        document.formUser.confirm_password.value = '';
        alert("������������벻ͬ�����������룡");
        return false;
    }else{
		return true;
	}

}

function checkpassword_2(){//��������
	var password_2 = document.formUser.password_2.value;
	if (checkspace(password_2) || password_2.length < 6 || password_2.length > 20) {
        //document.formUser.password_2.focus();
        alert("�������볤�Ȳ��ܲ�����գ���6λ��20λ֮�䣬���������룡");
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
        alert("��������Ķ������벻ͬ�����������룡");
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
            alert("Email��ַ��ʽ����ȷ��");
            //document.formUser.email.focus();
            return false;
        }else{
	        return true;
        }
    }else{
    	alert("����дEmail��ַ!");
    }
}

function checkQuesionSel(){//�ҵ�����
	var QuesionSel = document.formUser.QuesionSel.value;

	if(QuesionSel==null&&QuesionSel==""||QuesionSel.length==0){
		alert("�ҵ����ⲻ��Ϊ��!");
		return false;
	}
	else{

		return true;
	}


}

function checkpasswd_answer(){//�����
	var passwd_answer = document.formUser.passwd_answer.value;

	if (checkspace(passwd_answer)) {
        //document.formUser.passwd_answer.focus();
        alert("�Բ�������д����𰸣�");
        return false;
    }else{
		return true;
	}


}

/**
function checkmb_type(){//��Ա����
	var mb_type = document.formUser.mb_type.value;

	if(checkspace(mb_type)){
		document.formUser.mb_type.focus();
		alert("��ѡ���Ա����!");
		return false;
	}else{
		return true;
	}
}
**/

function checkshopxp_shiname(){//������ʵ����
	var shopxp_shiname = document.formUser.shopxp_shiname.value;

	if(checkspace(shopxp_shiname)){
		//document.formUser.shopxp_shiname.focus();
		alert("����д��ʵ����!");
		return false;
	}
	else{

		return true;
	}


}

function checkMoMNo(){//�������֤��
	var sfz = document.formUser.MoMNo.value;
    if (checkspace(sfz)) {
       // document.formUser.MoMNo.focus();
        alert("�Բ�������д���֤�ţ�");
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
	            alert("�Բ�������д��ȷ�����֤�ţ�");
	            return false;
	        }else{
	        	return true;
	        }
	    }

	    if (document.formUser.MoMNo.value.length != 15 && document.formUser.MoMNo.value.length != 18 && document.formUser.MoMNo.value.length != 10 && document.formUser.MoMNo.value.length != 9 && document.formUser.MoMNo.value.length != 6) {
	      //  document.formUser.MoMNo.focus();
	        alert("��������ȷ�����֤���룡");
	        return false;
	    }else{
	    	return true;
	    }

    }

}
/**
function checkqyname(){//��ҵ����
	var qyname = document.formUser.qyname.value;

	 if (checkspace(qyname)) {
       // document.formUser.qyname.focus();
		alert("����д��ҵ����!");
		return false;
	}
	else{

		return true;
	}


}
**/

/**
function checkqymc(){//��ҵ���
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
function checklianxiren(){//�� ϵ ��
	var lianxiren = document.formUser.lianxiren.value;

	 if (checkspace(lianxiren)) {
        //document.formUser.lianxiren.focus();
		alert("����д��ϵ��!");
		return false;
	}
	else{

		return false;
	}


}

function checkphone(){//��ϵ�绰
	var phone = document.formUser.phone.value;
	var reg=/(^[0-9]{3,4}\-[0-9]{7,8}$)|(^[0-9]{7,8}$)|(^\([0-9]{3,4}\)[0-9]{3,8}$)|(^0{0,1}13[0-9]{9}$)/;

	 if (checkspace(phone)) {
      //  document.formUser.phone.focus();
		alert("����д��ϵ�绰!");
		return false;
	}else if(reg.test(phone)){
	//	document.formUser.phone.focus();
		alert("��ϵ�绰���Ϸ�!");
		return false;
	}else{
		return true;
	}
}
**/
function checktjr(){//�Ƽ����û���
	var tjr = document.formUser.tjr.value;

	 if (checkspace(tjr)) {
      //  document.formUser.tjr.focus();
		alert("����д�Ƽ���!");
		return false;
	}else{
		return true;
	}

}

function checkszSheng(){//����ʡ��
	var szSheng = document.formUser.szSheng.value;

	if(szSheng==null&&szSheng==""||szSheng.length==0){
		alert("��ѡ��ʡ!");
		return false;
	}else{

		return true;
	}

}

function checkaddress(){//��ϸ��ַ
	var address = document.formUser.address.value;

	 if (checkspace(address)) {
        //document.formUser.address.focus();
		alert("����д��ϸ��ַ!");
		return false;

	}else{
		return true;
	}
}

function checkusertel(){//��ϵ�绰
	var usertel = document.formUser.usertel.value;

	if (checkspace(usertel)) {
        //document.formUser.usertel.focus();
		alert("����д��ϵ�绰!");
		return false;

	}else{
		return true;
	}

}

function checkband_name(){//������
	var band_name = document.formUser.band_name.value;

	if (checkspace(band_name)) {
        //document.formUser.band_name.focus();
		alert("����д������!");
		return false;

	}else{
		return true;
	}
}

function checkband_user(){//����
	var band_user = document.formUser.band_user.value;

	if (checkspace(band_user)) {
        //document.formUser.band_user.focus();
		alert("����д����!");
		return false;
	}else{
		return true;
	}
}

function checkband_id(){//�˺�
	var band_id = document.formUser.band_id.value;
	if (checkspace(band_id)) {
        //document.formUser.band_id.focus();
		alert("����д�˺�!");
		return false;
	}else{
		return true;
	}
}

function checkagreement(){//
	var agreement = document.formUser.agreement.value;

	if(agreement==null&&agreement==""||agreement.length==0){
		alert("��ͬ���û�Э�飬�����޷�ע��!");
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