$(document).ready(function(){
	$("#username").blur(function(){
		if(($.trim($("#username").val())).length <6){
			$('div#notice').html("用户名至少6位!")
			$('div#notice')[0].className='noticediv';
			$('div#notice').show();
			$().setBg();
			$("#username").val('');
			//$("#username").focus();
			//$('#username').remove();
			return false;
		}else{
			$('div#notice').hide();
			return true;
		}
	});
	$("#password").blur(function(){
		if(($.trim($("#password").val())).length <6){
			$('div#notice').html("密码至少6位!")
			$('div#notice')[0].className='noticediv';
			$('div#notice').show();
			$().setBg();
			$("#password").val('');
			//$("#password").focus();
			//$('#password').remove();
			return false;
		}else{
			$('div#notice').hide();
			return true;
		}
	});

	$("#code").blur(function(){
		if(($.trim($("#code").val())).length !=4 ){
			$('div#notice').html("验证码为4位!")
			$('div#notice')[0].className='noticediv';
			$('div#notice').show();
			$().setBg();
			$("#code").val('');
			//$("#code").focus();
			return false;
		}else{
			$('div#notice').hide();
			$.ajax({
			type: "POST",
			url:"action/login.php",
			data: "act=checkRandomCode&randomCode="+($.trim($("#code").val())),
			success: function(msg){
				if(msg=="OK"){
					$('div#notice').hide();
					return true;
				}else{
					$("#code").val('');
					$('div#notice').html("验证码错误!")
					$('div#notice')[0].className='noticediv';
					$('div#notice').show();
					$().setBg();
					//$("#code").focus();
					//$('#code').remove();
					return false;
				}
			}
			});
		}
	});

	$('#memberLogin').submit(function(){
		$('#memberLogin').ajaxSubmit({
			target: 'div#notice',
			url: 'action/login.php',
			success: function(msg) {
				//alert(msg);
				if(msg=="OK"){
					$('div#notice').hide();
					location.href='member.php';
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
