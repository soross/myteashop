function checkusername(){

var username = document.registerForm.username.value;

if(username==null&&username==""||username.length==0){
alert('请输入姓名');
return false;
}
else{
return true;
}

}


function checkphone(){

var telephone = document.registerForm.telephone.value;

if(telephone==null&&telephone==""||telephone.length==0){
alert('请重新输入手机号码');
return false;
}
else if(telephone.length!=11){
alert('请重新输入手机号码111');
}
else{
return true;
}

}

function checkqqcode(){

var qqcode = document.registerForm.qqcode.value;

if(qqcode==null&&qqcode==""||qqcode.length==0){
alert('请输入qq号码');
return false;
}
else{
return true;
}


}

function checkcourse(){

var course = document.registerForm.course.value;

if(course==null&&course==""||course.length==0){
alert('必须选择报名课程');
return false;
}
else{
return true;
}

}

function checkamount(){

var amount = document.registerForm.amount.value;

if(amount==null&&amount==""||amount.length==0){
alert('必须选择人数');
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