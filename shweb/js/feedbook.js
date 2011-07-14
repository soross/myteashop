//全站反馈表单提交
$(document).ready(function(){
	$('#company2').blur(function(){//公司
		if($("#company2").val().length<2){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('公司名称至少2字符!');
			$('div#notice').show();
		}else if($("#company2").val().length>50){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('公司名称不能超过50字符!');
			$('div#notice').show();
		}else{
			$('div#notice').hide();
		}
	});

	$('#addr2').blur(function(){//地址
		if($("#addr2").val().length==0){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('联系地址不能为空!');
			$('div#notice').show();
		}else if($("#addr2").val().length>100){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('联系地址不能超过50字符!');
			$('div#notice').show();
		}else{
			$('div#notice').hide();
		}
	});

	$('#tel2').blur(function(){//判断联系电话输入框
		if($("#tel2").val().length==0){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('联系方式不能为空!');
			$('div#notice').show();
		}else{
			var p1 = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;//固话
			if(p1.test($("#tel2").val())==false){
				if($("#tel2").val().length==11){
					var p2= /^((\(\d{3}\))|(\d{3}\-))?1[358][0-9]\d{8}?$/;//手机
					if(p2.test($("#tel2").val())==false){
						$('div#notice')[0].className='noticediv';
						$('div#notice').html('输入手机号码不正确!');
						$('div#notice').show();
					}else{
						$('div#notice').hide();
					}
				}else{
					$('div#notice')[0].className='noticediv';
					$('div#notice').html('输入电话不正确，格式如：0123-4567890');
					$('div#notice').show();
				}
			}else{
				$('div#notice').hide();
			}
		}
	});

	$('#fax2').blur(function(){//传真
		if($("#fax2").val().length==0){
			$('div#notice').hide();
			tel= true;
		}else{
			var p1 = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;//固话
			if(p1.test($("#fax2").val())==false){
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('输入传真不正确，格式如：0123-4567890');
				$('div#notice').show();
			}else{
				$('div#notice').hide();
			}
		}
	});


	$('#linkman2').blur(function(){//联系人
		if($("#linkman2").val().length>0 && $("#linkman2").val().length<2){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('客户名称为空或大于2字符!');
			$('div#notice').show();
		}else if($("#linkman2").val().length>30){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('客户名称不能超过50字符!');
			$('div#notice').show();
		}else{
			$('div#notice').hide();
		}
	});

	$('#proname2').blur(function(){//产品名称
			if($("#proname2").val().length==0){
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('产品名称不能为空!');
				$('div#notice').show();
			}else if($("#proname2").val().length>50){
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('产品名称不能超过50字符!');
				$('div#notice').show();
			}else{
				/**
				$.ajax({
					type: "POST",
					url:"action/action.php",
					data: "act=checkProdByName&prodName="+escape($.trim($("#proname2").val())),
					success: function(msg){
						if(msg=="ERROR"){
							$("#proname2").val('');
							$('div#notice').html("该产品不存在,请确定!")
							$('div#notice')[0].className='noticediv';
							$('div#notice').show();

							$("#procode2").val('');
							$("#procode2").attr("readonly","");


							return false;
						}else{
							$('div#notice').hide();
							$("#procode2").val(msg);
							$("#procode2").attr("readonly","readonly");
							products_name = true;
							return true;

						}
					}
				});
				**/
			}
		});


	$('#procode2').blur(function(){//产品CODE
			if($("#procode2").val().length==0){
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('产品编码不能为空!');
				$('div#notice').show();
				products_name = false;
			}else if($("#procode2").val().length>50){
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('产品编码不能超过50字符!');
				$('div#notice').show();
				products_name = false;
			}else{
				/**
				$.ajax({
					type: "POST",
					url:"action/action.php",
					data: "act=checkProdByCode&prodCode="+$.trim($("#procode2").val()),
					success: function(msg){
						if(msg=="ERROR"){
							$("#procode2").val('');
							$('div#notice').html("该产品编码不存在或与产品名称不匹配,请确定!")
							$('div#notice')[0].className='noticediv';
							$('div#notice').show();

							$("#proname2").val('');
							$("#proname2").attr("readonly","");

							return false;
						}else{
							$('div#notice').hide();
							$("#proname2").val(msg);
							$("#proname2").attr("readonly","readonly");
							products_name = true;
							return true;
						}
					}
				});
				**/
			}
		});

	$('#num2').blur(function(){//订购数量
   		var p = /^[-\+]?\d+$/;
		if(isNaN($("#num2").val())){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('订购数量错误!');
			$('div#notice').show();
		}else{
			if(parseInt($("#num2").val())>0){
				$('div#notice').hide();
			}else{
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('订购数量错误!');
				$('div#notice').show();
			}
		}
	});

	$('#textarea2').blur(function(){//备注
		if($("#textarea2").text().length>1 && $("#textarea2").text().length<5){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('详细要求为空或不能少于5个字符!');
			$('div#notice').show();
		}else{
			$('div#notice').hide();
		}
	});

	$('#m_code3').blur(function(){//判断验证码输入框
		if($("#m_code3").val().length!=4){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('验证码长度为4字符!');
			$('div#notice').show();
		}else{
			$('div#notice').hide();
			$("#submitButtom").attr("disabled","");
		}
	});


	//----------------------------------------------------------

	/**

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


	$('#textarea2').blur(function(){//详细要求
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
   **/

});