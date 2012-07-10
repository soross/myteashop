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
alert('请重新输入手机号码');
return false;
}
else{
return true;
}

}


function checkcerti(){

var certi = document.registerForm.certi.value;

if(certi==null&&certi==""||certi.length==0){
alert('请选择学历');
return false;
}
else{
return true;
}
}

function checkxllb(){

var xllb = document.registerForm.xllb.value;

if(xllb==null&&xllb==""||xllb.length==0){
alert('请选择学历类别');
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
alert('请选择专业');
return false;
}
else if(xllb=='开放教育'&&bmcc=='中专'){
alert('开放教育只能选择本科、大专');
return false;
}
else if(xllb=='成人大专'&&bmcc!='大专'){
alert('成人大专只能选择大专');
return false;
}
else if(xllb=='成人中专'&&bmcc!='中专'){
alert('成人中专只能选择中专');
return false;
}
else{
return true;
}
}

function checkzy(){

var zy = document.registerForm.zy.value;

if(zy==null&&zy==""||zy.length==0){
alert('请输入专业');
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