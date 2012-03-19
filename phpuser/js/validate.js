function checkForm(){

	var d_owner=$(".d_owner").attr("value");
	var l=d_owner.length;
	if( l<2 || l>128 || !CheckIsEnglish(d_owner)){
		$(".d_owner").focus();
		alert("域名所有者必须是英文且长度为2-128个字符");
		return false;
	}
	var d_owner_ln=$(".d_owner_ln").attr("value");
	var l=d_owner_ln.length;
	if(!CheckIsEnglish(d_owner_ln) || l<2){
		$(".d_owner_ln").focus();
		alert("联系人(姓)必须是英文，长度要大于2个字符");
		return false;
	}
	var d_owner_fn=$(".d_owner_fn").attr("value");
	var l=d_owner_fn.length;
	if(!CheckIsEnglish(d_owner_fn) || l<2){
		$(".d_owner_fn").focus();
		alert("联系人(名)必须是英文，长度要大于2个字符");
		return false;
	}

	var d_owner_province=$(".d_owner_province").attr("value");
	var l=d_owner_province.length;
	if(!CheckIsEnglish(d_owner_province) || l<2 ){
		$(".d_owner_province").focus();
		alert("省份必须是英文，长度要大于2个字");
		return false;
	}

	var d_owner_city=$(".d_owner_city").attr("value");
	var l=d_owner_city.length;
	if(!CheckIsEnglish(d_owner_city) || l<2){
		$(".d_owner_city").focus();
		alert("城市必须是英文，长度要大于2个字");
		return false;
	}
	
	var d_owner_street=$(".d_owner_street").attr("value");
	var l=d_owner_street.length;
	if(!CheckIsEnglish(d_owner_street) || l<4 || l>128){
		$(".d_owner_street").focus();
		alert("街道地址必须是英文，长度为4-128个字");
		return false;
	}
	
	var d_owner_zip=$(".d_owner_zip").attr("value");
	var l=d_owner_zip.length;
	if(!(/^\d{6}$/.test(d_owner_zip))){
		$(".d_owner_zip").focus();
		alert("邮编必须是数字，长度为６个字");
		return false;
	}

	var d_owner_telC=$(".d_owner_telC").attr("value");
	var l=d_owner_telC.length;
	if(!(/^\d{1,3}$/.test(d_owner_telC))){
		$(".d_owner_telC").focus();
		alert("联系电话必须是数字，长度为１－３个字");
		return false;
	}

	var d_owner_telA=$(".d_owner_telA").attr("value");
	var l=d_owner_telA.length;
	if(!(/^\d{0}|\d{3,5}$/.test(d_owner_telA))){
		$(".d_owner_telA").focus();
		alert("联系人电话填区号，手机不填");
		return false;
	}
	var d_owner_telN=$(".d_owner_telN").attr("value");
	var l=d_owner_telN.length;
	if(!(/^\d{7,8}|\d{11}$/.test(d_owner_telN))){
		$(".d_owner_telN").focus();
		alert("联系人电话必须是数字，电话7-8位，手机11位");
		return false;
	}
	var d_owner_telE=$(".d_owner_telE").attr("value");
	var l=d_owner_telE.length;
	if(!(/^\d{0,4}$/.test(d_owner_telE))){
		$(".d_owner_telE").focus();
		alert("联系人电话必须是数字，长度为0－4个字");
		return false;
	}

	var d_owner_faxC=$(".d_owner_faxC").attr("value");
	var l=d_owner_faxC.length;
	if(!(/^\d{1,3}$/.test(d_owner_faxC))){
		$(".d_owner_faxC").focus();
		alert("传真必须是数字，长度为１－３个字");
		return false;
	}
	var d_owner_faxA=$(".d_owner_faxA").attr("value");
	var l=d_owner_faxA.length;
	if(!(/^\d{0}|\d{3,5}$/.test(d_owner_faxA))){
		$(".d_owner_faxA").focus();
		alert("传真填区号，手机不填");
		return false;
	}
	var d_owner_faxN=$(".d_owner_faxN").attr("value");
	var l=d_owner_faxN.length;
	if(!(/^\d{7,8}|\d{11}$/.test(d_owner_faxN))){
		$(".d_owner_faxN").focus();
		alert("传真必须是数字，电话7-8位，手机11位");
		return false;
	}
	var d_owner_faxE=$(".d_owner_faxE").attr("value");
	var l=d_owner_faxE.length;	
	if(!(/^\d{0,4}$/.test(d_owner_faxE))){
		$(".d_owner_faxE").focus();
		alert("传真必须是数字，长度为0－4个字");
		return false;
	}
	if((/^\d{11}$/.test(d_owner_telN))){
		if(d_owner_telA!=""){
			$(".d_owner_telA").focus();
			alert("联系人电话为手机号时，区号请不要填写！");
			return false;
		}
	}
	if((/^\d{11}$/.test(d_owner_faxN))){
		if(d_owner_faxA!=""){
			$(".d_owner_faxA").focus();
			alert("联系人传真为手机号时，区号请不要填写！");
			return false;
		}
	}

	var d_owner_email=$(".d_owner_email").attr("value");
    var myreg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
          if(!myreg.test(d_owner_email))
		  {
			 $(".d_owner_email").focus();
			 alert("请输入有效的E_mail!");
             return false;
          }

}

function CheckIsEnglish( str )
{
var i;
bString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 -.,()@!'";
for( i = 0; i < str.length; i ++ )
{
if (bString.indexOf(str.substring(i,i+1))==-1)
return false;
}
return true;
} 
