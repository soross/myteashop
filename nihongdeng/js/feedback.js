


//�������ύ
$(document).ready(function(){
	$('#feedbackform').submit(function(){
		$('#feedbackform').ajaxSubmit({
			target: 'div#notice',
			url: '/post/message.action.php',
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
	$('#feedbacksmallform').submit(function(){
		$('#feedbacksmallform').ajaxSubmit({
			target: 'div#notice',
			url: '/post/message.action.php',
			success: function(msg) {
				if(msg=="OK"){
					$('div#notice').hide();
					$().alertwindow("�����������ύ�����ǻᾡ�������ϵ","");
				}else{
					$('div#notice').hide();
					alert(msg);
				}
			}
		});
       return false;

   });
});


