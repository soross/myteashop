function checkusername(){//�û���
	var username = document.formUser.username.value; 
	
	if(username==null&&username==""||username.length==0){

		return false;
	}
	else{
	
		return true;
	}

}

function checkpassword(){//����
	var password = document.formUser.password.value; 
	
	if(password==null&&password==""||password.length==0){

		return false;
	}
	else{
	
		return true;
	}


}

function checkconfirm_password(){//ȷ������
	var confirm_password = document.formUser.confirm_password.value; 
	
	if(confirm_password==null&&confirm_password==""||confirm_password.length==0){

		return false;
	}
	else{
	
		return true;
	}

}

function checkpassword_2(){//��������
	var password_2 = document.formUser.password_2.value; 
	
	if(password_2==null&&password_2==""||password_2.length==0){

		return false;
	}
	else{
	
		return true;
	}
}

function checkemail(){//email
	var email = document.formUser.email.value; 
	
	if(email==null&&email==""||email.length==0){

		return false;
	}
	else{
	
		return true;
	}


}

function checkQuesionSel(){//�ҵ�����
	var QuesionSel = document.formUser.QuesionSel.value; 
	
	if(QuesionSel==null&&QuesionSel==""||QuesionSel.length==0){

		return false;
	}
	else{
	
		return true;
	}


}

function checkpasswd_answer(){//�����
	var passwd_answer = document.formUser.passwd_answer.value; 
	
	if(passwd_answer==null&&passwd_answer==""||passwd_answer.length==0){

		return false;
	}
	else{
	
		return true;
	}


}

function checkmb_type(){//��Ա����
	var mb_type = document.formUser.mb_type.value; 
	
	if(mb_type==null&&mb_type==""||mb_type.length==0){

		return false;
	}
	else{
	
		return true;
	}


}

function checkshopxp_shiname(){//������ʵ����
	var shopxp_shiname = document.formUser.shopxp_shiname.value; 
	
	if(shopxp_shiname==null&&shopxp_shiname==""||shopxp_shiname.length==0){

		return false;
	}
	else{
	
		return true;
	}


}

function checkMoMNo(){//�������֤��
	var MoMNo = document.formUser.MoMNo.value; 
	
	if(MoMNo==null&&MoMNo==""||MoMNo.length==0){

		return false;
	}
	else if (!/^[0-9]{18}$/.test(MoMNo)){
	}
	else{
	
		return true;
	}


}

function checkqyname(){//��ҵ����
	var qyname = document.formUser.qyname.value; 
	
	if(qyname==null&&qyname==""||qyname.length==0){

		rreturn false;
	}
	else{
	
		return true;
	}


}

function checkqymc(){//��ҵ���
	var qymc = document.formUser.qymc.value; 
	
	if(qymc==null&&qymc==""||qymc.length==0){

		return false;
	}
	else{
	
		return false;
	}


}

function checklianxiren(){//�� ϵ ��
	var lianxiren = document.formUser.lianxiren.value; 
	
	if(lianxiren==null&&lianxiren==""||lianxiren.length==0){

		return false;
	}
	else{
	
		return false;
	}


}

function checkphone(){//��ϵ�绰
	var phone = document.formUser.phone.value; 
	var reg=/(^[0-9]{3,4}\-[0-9]{7,8}$)|(^[0-9]{7,8}$)|(^\([0-9]{3,4}\)[0-9]{3,8}$)|(^0{0,1}13[0-9]{9}$)/;
	
	if(phone==null&&phone==""||phone.length==0){

		return false;
	}
	else if(reg.test(phone)){
	
		return false;
	}
	else{
	
		return true;
	}


}

function checktjr(){//�Ƽ����û���
	var tjr = document.formUser.tjr.value; 
	
	if(tjr==null&&tjr==""||tjr.length==0){

		return false;
	}
	else{
	
		return true;
	}

}

function checkszSheng(){//����ʡ��
	var szSheng = document.formUser.szSheng.value; 
	
	if(szSheng==null&&szSheng==""||szSheng.length==0){

		return false;
	}
	else{
	
		return true;
	}

}

function checkaddress(){//��ϸ��ַ
	var address = document.formUser.address.value; 
	
	if(address==null&&address==""||address.length==0){
		
		return false;
		
	}
	else{
	
		return true;
	}

}

function checkusertel(){//��ϵ�绰
	var usertel = document.formUser.usertel.value; 
	
	if(usertel==null&&usertel==""||usertel.length==0){
		
		return false;
		
	}
	else{
	
		return true;
	}

}

function checkband_name(){//������
	var band_name = document.formUser.band_name.value; 
	
	if(band_name==null&&band_name==""||band_name.length==0){
		
		return false;
		
	}
	else{
	
		return true;
	}

}

function checkband_user(){//����
	var band_user = document.formUser.band_user.value; 
	
	if(band_user==null&&band_user==""||band_user.length==0){
		
		return false;
		
	}
	else{
	
		return true;
	}

}

function checkband_id(){//�˺�
	var band_id = document.formUser.band_id.value; 
	
	if(band_id==null&&band_id==""||band_id.length==0){
		
		return false;
		
	}
	else{
	
		return true;
	}

}

function checkagreement(){//
	var agreement = document.formUser.agreement.value; 
	
	if(agreement==null&&agreement==""||agreement.length==0){
		
		return false;
		
	}
	else{
	
		return true;
	}

}

function onformUser(){


	if(checkusername()&&checkpassword()&&checkconfirm_password()&&checkpassword_2()&&checkemail()&&checkQuesionSel()&&
		checkpasswd_answer()&&checkmb_type()&&checkshopxp_shiname()&&checkMoMNo()&&checkqyname()&&checkqymc()&&checklianxiren()&&checkphone()
		&&checktjr()&&checkszSheng()&&checkaddress()&&checkusertel()&&checkband_name()&&checkband_user()&&checkband_id()&&checkagreement()){
	
		return true;
	}
	else{

		return false;
	
	}


}