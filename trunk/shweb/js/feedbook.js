//ȫվ�������ύ
$(document).ready(function(){
	$('#company2').blur(function(){//��˾
		if($("#company2").val().length<2){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��˾��������2�ַ�!');
			$('div#notice').show();
		}else if($("#company2").val().length>50){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��˾���Ʋ��ܳ���50�ַ�!');
			$('div#notice').show();
		}else{
			$('div#notice').hide();
		}
	});

	$('#addr2').blur(function(){//��ַ
		if($("#addr2").val().length==0){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��ϵ��ַ����Ϊ��!');
			$('div#notice').show();
		}else if($("#addr2").val().length>100){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��ϵ��ַ���ܳ���50�ַ�!');
			$('div#notice').show();
		}else{
			$('div#notice').hide();
		}
	});

	$('#tel2').blur(function(){//�ж���ϵ�绰�����
		if($("#tel2").val().length==0){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��ϵ��ʽ����Ϊ��!');
			$('div#notice').show();
		}else{
			var p1 = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;//�̻�
			if(p1.test($("#tel2").val())==false){
				if($("#tel2").val().length==11){
					var p2= /^((\(\d{3}\))|(\d{3}\-))?1[358][0-9]\d{8}?$/;//�ֻ�
					if(p2.test($("#tel2").val())==false){
						$('div#notice')[0].className='noticediv';
						$('div#notice').html('�����ֻ����벻��ȷ!');
						$('div#notice').show();
					}else{
						$('div#notice').hide();
					}
				}else{
					$('div#notice')[0].className='noticediv';
					$('div#notice').html('����绰����ȷ����ʽ�磺0123-4567890');
					$('div#notice').show();
				}
			}else{
				$('div#notice').hide();
			}
		}
	});

	$('#fax2').blur(function(){//����
		if($("#fax2").val().length==0){
			$('div#notice').hide();
			tel= true;
		}else{
			var p1 = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;//�̻�
			if(p1.test($("#fax2").val())==false){
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('���봫�治��ȷ����ʽ�磺0123-4567890');
				$('div#notice').show();
			}else{
				$('div#notice').hide();
			}
		}
	});


	$('#linkman2').blur(function(){//��ϵ��
		if($("#linkman2").val().length>0 && $("#linkman2").val().length<2){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('�ͻ�����Ϊ�ջ����2�ַ�!');
			$('div#notice').show();
		}else if($("#linkman2").val().length>30){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('�ͻ����Ʋ��ܳ���50�ַ�!');
			$('div#notice').show();
		}else{
			$('div#notice').hide();
		}
	});

	$('#proname2').blur(function(){//��Ʒ����
			if($("#proname2").val().length==0){
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('��Ʒ���Ʋ���Ϊ��!');
				$('div#notice').show();
			}else if($("#proname2").val().length>50){
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('��Ʒ���Ʋ��ܳ���50�ַ�!');
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
							$('div#notice').html("�ò�Ʒ������,��ȷ��!")
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


	$('#procode2').blur(function(){//��ƷCODE
			if($("#procode2").val().length==0){
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('��Ʒ���벻��Ϊ��!');
				$('div#notice').show();
				products_name = false;
			}else if($("#procode2").val().length>50){
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('��Ʒ���벻�ܳ���50�ַ�!');
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
							$('div#notice').html("�ò�Ʒ���벻���ڻ����Ʒ���Ʋ�ƥ��,��ȷ��!")
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

	$('#num2').blur(function(){//��������
   		var p = /^[-\+]?\d+$/;
		if(isNaN($("#num2").val())){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('������������!');
			$('div#notice').show();
		}else{
			if(parseInt($("#num2").val())>0){
				$('div#notice').hide();
			}else{
				$('div#notice')[0].className='noticediv';
				$('div#notice').html('������������!');
				$('div#notice').show();
			}
		}
	});

	$('#textarea2').blur(function(){//��ע
		if($("#textarea2").text().length>1 && $("#textarea2").text().length<5){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��ϸҪ��Ϊ�ջ�������5���ַ�!');
			$('div#notice').show();
		}else{
			$('div#notice').hide();
		}
	});

	$('#m_code3').blur(function(){//�ж���֤�������
		if($("#m_code3").val().length!=4){
			$('div#notice')[0].className='noticediv';
			$('div#notice').html('��֤�볤��Ϊ4�ַ�!');
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


	$('#textarea2').blur(function(){//��ϸҪ��
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
   **/

});