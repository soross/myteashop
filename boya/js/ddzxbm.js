function checkusername(){

var username = document.registerForm.username.value;

if(username==null&&username==""||username.length==0){
alert('����������');
return false;
}
else{
return true;
}

}


function checkphone(){

var telephone = document.registerForm.telephone.value;

if(telephone==null&&telephone==""||telephone.length==0){
alert('�����������ֻ�����');
return false;
}
else if(telephone.length!=11){
alert('�����������ֻ�����');
return false;
}
else{
return true;
}

}


function checkcerti(){

var certi = document.registerForm.certi.value;

if(certi==null&&certi==""||certi.length==0){
alert('��ѡ��ѧ��');
return false;
}
else{
return true;
}
}

function checkxllb(){

var xllb = document.registerForm.xllb.value;

if(xllb==null&&xllb==""||xllb.length==0){
alert('��ѡ��ѧ�����');
return false;
}
else{
return true;
}
}

function checkbmcc(){

var bmcc = document.registerForm.bmcc.value;
var xllb = document.registerForm.xllb.value;

if(bmcc==null&&bmcc==""||bmcc.length==0){
alert('��ѡ��רҵ');
return false;
}
else if(xllb=='���Ž���'&&bmcc=='��ר'){
alert('���Ž���ֻ��ѡ�񱾿ơ���ר');
return false;
}
else if(xllb=='���˴�ר'&&bmcc!='��ר'){
alert('���˴�רֻ��ѡ���ר');
return false;
}
else if(xllb=='������ר'&&bmcc!='��ר'){
alert('������רֻ��ѡ����ר');
return false;
}
else{
return true;
}
}

function checkzy(){

var zy = document.registerForm.zy.value;

if(zy==null&&zy==""||zy.length==0){
alert('������רҵ');
return false;
}
else{
return true;
}


}


function checkcourse(){

var course = document.registerForm.course.value;

if(course==null&&course==""||course.length==0){
alert('����ѡ�����γ�');
return false;
}
else{
return true;
}

}



function checksumbit(){

if(checkusername()&&checkphone()&&checkcourse()&&checkbmcc()&&checkxllb()&&checkcerti()){
return true;
}
else{
return false;
}

function formrest(){
document.registerForm.username.value="";
document.registerForm.telephone.value="";
document.registerForm.address.value="";
document.registerForm.phone.value="";
document.registerForm.qqcode.value="";
document.registerForm.email.value="";
document.registerForm.money.value="";
return false;
 }

}