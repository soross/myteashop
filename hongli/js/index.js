<!-- �ҵ����Ͽ�ʼ -->

var realname = document.getElementById("realname").value; //��������
var idcard = document.getElementById("idcard").value; //���֤����
var phone = document.getElementById("phone").value;//�̻�/�ֻ�
var szSheng = document.getElementById("szSheng").value;//����ʡ��
var address = document.getElementById("address").value;//��ϸ��ַ
var bankName = document.getElementById("bankName").value;//������
var E-mail = document.getElementById("E-mail").value;//E-mail
var bankUser = document.getElementById("bankUser").value;//������
var bankCode = document.getElementById("bankCode").value;//�ʺ�
var password = document.getElementById("password").value;//��������
var random = document.getElementById("random").value;//��֤��



function checkrealname(){//��������
	var realname = document.procatshopform.realname.value;
	if(realname==null&&realname==""||realname.length==0){
		
		return false;
	}
	else{
		
		return true;
	}

}

function checkidcard(){//���֤����
	var idcard = document.procatshopform.idcard.value;
	if(idcard==null||idcard==""||idcard.length==0){
	
		return false;
	}
	else if(!/^[0-9]{18}$/.test(idcard)){
	
		return false;
	}
	else{
		
		return true;
	}

}

function checkphone(){//�̻�/�ֻ�
	var phone = document.procatshopform.phone.value;
	if(phone==null||phone==""||phone.length==0){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkszSheng(){//����ʡ��
	var szSheng = document.procatshopform.szSheng.value;
	if(phone==null||phone==""||phone.length==0){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkaddress(){//��ϸ��ַ
	var address = document.procatshopform.address.value;
	if(address==null||address==""||address.length==0){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkbankName(){//������
	var bankName = document.procatshopform.bankName.value;
	if(bankName==null||bankName==""||bankName.length==0){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkE-mail(){//E-mail
	var E-mail = document.procatshopform.E-mail.value;
	if(E-mail==null||E-mail==""||E-mail.length==0){
		
		return false;
	}
	else if(!/^[A-Za-z0-9]+@([_a-z0-9]+\.)+[a-z0-9]{2,3}$/.test(E-mail)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkbankUser(){//������
	var bankUser = document.procatshopform.bankUser.value;
	if(bankUser==null||bankUser==""||bankUser.length==0){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkbankCode(){//�ʺ�
	var bankCode = document.procatshopform.bankCode.value;
	if(bankCode==null||bankCode==""||bankCode.length==0){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpassword(){//��������
	var password = document.procatshopform.password.value;
	if(password==null||password==""||password.length==0){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom(){//��֤��
	var random = document.procatshopform.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onprocatshopform(){

	if(checkrealname()&&checkidcard()&&checkphone()&&checkszSheng()&&checkaddress()&&checkbankName()&&checkE-mail()
		&&checkbankUser()&&checkbankCode()&&checkpassword()&&checkrandom()){
	
	
		return true;
	}
	else{
	
	
		return false;
	}



}


<!-- �ҵ����Ͻ��� -->


<!-- ��Ҫ�ֺ쿪ʼ -->

var no = document.getElementById("no").value;//��������
var password = document.getElementById("password").value;//����������
var random = document.getElementById("random").value;//��֤��

function checkno(){//��������
	var no = document.fhks.no.value;
	if(no==null||no==""||no.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpasswordhlk(){//����������
	var password = document.fhks.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom1(){//��֤��
	var random = document.fhks.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}


function onfhks(){

	if(checkno()&&checkpasswordhlk()&&checkrandom1()){
	
		return true;
	}
	else{
	
		return false;
	}


}




<!-- ��Ҫ�ֺ���� -->

<!-- �ҵĻ��ֿ�ʼ -->

var no = document.getElementById("no").value;//��������
var password = document.getElementById("password").value;//����������
var random = document.getElementById("random").value;//��֤��

function checkno1(){//��������
	var no = document.wyjfks.no.value;
	if(no==null||no==""||no.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpasswordglk1(){//����������
	var password = document.wyjfks.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom2(){//��֤��
	var random = document.wyjfks.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onwyjfks(){

	if(checkno1()&&checkpasswordglk1&&checkrandom2()){
	
		return true;
	}
	else{
	
		return false;
	}

}




<!-- ��Ҫ���ֽ��� -->

<!-- �ҵĻ��ֿ�ʼ -->

var hongli = document.getElementById("hongli").value;//�ֺ�Ȩ��
var password = document.getElementById("password").value;//��������

function checkhongli(){//�ֺ�Ȩ��
	var hongli = document.wdjfks.hongli.value;//�ֺ�Ȩ��
	if(hongli==null||hongli==""||hongli.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}


function checkpasswordsecond(){//��������
	var password = document.wdjfks.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onwdjfks(){

	if(checkhongli()&&checkpasswordsecond()){
	
		return true;
	}
	else{
	
		return false;
	}

}


<!-- �ҵĻ��ֽ��� -->

<!-- ��Ҫ���ֿ�ʼ -->
var num = document.wytx.num.value;//���ֽ��
var password = document.getElementById("password").value;//��������
var random = document.getElementById("random").value;//��֤��

function checknum(){//���ֽ��
	var num = document.wytx.num.value;
	if(num==null||num==""||num.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpasswordsecond1(){//��������
	var password = document.wytx.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}


function checkrandom3(){//��֤��
	var random = document.wytx.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onwytx(){

	if(checknum()&&checkpasswordsecond1()&&checkrandom3()){
	
		return true;
	}
	else{
	
		return false;
	}

}


<!-- ��Ҫ���ֽ��� -->


<!-- ��Ҫת�˿�ʼ -->
var type = document.getElementById("type").value;//ת������
var username = document.getElementById("username").value;//ת���û���
var num = document.getElementById("num").value;//ת������
var password = document.getElementById("password").value;//��������

function checktype(){//ת������
	var type = document.wyzz.type.value;
	if(type==null||type==""||type.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkusername(){//ת���û���
	var username = document.wyzz.username.value;
	if(username==null||username==""||username.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checknum1(){//ת������
	var num = document.wyzz.num.value;//ת������
	if(num==null||num==""||num.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}


function checkpasswordscond2(){//��������
	var password = document.wyzz.password.value;//��������
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}


function onwyzz(){

	if(checktype()&&checkusername()&&checknum1()&&checkpasswordscond2()){
	
		return true;
	}
	else{
	
		return false;
	}

}


<!-- ��Ҫת�˽��� -->


<!-- ���ⷴ����ʼ -->
var title = document.getElementById("title").value;//����
var content = document.getElementById("content").value;//����
var random = document.getElementById("random").value;//��֤��

function checktitle(){//����
	var title = document.wtfh.title.value;
	if(title==null||title==""||title.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkcontent(){//����
	var content = document.wtfh.content.value;
	if(content==null||content==""||content.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom4(){//��֤��
	var random = document.wtfh.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}


function onwtfh(){

	if(checktitle()&&checkcontent()&&checkrandom4()){
	
		return true;
	}
	else{
	
		return false;
	}


}



<!-- ���ⷴ������ -->



<!-- �����޸Ŀ�ʼ -->
var oldpassword = document.getElementById("oldpassword").value;//������
var password = document.getElementById("password").value;//������
var password2 = document.getElementById("password2").value;//ȷ������
var random = document.getElementById("random").value;//��֤��

function checkoldpassword(){//������
	var oldpassword = document.mmxg.oldpassword.value;
	if(oldpassword==null||oldpassword==""||oldpassword.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checknewpassword(){//������
	var password = document.mmxg.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpassword2(){//ȷ������
	var password2 = document.mmxg.password2.value;
	if(password2==null||password2==""||password2.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom5(){//��֤��
	var random = document.mmxg.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onmmxg(){

	if(checkoldpassword()&&checknewpassword()&&checkpassword2()&&checkrandom5){
	
		return true;
	}
	else{
	
		return false;
	}

}



----------------------------------------------------------------------
var secondpassword = document.getElementById("secondpassword").value;//��������
var password = document.getElementById("password").value;//������
var password2 = document.getElementById("password2").value;//ȷ������
var random = document.getElementById("random").value;//��֤��

function checksecondpassword(){//��������
	var secondpassword = document.mmxg1.secondpassword.value;
	if(secondpassword==null||secondpassword==""||secondpassword.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checknewpassword1(){//������
	var password = document.mmxg1.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpassword2(){//ȷ������
	var password2 = document.mmxg1.password2.value;
	if(password2==null||password2==""||password2.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom6(){//��֤��
	var random = document.mmxg1.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}



function onmmxg1(){

	if(checksecondpassword()&&checknewpassword1()&&checkpassword2()&&checkrandom6()){
	
		return true;
	}
	else{
	
		return false;
	}

}



--------------------------------------------------------------------------
var answer = document.getElementById("answer").value;//��
var password = document.getElementById("password").value;//�¶�������
var password2 = document.getElementById("password2").value;//ȷ����������
var random = document.getElementById("random").value;//��֤��


function checksanswer(){//��
	var answer = document.mmxg2.answer.value;
	if(answer==null||answer==""||answer.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checknewpassword2(){//������
	var password = document.mmxg2.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpassword2(){//ȷ������
	var password2 = document.mmxg2.password2.value;
	if(password2==null||password2==""||password2.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom7(){//��֤��
	var random = document.mmxg2.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onmmxg2(){

	if(checksanswer()&&checknewpassword2()&&checkpassword2()&&checkrandom7()){
	
		return true;
	}
	else{
	
		return false;
	}


}


--------------------------------------------------------------------------

<!-- �����޸Ľ��� -->


<!-- ��������ƽ̨ -->


var sj_name = document.getElementById("sj_name").value;//ע���̼�����
var sj_type = document.getElementById("sj_type").value;//�̼�����
var phone = document.getElementById("phone").value;//�̻�/�ֻ�
var szSheng = document.getElementById("szSheng").value;//����ʡ��
var address = document.getElementById("address").value;//��ϸ��ַ
var link_man = document.getElementById("link_man").value;//����������
var email = document.getElementById("email").value;//E-mail
var password = document.getElementById("password").value;//��������
var random = document.getElementById("random").value;//��֤��


function checksj_name(){//ע���̼�����
	var sj_name = document.sjform.sj_name.value;//ע���̼�����
	if(sj_name==null||sj_name==""||sj_name.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checksj_type(){//��֤��
	var sj_type = document.sjform.sj_type.value;//�̼�����
	if(sj_type==null||sj_type==""||sj_type.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkphone1(){//�̻�/�ֻ�
	var phone = document.sjform.phone.value;
	if(phone==null||phone==""||phone.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkszSheng1(){//����ʡ��
	var szSheng = document.sjform.szSheng.value;
	if(szSheng==null||szSheng==""||szSheng.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkaddress1(){//��ϸ��ַ
	var address = document.sjform.address.value;
	if(address==null||address==""||address.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checklink_man(){//����������
	var link_man = document.sjform.link_man.value;
	if(link_man==null||link_man==""||link_man.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkemail(){//E-mail
	var email = document.sjform.email.value;
	if(email==null||email==""||email.length==0)){
		
		return false;
	}
	else if(!/^[A-Za-z0-9]+@([_a-z0-9]+\.)+[a-z0-9]{2,3}$/.test(email)){
	}
	else{
		
		return true;
	}
}

function checkpasswordsecond3(){//��������
	var password = document.sjform.password.value;
	if(password==null||password==""||password.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom8(){//��֤��
	var random = document.sjform.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onsjform(){

	if(checksj_name()&&checksj_type()&&checkphone1()&&checkszSheng1()&&checkaddress1()&&checklink_man()&&checkemail()
		&&checkpasswordsecond3()&&checkrandom8()){
	
		return true;
	}
	else{
	
		return false;
	}

}



<!-- �������� ���� -->



<!-- ����ƽ̨ -->

var mc_name = document.getElementById("mc_name").value;//��Ʒ����
var type = document.getElementById("type").value;//��Ʒ����
var mc_desc = document.getElementById("mc_desc").value;//����
var pic_file = document.getElementById("pic_file").value;//ͼƬ
var price = document.getElementById("price").value;//����
var price_type = document.getElementById("price_type").value;//����
var count = document.getElementById("count").value;//����
var random = document.getElementById("random").value;//��֤��

function checkmc_name(){//��Ʒ����
	var mc_name = document.wspt.mc_name.value;
	if(mc_name==null||mc_name==""||mc_name.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checktype(){//��Ʒ����
	var type = document.wspt.type.value;
	if(type==null||type==""||type.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkmc_desc(){//����
	var mc_desc = document.wspt.mc_desc.value;
	if(mc_desc==null||mc_desc==""||mc_desc.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkpic_file(){//ͼƬ
	var pic_file = document.wspt.pic_file.value;
	if(pic_file==null||pic_file==""||pic_file.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkprice(){//����
	var price = document.wspt.price.value;
	if(price==null||price==""||price.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkprice_type(){//����
	var price_type = document.wspt.price_type.value;
	if(price_type==null||price_type==""||price_type.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkcount(){//����
	var count = document.wspt.count.value;
	if(count==null||count==""||count.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function checkrandom9(){//��֤��
	var random = document.wspt.random.value;
	if(random==null||random==""||random.length==0)){
		
		return false;
	}
	else{
		
		return true;
	}
}

function onwspt(){

	if(checkmc_name()&&checktype()&&checkmc_desc()&&checkpic_file()&&checkprice()&&checkprice_type()&&checkcount()&&checkrandom9()){
	
		return true;
	}
	else{
	
		return false;
	}
}

<!-- ����ƽ̨ ���� -->
