
//���ִ�С�л�

function fontZoom(size)
{
   document.getElementById('con').style.fontSize=size+'px';
}

/*
//��ȡ���鷭ҳ
(function($){
	$.fn.contentPages = function(newsid){

	$("div#contentpages").empty();

		$.ajax({
			type: "POST",
			url:"news/post.php",
			data: "act=contentpages&newsid="+newsid,
			success: function(msg){
				$("div#contentpages").append("<ul>");
				$("div#contentpages").append("<li id='pl' class='cbutton'>��һҳ</li>");
				$("div#contentpages").append(msg);
				$("div#contentpages").append("<li id='pn' class='pbutton'>��һҳ</li>");
				$("div#contentpages").append("</ul>");
				//$("li#pl").hide();


				var getObj = $('li.pages');

				if(getObj.length<2){
					$("div#contentpages").hide();
					$().setBg();
					return false;
				}

				$('li.pages')[0].className='pagesnow';

				getObj.each(function(id) {

					var obj = this.id;

					$("li#"+obj).click(function() {

						$('li.pagesnow')[0].className="pages";
						this.className='pagesnow';
						var clickid=obj.substr(2);
						$().getContent(newsid,clickid);
						if($(".pagesnow").next()[0].id=="pn"){$("li#pn")[0].className="cbutton";}else{$("li#pn")[0].className="pbutton";}
						if($(".pagesnow").prev()[0].id=="pl"){$("li#pl")[0].className="cbutton";}else{$("li#pl")[0].className="pbutton";}


					});

				});


				//��һҳ
				$("li#pl").click(function() {
					if($("li#pl")[0].className=="pbutton"){
						var nowObj=$(".pagesnow").prev()[0].id;
						var nextpageid=nowObj.substr(2);
						$().getContent(newsid,nextpageid);
						$('li.pagesnow')[0].className="pages";
						$("#"+nowObj)[0].className="pagesnow";
						if($(".pagesnow").prev()[0].id=="pl"){$("li#pl")[0].className="cbutton";}else{$("li#pl")[0].className="pbutton";}
						if($(".pagesnow").next()[0].id=="pn"){$("li#pn")[0].className="cbutton";}else{$("li#pn")[0].className="pbutton";}

					}else{
						return false;
					}


				});


				//��һҳ
				$("li#pn").click(function() {
					if($("li#pn")[0].className=="pbutton"){
						var nowObj=$(".pagesnow").next()[0].id;
						var nextpageid=nowObj.substr(2);
						$().getContent(newsid,nextpageid);
						$('li.pagesnow')[0].className="pages";
						$("#"+nowObj)[0].className="pagesnow";
						if($(".pagesnow").prev()[0].id=="pl"){$("li#pl")[0].className="cbutton";}else{$("li#pl")[0].className="pbutton";}
						if($(".pagesnow").next()[0].id=="pn"){$("li#pn")[0].className="cbutton";}else{$("li#pn")[0].className="pbutton";}

					}else{
						return false;
					}
				});

			}
		});
	};
})(jQuery);


//��ȡ��ϸ����

(function($){
	$.fn.getContent = function(newsid,newspageid){

		$.ajax({
			type: "POST",
			url:"news/post.php",
			data: "act=getcontent&newspageid="+newspageid+"&newsid="+newsid+"&RP="+PDV_RP,
			success: function(msg){
				$("#con").html(msg);
				$("#con").find("img").each(function(){
					if(this.offsetWidth>600){
						this.style.width="600px";
					}
				});
				$().setBg();
			}
		});
	};
})(jQuery);


//����ͼƬ�ߴ紦��
$(document).ready(function(){
	$("#con").find("img").hide();
	var w=$("#con")[0].offsetWidth;
	$("#con").find("img").each(function(){
		$(this).show();
		if(this.offsetWidth>w){
			this.style.width=w + "px";
			$().setBg();
		}
	});

});


//֧�ַ���ͶƱ
$(document).ready(function(){

	$("span#zhichi").click(function(){

		var newsid=$("input#newsid")[0].value;

		$.ajax({
			type: "POST",
			url:"news/post.php",
			data: "act=zhichi&newsid="+newsid,
			success: function(msg){
				if(msg=="L0"){
					$().popLogin(0);
				}else if(msg=="L1"){
					$().alertwindow("�Բ������Ѿ�Ͷ��Ʊ��","");
				}else{
					$("span#zhichinum").html(msg);
				}
			}
		});
	});


	$("span#fandui").click(function(){

		var newsid=$("input#newsid")[0].value;

		$.ajax({
			type: "POST",
			url:"news/post.php",
			data: "act=fandui&newsid="+newsid,
			success: function(msg){
				if(msg=="L0"){
					$().popLogin(0);
				}else if(msg=="L1"){
					$().alertwindow("�Բ������Ѿ�Ͷ��Ʊ��","");
				}else{
					$("span#fanduinum").html(msg);
				}
			}
		});
	});

});


//�����ղ�
$(document).ready(function(){

	$("div#addfav").click(function(){

		var newsid=$("input#newsid")[0].value;

		$.ajax({
			type: "POST",
			url:"news/post.php",
			data: "act=addfav&newsid="+newsid+"&url="+window.location.href,
			success: function(msg){
				if(msg=="L0"){
					$().popLogin(0);
				}else if(msg=="L1"){
					$().alertwindow("���Ѿ��ղ��˵�ǰ��ַ","");
				}else if(msg=="OK"){
					$().alertwindow("�Ѿ����뵽�ղؼ�","member/member_fav.php");
				}else{
					alert(msg);
				}
			}
		});
	});

});


//�������ؿ۵�
$(document).ready(function(){
	var downcentstr=$("input#downcent")[0].value;
	if(downcentstr!=""){
		$("#downcentnotice").html("(���ر�������Ҫ"+downcentstr+")");
	}
	$("#downlink").click(function(){
		var newsid=$("input#newsid")[0].value;

		$.ajax({
			type: "POST",
			url:"news/post.php",
			data: "act=download&newsid="+newsid+"&RP="+PDV_RP,
			success: function(msg){
				if(msg=="1000"){
					alert("���ر��������ȵ�¼");
				}else if(msg=="1001"){
					alert("���ر�������Ҫ"+downcentstr);
				}else{
					window.location=msg;
				}
			}
		});

	});
});


//��������
$(document).ready(function(){

		var newsid=$("input#newsid")[0].value;

		$.ajax({
			type: "POST",
			url:"news/post.php",
			data: "act=ifbanzhu&newsid="+newsid,
			success: function(msg){
				if(msg=="YES"){
					$("#banzhu").append("�������� | <span id='banzhutj'>�Ƽ�</span> | <span id='banzhudel'>ɾ��</span> | <span id='banzhudelmincent'>ɾ�����۷�</span> |").show();
					$().setBg();

					//�Ƽ�����
					$("#banzhutj").click(function(){
						$.ajax({
							type: "POST",
							url:"news/post.php",
							data: "act=banzhutj&newsid="+newsid,
							success: function(msg){
								if(msg=="OK"){
									$().alertwindow("�Ƽ��ɹ�","");
								}else{
									alert(msg);
								}
							}
						});

					});

					//ɾ������
					$("#banzhudel").click(function(){
						$.ajax({
							type: "POST",
							url:"news/post.php",
							data: "act=banzhudel&newsid="+newsid,
							success: function(msg){
								if(msg=="OK"){
									$().alertwindow("ɾ���ɹ�","../class/");
								}else{
									alert(msg);
								}
							}
						});

					});


					//ɾ�����۷ֲ���
					$("#banzhudelmincent").click(function(){
						$.ajax({
							type: "POST",
							url:"news/post.php",
							data: "act=banzhudel&koufen=yes&newsid="+newsid,
							success: function(msg){
								if(msg=="OK"){
									$().alertwindow("ɾ�����۷ֳɹ�","../class/");
								}else{
									alert(msg);
								}
							}
						});

					});

				}else{
					$("#banzhu").empty().hide();
				}
			}
		});

});
*/

