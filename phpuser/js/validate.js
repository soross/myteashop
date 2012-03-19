function checkForm(){

	var d_owner=$(".d_owner").attr("value");
	var l=d_owner.length;
	if( l<2 || l>128 || !CheckIsEnglish(d_owner)){
		$(".d_owner").focus();
		alert("���������߱�����Ӣ���ҳ���Ϊ2-128���ַ�");
		return false;
	}
	var d_owner_ln=$(".d_owner_ln").attr("value");
	var l=d_owner_ln.length;
	if(!CheckIsEnglish(d_owner_ln) || l<2){
		$(".d_owner_ln").focus();
		alert("��ϵ��(��)������Ӣ�ģ�����Ҫ����2���ַ�");
		return false;
	}
	var d_owner_fn=$(".d_owner_fn").attr("value");
	var l=d_owner_fn.length;
	if(!CheckIsEnglish(d_owner_fn) || l<2){
		$(".d_owner_fn").focus();
		alert("��ϵ��(��)������Ӣ�ģ�����Ҫ����2���ַ�");
		return false;
	}

	var d_owner_province=$(".d_owner_province").attr("value");
	var l=d_owner_province.length;
	if(!CheckIsEnglish(d_owner_province) || l<2 ){
		$(".d_owner_province").focus();
		alert("ʡ�ݱ�����Ӣ�ģ�����Ҫ����2����");
		return false;
	}

	var d_owner_city=$(".d_owner_city").attr("value");
	var l=d_owner_city.length;
	if(!CheckIsEnglish(d_owner_city) || l<2){
		$(".d_owner_city").focus();
		alert("���б�����Ӣ�ģ�����Ҫ����2����");
		return false;
	}
	
	var d_owner_street=$(".d_owner_street").attr("value");
	var l=d_owner_street.length;
	if(!CheckIsEnglish(d_owner_street) || l<4 || l>128){
		$(".d_owner_street").focus();
		alert("�ֵ���ַ������Ӣ�ģ�����Ϊ4-128����");
		return false;
	}
	
	var d_owner_zip=$(".d_owner_zip").attr("value");
	var l=d_owner_zip.length;
	if(!(/^\d{6}$/.test(d_owner_zip))){
		$(".d_owner_zip").focus();
		alert("�ʱ���������֣�����Ϊ������");
		return false;
	}

	var d_owner_telC=$(".d_owner_telC").attr("value");
	var l=d_owner_telC.length;
	if(!(/^\d{1,3}$/.test(d_owner_telC))){
		$(".d_owner_telC").focus();
		alert("��ϵ�绰���������֣�����Ϊ����������");
		return false;
	}

	var d_owner_telA=$(".d_owner_telA").attr("value");
	var l=d_owner_telA.length;
	if(!(/^\d{0}|\d{3,5}$/.test(d_owner_telA))){
		$(".d_owner_telA").focus();
		alert("��ϵ�˵绰�����ţ��ֻ�����");
		return false;
	}
	var d_owner_telN=$(".d_owner_telN").attr("value");
	var l=d_owner_telN.length;
	if(!(/^\d{7,8}|\d{11}$/.test(d_owner_telN))){
		$(".d_owner_telN").focus();
		alert("��ϵ�˵绰���������֣��绰7-8λ���ֻ�11λ");
		return false;
	}
	var d_owner_telE=$(".d_owner_telE").attr("value");
	var l=d_owner_telE.length;
	if(!(/^\d{0,4}$/.test(d_owner_telE))){
		$(".d_owner_telE").focus();
		alert("��ϵ�˵绰���������֣�����Ϊ0��4����");
		return false;
	}

	var d_owner_faxC=$(".d_owner_faxC").attr("value");
	var l=d_owner_faxC.length;
	if(!(/^\d{1,3}$/.test(d_owner_faxC))){
		$(".d_owner_faxC").focus();
		alert("������������֣�����Ϊ����������");
		return false;
	}
	var d_owner_faxA=$(".d_owner_faxA").attr("value");
	var l=d_owner_faxA.length;
	if(!(/^\d{0}|\d{3,5}$/.test(d_owner_faxA))){
		$(".d_owner_faxA").focus();
		alert("���������ţ��ֻ�����");
		return false;
	}
	var d_owner_faxN=$(".d_owner_faxN").attr("value");
	var l=d_owner_faxN.length;
	if(!(/^\d{7,8}|\d{11}$/.test(d_owner_faxN))){
		$(".d_owner_faxN").focus();
		alert("������������֣��绰7-8λ���ֻ�11λ");
		return false;
	}
	var d_owner_faxE=$(".d_owner_faxE").attr("value");
	var l=d_owner_faxE.length;	
	if(!(/^\d{0,4}$/.test(d_owner_faxE))){
		$(".d_owner_faxE").focus();
		alert("������������֣�����Ϊ0��4����");
		return false;
	}
	if((/^\d{11}$/.test(d_owner_telN))){
		if(d_owner_telA!=""){
			$(".d_owner_telA").focus();
			alert("��ϵ�˵绰Ϊ�ֻ���ʱ�������벻Ҫ��д��");
			return false;
		}
	}
	if((/^\d{11}$/.test(d_owner_faxN))){
		if(d_owner_faxA!=""){
			$(".d_owner_faxA").focus();
			alert("��ϵ�˴���Ϊ�ֻ���ʱ�������벻Ҫ��д��");
			return false;
		}
	}

	var d_owner_email=$(".d_owner_email").attr("value");
    var myreg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
          if(!myreg.test(d_owner_email))
		  {
			 $(".d_owner_email").focus();
			 alert("��������Ч��E_mail!");
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
