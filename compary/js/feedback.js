


//�������ύ
$(document).ready(function(){
	$('#feedbackform').submit(function(){
		$('#feedbackform').ajaxSubmit({
			target: 'div#notice',
			url: PDV_RP+'feedback/post.php',
			success: function(msg) {
				if(msg=="OK"){
					$('div#notice').hide();
					$().alertwindow("�����������ύ�����ǻᾡ�������ϵ","");
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


//ȫվ�������ύ
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
	$('#cust_name').blur(function(){//��������
		if($("#cust_name").val().length==0){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('�ͻ����Ʋ���Ϊ��!');
			$('div#notice').show();
			$().setBg();
			cust_name = false;
		}else if($("#cust_name").val().length>30){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('�ͻ����Ʋ��ܳ���30�ַ�!');
			$('div#notice').show();
			$().setBg();
			cust_name = false;
		}else{
			$('div#notice').hide();
			cust_name = true;
		}
	});

	$('#tel').blur(function(){//�ж���ϵ�绰�����
		if($("#tel").val().length==0){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��ϵ��ʽ����Ϊ��!');
			$('div#notice').show();
			$().setBg();
			tel = false;
		}else{
			var p1 = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;//�̻�
			if(p1.test($("#tel").val())==false){
				if($("#tel").val().length==11){
					var p2= /^((\(\d{3}\))|(\d{3}\-))?1[358][0-9]\d{8}?$/;//�ֻ�
					if(p2.test($("#tel").val())==false){
						$('div#notice')[0].className='noticediv';
						$('div#notice').html('�����ֻ����벻��ȷ!');
						$('div#notice').show();
						$().setBg();
						tel= false;
					}else{
						$('div#notice').hide();
						tel= true;
					}
				}else{
					$('div#notice')[0].className='noticediv';
					$('div#notice').html('����绰����ȷ����ʽ�磺0123-4567890');
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

	$('#address').blur(function(){//��ַ
		if($("#address").val().length==0){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��ϵ��ַ����Ϊ��!');
			$('div#notice').show();
			$().setBg();
			address = false;
		}else if($("#address").val().length>100){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��ϵ��ַ���ܳ���100�ַ�!');
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
			$('div#notice').html('�����ʼ�����Ϊ��!');
			$('div#notice').show();
			$().setBg();
			email = false;
		}else{
			if(myreg.test($("#email").val())==false){
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('�����ʼ���ʽ����ȷ����ʽΪabc@abc.abc');
				$('div#notice').show();
				$().setBg();
				email= false;
			}else{
				$('div#notice').hide();
				email= true;
			}
		}
	});

	$('#company').blur(function(){//��˾
		if($("#company").val().length >0 && $("#company").val().length<5){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��˾����Ϊ�ջ��ߴ���5�ַ�!');
			$('div#notice').show();
			$().setBg();
			company = false;
		}else if($("#company").val().length>50){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��˾���Ʋ��ܳ���50�ַ�!');
			$('div#notice').show();
			$().setBg();
			company = false;
		}else{
			$('div#notice').hide();
			company = true;
		}
	});

	$('#products_name').blur(function(){//��Ʒ����
		if($("#products_name").val().length==0){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��Ʒ���Ʋ���Ϊ��!');
			$('div#notice').show();
			$().setBg();
			products_name = false;
		}else if($("#products_name").val().length>50){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��Ʒ���Ʋ��ܳ���50�ַ�!');
			$('div#notice').show();
			$().setBg();
			products_name = false;
		}else{
			$('div#notice').hide();
			products_name = true;
		}
	});

	$('#content_req').blur(function(){//��ϸҪ��
		if($("#content_req").text().length<50){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��ϸҪ��������50���ַ�!');
			$('div#notice').show();
			$().setBg();
			content_req = false;
		}else{
			$('div#notice').hide();
			content_req = true;
		}
	});

	//-------------------------------------------------------
	$('#title').blur(function(){//�жϷ������������
		if($("#title").val().length<5){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('�������ⲻ������5�ַ�!');
			$('div#notice').show();
			$().setBg();
			title = false;
		}else {
			$('div#notice').hide();
			title = true;
		}
	});
	$('#content_send').blur(function(){//��������
		if($("#content_send").text().length<10){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('�������ݲ�������10���ַ�!');
			$('div#notice').show();
			$().setBg();
			content = false;
		}else{
			$('div#notice').hide();
			content = true;
		}
	});

	$('#name').blur(function(){//��ϵ��
		if($("#name").val().length >0 && $("#company").val().length<2){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��˾����Ϊ�ջ��ߴ���2�ַ�!');
			$('div#notice').show();
			$().setBg();
			name = false;
		}else if($("#name").val().length>30){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��˾���Ʋ��ܳ���30�ַ�!');
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
				$('div#notice').html('QQ/MSN��ʽ����ȷ!');
				$('div#notice').show();
				$().setBg();
				qq= false;
			}else{
				$('div#notice').hide();
				qq= true;
			}
		}
	});

	$('#imgCode').blur(function(){//�ж���֤�������
		if($("#imgCode").val().length!=4){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��֤�볤��Ϊ4�ַ�!');
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
						$().alertwindow("�����������ύ�����ǻᾡ�������ϵ","");
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
			$('div#notice').html('��Ϣ��д������,��*�ŵ�Ϊ������!');
			$('div#notice').show();
			$().setBg();
		}
       return false;
   });


   //ȫվ�������ύ
	$(document).ready(function(){
		$('#feedbacksmallform').submit(function(){
			$('#feedbacksmallform').ajaxSubmit({
				target: 'div#notice',
				url: 'action/post.php',
				success: function(msg) {
					//alert(msg);
					if(msg=="OK"){
						$('div#notice').hide();
						$().alertwindow("�����������ύ�����ǻᾡ�������ϵ","");
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


