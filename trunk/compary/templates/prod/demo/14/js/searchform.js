$(document).ready(function(){
	if($("#globalsearchform_key")[0].value==""){
		$("#globalsearchform_key")[0].value="�����������ؼ���";
		$("#globalsearchform_key").focus(function(){
			$("#globalsearchform_key")[0].value="";
		});
	}
	if($("#globalsearchform_key")[0].value=="�����������ؼ���"){
		$("#globalsearchform_key").focus(function(){
			$("#globalsearchform_key")[0].value="";
		});
	}
});
//������У��
$(document).ready(function(){

	$("#globalsearchform").submit(function(){
		if($("#globalsearchform_key")[0].value==""){
			alert("�����������ؼ���");
			return false;
		}
		return true;
	});
});