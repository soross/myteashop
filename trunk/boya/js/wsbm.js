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
alert('�����������ֻ�����111');
}
else{
return true;
}

}

function checkqqcode(){

var qqcode = document.registerForm.qqcode.value;

if(qqcode==null&&qqcode==""||qqcode.length==0){
alert('������qq����');
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

function checkamount(){

var amount = document.registerForm.amount.value;

if(amount==null&&amount==""||amount.length==0){
alert('����ѡ������');
return false;
}
else{
return true;
}

}

function checksumbit(){

if(checkusername()&&checkphone()&&checkqqcode()&&checkcourse()&&checkamount()){
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