


//反馈表单提交
$(document).ready(function(){
	$('#feedbackform').submit(function(){
		$('#feedbackform').ajaxSubmit({
			target: 'div#notice',
			url: PDV_RP+'feedback/post.php',
			success: function(msg) {
				if(msg=="OK"){
					$('div#notice').hide();
					$().alertwindow("您的留言已提交，我们会尽快和您联系","");
				}else{
					$('div#notice')[0].className='noticediv';
					$('div#notice').show();
					$().setBg();
				}
			}
		});
       return false;

   });
});


//全站反馈表单提交
$(document).ready(function(){
	var	cust_name= false;
	var tel= false;
	var address= false;
	var email= false;
	var company= true;
	var products_name= false;
	var content_req= false;
	var imgCode= false;
	var title= false;
	var content= false;
	var name= true;
	var qq = true;
	$('#cust_name').blur(function(){//输入姓名
		if($("#cust_name").val().length==0){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('客户名称不能为空!');
			$('div#notice').show();
			$().setBg();
			cust_name = false;
		}else if($("#cust_name").val().length>30){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('客户名称不能超过30字符!');
			$('div#notice').show();
			$().setBg();
			cust_name = false;
		}else{
			$('div#notice').hide();
			cust_name = true;
		}
	});

	$('#tel').blur(function(){//判断联系电话输入框
		if($("#tel").val().length==0){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('联系方式不能为空!');
			$('div#notice').show();
			$().setBg();
			tel = false;
		}else{
			var p1 = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;//固话
			if(p1.test($("#tel").val())==false){
				if($("#tel").val().length==11){
					var p2= /^((\(\d{3}\))|(\d{3}\-))?1[358][0-9]\d{8}?$/;//手机
					if(p2.test($("#tel").val())==false){
						$('div#notice')[0].className='noticediv';
						$('div#notice').html('输入手机号码不正确!');
						$('div#notice').show();
						$().setBg();
						tel= false;
					}else{
						$('div#notice').hide();
						tel= true;
					}
				}else{
					$('div#notice')[0].className='noticediv';
					$('div#notice').html('输入电话不正确，格式如：0123-4567890');
					$('div#notice').show();
					$().setBg();
					tel = false;
				}
			}else{
				$('div#notice').hide();
				tel= true;
			}
		}
	});

	$('#address').blur(function(){//地址
		if($("#address").val().length==0){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('联系地址不能为空!');
			$('div#notice').show();
			$().setBg();
			address = false;
		}else if($("#address").val().length>100){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('联系地址不能超过100字符!');
			$('div#notice').show();
			$().setBg();
			address = false;
		}else{
			$('div#notice').hide();
			address = true;
		}
	});

	$('#email').blur(function(){//email
		var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/
		if($("#email").val().length==0){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('电子邮件不能为空!');
			$('div#notice').show();
			$().setBg();
			email = false;
		}else{
			if(myreg.test($("#email").val())==false){
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('电子邮件格式不正确，格式为abc@abc.abc');
				$('div#notice').show();
				$().setBg();
				email= false;
			}else{
				$('div#notice').hide();
				email= true;
			}
		}
	});

	$('#company').blur(function(){//公司
		if($("#company").val().length >0 && $("#company").val().length<5){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('公司名称为空或者大于5字符!');
			$('div#notice').show();
			$().setBg();
			company = false;
		}else if($("#company").val().length>50){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('公司名称不能超过50字符!');
			$('div#notice').show();
			$().setBg();
			company = false;
		}else{
			$('div#notice').hide();
			company = true;
		}
	});

	$('#products_name').blur(function(){//产品名称
		if($("#products_name").val().length==0){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('产品名称不能为空!');
			$('div#notice').show();
			$().setBg();
			products_name = false;
		}else if($("#products_name").val().length>50){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('产品名称不能超过50字符!');
			$('div#notice').show();
			$().setBg();
			products_name = false;
		}else{
			$('div#notice').hide();
			products_name = true;
		}
	});

	$('#content_req').blur(function(){//详细要求
		if($("#content_req").text().length<50){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('详细要求不能少于50个字符!');
			$('div#notice').show();
			$().setBg();
			content_req = false;
		}else{
			$('div#notice').hide();
			content_req = true;
		}
	});

	//-------------------------------------------------------
	$('#title').blur(function(){//判断反馈主题输入框
		if($("#title").val().length<5){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('反馈主题不能少于5字符!');
			$('div#notice').show();
			$().setBg();
			title = false;
		}else {
			$('div#notice').hide();
			title = true;
		}
	});
	$('#content_send').blur(function(){//反馈内容
		if($("#content_send").text().length<10){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('反馈内容不能少于10个字符!');
			$('div#notice').show();
			$().setBg();
			content = false;
		}else{
			$('div#notice').hide();
			content = true;
		}
	});

	$('#name').blur(function(){//联系人
		if($("#name").val().length >0 && $("#company").val().length<2){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('公司名称为空或者大于2字符!');
			$('div#notice').show();
			$().setBg();
			name = false;
		}else if($("#name").val().length>30){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('公司名称不能超过30字符!');
			$('div#notice').show();
			$().setBg();
			name = false;
		}else{
			$('div#notice').hide();
			name = true;
		}
	});
	$('#qq').blur(function(){//qq/msn
		var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/
		var qqreg = /^[0-9]{5,11}$/;
		if($("#qq").val().length>4 && $("#qq").val().length<12 && qqreg.test($("#qq").val())==true){
			$('div#notice').hide();
			qq= true;
		}else{
			if($("#qq").val().length>0 && myreg.test($("#qq").val())==false){
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('QQ/MSN格式不正确!');
				$('div#notice').show();
				$().setBg();
				qq= false;
			}else{
				$('div#notice').hide();
				qq= true;
			}
		}
	});

	$('#imgCode').blur(function(){//判断验证码输入框
		if($("#imgCode").val().length!=4){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('验证码长度为4字符!');
			$('div#notice').show();
			$().setBg();
			imgCode = false;
		}else{
			$('div#notice').hide();
			imgCode = true;
		}
	});

	$('#submitform').submit(function(){
		//alert((cust_name&&tel&&address&&email&&company&&products_name&&content_req&&imgCode) ||
		//	(title&&content&&name&&qq&&tel&&company&&imgCode));
		if((cust_name&&tel&&address&&email&&company&&products_name&&content_req&&imgCode) ||
			(title&&content&&name&&qq&&tel&&company&&imgCode)){
			//alert(PDV_RP);
			$('#submitform').ajaxSubmit({
				target: 'div#notice',
				url: 'action/post.php',
				success: function(msg) {
					//alert(msg);
					if(msg=="OK"){
						$('div#notice').hide();
						$().alertwindow("您的留言已提交，我们会尽快和您联系","");
						document.getElementById("Submit").disabled="disabled";
						//$("#Submit").remove();
					}else{
						$('div#notice').show();
						//alert(msg);
					}
				}
			});
		}else{
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('信息填写不完整,带*号的为必填项!');
			$('div#notice').show();
			$().setBg();
		}
       return false;
   });


   //全站反馈表单提交
	$(document).ready(function(){
		$('#feedbacksmallform').submit(function(){
			$('#feedbacksmallform').ajaxSubmit({
				target: 'div#notice',
				url: 'action/post.php',
				success: function(msg) {
					//alert(msg);
					if(msg=="OK"){
						$('div#notice').hide();
						$().alertwindow("您的留言已提交，我们会尽快和您联系","");
						document.getElementById("Submit").disabled="disabled";
						//$("#Submit").remove();
					}else{
						$('div#notice').show();
						//alert(msg);
					}
				}
			});
		});
		return false;
	});

});


