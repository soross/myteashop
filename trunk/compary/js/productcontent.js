

//��ȡ���鷭ҳ
(function($){
	$.fn.contentPages = function(productid){

	$("div#contentpages").empty();

		$.ajax({
			type: "POST",
			url:PDV_RP+"product/post.php",
			data: "act=contentpages&productid="+productid,
			success: function(msg){
				$("div#contentpages").append("<ul>");
				$("div#contentpages").append("<li id='pl' class='cbutton'>��һ��</li>");
				$("div#contentpages").append(msg);
				$("div#contentpages").append("<li id='pn' class='pbutton'>��һ��</li>");
				$("div#contentpages").append("</ul>");


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
						$().getContent(productid,clickid);
						if($(".pagesnow").next()[0].id=="pn"){$("li#pn")[0].className="cbutton";}else{$("li#pn")[0].className="pbutton";}
						if($(".pagesnow").prev()[0].id=="pl"){$("li#pl")[0].className="cbutton";}else{$("li#pl")[0].className="pbutton";}

					});

				});


				//��һҳ
				$("li#pl").click(function() {
					if($("li#pl")[0].className=="pbutton"){
						var nowObj=$(".pagesnow").prev()[0].id;
						var nextpageid=nowObj.substr(2);
						$().getContent(productid,nextpageid);
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
						$().getContent(productid,nextpageid);
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



//��ȡͼƬ
/*
(function($){
	$.fn.getContent = function(productid,productpageid){

		$("#productloading").show();
		$("img#productpic").remove();

		//$.ajax({
		//	type: "POST",
		//	url:PDV_RP+"product/post.php",
		//	data: "act=getcontent&productpageid="+productpageid+"&productid="+productid+"&RP="+PDV_RP,
		//	success: function(msg){
				//var msg = "images/1268626016.jpg";
				var msg = "images/"+$("#imgPath").value;
				//alert(msg);
				//alert(PDV_RP+msg);
				  $("body").append("<img id='productpic' class='productpic' src='"+msg+"'>");

				  $("img#productpic").load(function(){
					  var outw=parseInt($("div.piczone").css("width"));
					  var outh=parseInt($("div.piczone").css("height"));

					  var w=$("img#productpic")[0].offsetWidth;
					  var h=$("img#productpic")[0].offsetHeight;

					  if(w>=h){
						if(w>outw){$("img#productpic")[0].style.width=outw+"px";}
					  }else{
						if(h>outh){$("img#productpic")[0].style.height=outh+"px";}
					  }


						$("#productloading").hide();
						$("img#productpic").appendTo($("#productview"));
					    $().setBg();
				  });

				 /*
				  $("img#productpic").click(function(){


						$("body").append("<img id='pre' src='"+$("img#productpic")[0].src+"'>");

						$.blockUI({
							message: "<img  src='"+$("img#productpic")[0].src+"' class='closeit'>",
							css: {
								top:  ($(window).height() - $("#pre")[0].offsetHeight) /2 + 'px',
								left: ($(window).width() - $("#pre")[0].offsetWidth/2) /2 + 'px',
								width: $("#pre")[0].offsetWidth + 'px',
								backgroundColor: '#fff',
								borderWidth:'3px',
								borderColor:'#fff'
							}
						});

						$("#pre").remove();

						$(".closeit").click(function(){
							$.unblockUI();
						});


				});
				*//*
			//}
		//});
	};
})(jQuery);
*/

//��ʼ����ȡ��ҳ��ͼƬ
$(document).ready(function(){
	var productid=$("input#productid")[0].value;
	//$().contentPages(productid);
	//alert(productid);
	//$().getContent(productid,0);
});


//֧�ַ���ͶƱ
$(document).ready(function(){

	$("span#zhichi").click(function(){

		var productid=$("input#productid")[0].value;

		$.ajax({
			type: "POST",
			url:PDV_RP+"product/post.php",
			data: "act=zhichi&productid="+productid,
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

		var productid=$("input#productid")[0].value;

		$.ajax({
			type: "POST",
			url:PDV_RP+"product/post.php",
			data: "act=fandui&productid="+productid,
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

		var productid=$("input#productid")[0].value;

		$.ajax({
			type: "POST",
			url:PDV_RP+"product/post.php",
			data: "act=addfav&productid="+productid+"&url="+window.location.href,
			success: function(msg){
				if(msg=="L0"){
					$().popLogin(0);
				}else if(msg=="L1"){
					$().alertwindow("���Ѿ��ղ��˵�ǰ��ַ","");
				}else if(msg=="OK"){
					$().alertwindow("�Ѿ����뵽�ղؼ�",PDV_RP+"member/member_fav.php");
				}else{
					alert(msg);
				}
			}
		});
	});

});


//��������
$(document).ready(function(){

		var productid=$("input#productid")[0].value;

		$.ajax({
			type: "POST",
			url:"product/post.php",
			data: "act=ifbanzhu&productid="+productid,
			success: function(msg){
				if(msg=="YES"){
					$("#banzhu").append("�������� | <span id='banzhutj'>�Ƽ�</span> | <span id='banzhudel'>ɾ��</span> | <span id='banzhudelmincent'>ɾ�����۷�</span> |").show();
					$().setBg();

					//�Ƽ�����
					$("#banzhutj").click(function(){
						$.ajax({
							type: "POST",
							url:PDV_RP+"product/post.php",
							data: "act=banzhutj&productid="+productid,
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
							url:PDV_RP+"product/post.php",
							data: "act=banzhudel&productid="+productid,
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
							url:PDV_RP+"product/post.php",
							data: "act=banzhudel&koufen=yes&productid="+productid,
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