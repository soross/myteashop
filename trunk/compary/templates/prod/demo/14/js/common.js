<!--


//ҳ����ʾԤ����

$(document).ready(function() {


	//�����ڿ������ʱ���¶�����Щ��ĸ߶�

	var getObj = $('div.pdv_class');
	getObj.each(function(id) {

		var obj = this.id;

		if($("#s"+obj)[0].style.overflow=="visible"){


			//���ÿ������ĸ߶�
			$("#"+obj)[0].style.height=$("#s"+obj)[0].offsetHeight +"px";

			var cha=0;
			var L=$("#"+obj)[0].offsetLeft;
			var T=$("#"+obj)[0].offsetTop;
			var R=$("#"+obj)[0].offsetLeft+$("#"+obj)[0].offsetWidth;
			var B=$("#"+obj)[0].offsetTop+$("#"+obj)[0].offsetHeight;


			var broObj=$("#"+obj).siblings(".pdv_class");  //�ҳ����������ֵ�Ԫ��
			broObj.each(function(id){
				var bro = this.id;
				var broL=$("#"+bro)[0].offsetLeft;
				var broT=$("#"+bro)[0].offsetTop;
				var broH=$("#"+bro)[0].offsetHeight;
				var broR=$("#"+bro)[0].offsetLeft+$("#"+bro)[0].offsetWidth;


				if(((broL<L && broR>L) || (broL>L && broL<R) || broL==L) && broT>T){

					$("#"+bro)[0].style.top= B + cha +10 +"px"; //���ÿ�������topֵ
					cha=cha+broH+10;

				}

			});

		}else{

				//���ò���߿��ĸ߶�

				var borderH=$("#s"+obj)[0].offsetHeight;
				var bbw=$("#s"+obj).find(".pdv_border").css("borderWidth");
				var bbp=$("#s"+obj).find(".pdv_border").css("padding");
				var bbm=$("#s"+obj).find(".pdv_border").css("margin");

				if(bbm=="auto"){bbm=0}

				bbw ? borderH-=parseInt(bbw)*2 : borderH-=0 ;
				bbp ? borderH-=parseInt(bbp)*2 : borderH-=0 ;
				bbm ? borderH-=parseInt(bbm)*2 : borderH-=0 ;

				$("#s"+obj).children(".pdv_border")[0].style.height=borderH +"px";


		}
	});


	//�������������ĸ߶�

	var getObj = $('div.pdv_top');
	var th=0,h=0;
	getObj.each(function(id) {
		var obj = this.id;
		h=$("#"+obj).parents()[0].offsetTop + $("#"+obj).parents()[0].offsetHeight;
		th = th>h?th:h;
	});
	$("#top")[0].style.height = th + "px";


	var getObj = $('div.pdv_content');
	var ch=0,h=0;
	getObj.each(function(id) {
		var obj = this.id;

		h=$("#"+obj).parents()[0].offsetTop + $("#"+obj).parents()[0].offsetHeight;
		ch = ch>h?ch:h;
	});
	$("#content")[0].style.height = ch + "px";


	var getObj = $('div.pdv_bottom');
	var bh=0,h=0;
	getObj.each(function(id) {
		var obj = this.id;
		h=$("#"+obj).parents()[0].offsetTop + $("#"+obj).parents()[0].offsetHeight;
		bh = bh>h?bh:h;
	});

	$("#bottom")[0].style.height = bh + "px";

});




/**
* setBg
* ��ҳ�����ݶ�̬�䶯ʱ,���µ������㼰�����߶�
*/
(function($){
	$.fn.setBg = function(){
		var getDrag = $('div.pdv_class');
		getDrag.each(function(id) {
			var obj = this.id;

			if($("#s"+obj)[0].style.overflow=="visible"){

				//���ÿ������ĸ߶�
				$("#"+obj)[0].style.height=$("#s"+obj)[0].offsetHeight +"px";

				var cha=0;
				var L=$("#"+obj)[0].offsetLeft;
				var T=$("#"+obj)[0].offsetTop;
				var R=$("#"+obj)[0].offsetLeft+$("#"+obj)[0].offsetWidth;
				var B=$("#"+obj)[0].offsetTop+$("#"+obj)[0].offsetHeight;

				var broObj=$("#"+obj).siblings(".pdv_class");  //�ҳ����������ֵ�Ԫ��
				broObj.each(function(id){
					var bro = this.id;
					var broL=$("#"+bro)[0].offsetLeft;
					var broT=$("#"+bro)[0].offsetTop;
					var broH=$("#"+bro)[0].offsetHeight;
					var broR=$("#"+bro)[0].offsetLeft+$("#"+bro)[0].offsetWidth;


					if(((broL<L && broR>L) || (broL>L && broL<R) || broL==L) && broT>T){

						$("#"+bro)[0].style.top= B + cha +10 +"px"; //���ÿ�������topֵ
						cha=cha+broH+10;

					}

				});
			}
		});


		//�������������ĸ߶�

		var getObj = $('div.pdv_top');
		var th=0,h=0;
		getObj.each(function(id) {

			var obj = this.id;
			h=$("#"+obj).parents()[0].offsetTop + $("#"+obj).parents()[0].offsetHeight;
			th = th>h?th:h;
		});
		$("#top")[0].style.height = th + "px";


		var getObj = $('div.pdv_content');
		var ch=0,h=0;
		getObj.each(function(id) {
			var obj = this.id;

			h=$("#"+obj).parents()[0].offsetTop + $("#"+obj).parents()[0].offsetHeight;
			ch = ch>h?ch:h;
		});
		$("#content")[0].style.height = ch + "px";


		var getObj = $('div.pdv_bottom');
		var bh=0,h=0;
		getObj.each(function(id) {
			var obj = this.id;
			h=$("#"+obj).parents()[0].offsetTop + $("#"+obj).parents()[0].offsetHeight;
			bh = bh>h?bh:h;
		});

		$("#bottom")[0].style.height = bh + "px";



	};
})(jQuery);






//ˢ��ͼ����
$(document).ready(function() {

	$("img#codeimg").click(function () {
		$("img#codeimg")[0].src=PDV_RP+"codeimg.php?"+Math.round(Math.random()*1000000);
	 });

	$("#getImgCode").click(function () {
		$("img#codeimg")[0].src=PDV_RP+"codeimg.php?"+Math.round(Math.random()*1000000);
	 });
});




//���ɾ�̬ҳ��ֱ����html״̬�����ɾ�̬ҳ,�ڹ���״̬��,��ת���Ǿ�̬
function BuildHtml(RP,ver,catchtime,i){

		$.ajax({
			type: "GET",
			url:"./index.php",
			data: i+".html&htmlversion="+ver+"&htmlcatchtime="+catchtime,
			success: function(msg){
				if(msg=="NOCATCH"){
					if(i=='index'){
						window.location='index.php';
					}else{
						window.location='./?'+i+'.html';
					}
				}

			}
		});

}


//ģ���������˵��ύ��ѡ��
function selOption(selname,v){
	for(var i=0;i<selname.length;i++)
	{
		if(selname.options[i].value==v){
		selname.options[i].selected=true;
		}
	}
}


//��ȡ����ʽ��¼��
(function($){
	$.fn.popLogin = function(act){

		//��ȡ��¼����
		$.ajax({
			type: "POST",
			url:PDV_RP+"member/post.php",
			data: "act=getpoploginform&RP="+PDV_RP,
			success: function(msg){

				$('html').append(msg);
				$.blockUI({message: $('div#loginDialog'),css:{width:'300px'}});
				$('.pwClose').click(function() {
					$.unblockUI();
					$('div#loginDialog').remove();
				});

				$('img#zhuce').click(function() {
					$.unblockUI();
					window.location=PDV_RP+"member/reg.php";
				});

				$("img#fmCodeImg").click(function () {
					$("img#fmCodeImg")[0].src=PDV_RP+"codeimg.php?"+Math.round(Math.random()*1000000);
				 });

				 $('#LoginForm').submit(function(){

					$('#LoginForm').ajaxSubmit({
						target: 'div#loginnotice',
						url: PDV_RP+'post.php',
						success: function(msg) {

							if(msg=="OK" || msg.substr(0,2)=="OK"){
								$('div#loginnotice').hide();
								$.unblockUI();
								$('div#loginDialog').remove();
								if(act=="1"){
									$("div#notLogin").hide();
									$("div#isLogin").show();
									$("span#username").html(getCookie("MUSER"));
								}else if(act=="2"){
									window.location.reload();
								}else{
									$().alertwindow("��Ա��¼�ɹ�","");
								}

							}else{
								$('div#loginnotice').show();
							}
						}
					});

				return false;

			 });


			}
		});


	};
})(jQuery);



//ͼƬ����Ӧ,����fitType=fillΪ���ʽ��fitType=autoΪ������������Ӧ
(function($){
	$.fn.picFit = function(fitType){


		var maxHeight,maxWidth,accMax,MT,ML;

		$("div.picFit").each(function(){
			maxHeight=parseInt($(this).css("height"));
			maxWidth=parseInt($(this).css("width"));
			accMax=maxWidth/maxHeight;

			$(this).find("img").each(function(){

				$(this).css({width:"",height:""});

				if(fitType=="auto"){
						if($(this)[0].offsetHeight>=$(this)[0].offsetWidth/accMax){
							$(this).css({height:maxHeight+"px"});
						}else{
							$(this).css({width:maxWidth+"px"});
							MT = (maxHeight-$(this)[0].offsetHeight)/2 + "px";
							$(this).css({marginTop:MT});
						}

				}else if(fitType=="fill"){
						if($(this)[0].offsetHeight>=$(this)[0].offsetWidth/accMax){
							$(this).css({width:maxWidth+"px"});
							MT = (maxHeight-$(this)[0].offsetHeight)/2 + "px";
							//$(this).css({marginTop:MT});
						}else{
							$(this).css({height:maxHeight+"px"});
							ML = (maxWidth-$(this)[0].offsetWidth)/2 + "px";
							//$(this).css({marginLeft:ML});
						}
				}else{
						$(this).css({width:maxWidth+"px",height:maxHeight+"px"});
				}

			});


		});

	};

})(jQuery);



//�����ǩ�л�
(function($){
	$.fn.switchLable = function(pdvid,lables,roll){


		//�Ű�״̬����Ч
		if(getCookie("PLUSADMIN")=="SET"){return false}

		//pdvidδ������Ч
		if(pdvid==""){return false}

		//��ȡ��ǩ����ʽ����
		var GBL=$("ul#gblable_"+pdvid).children();
		var CLN=GBL[0].className;
		var CUR=CLN+"_current";
		var R,S;


		//��ձ�ǩ,��ȡ���ز���,������ǩ����
		$("ul#gblable_"+pdvid).empty();
		$("#pdv_"+pdvid).css({zIndex:32});
		$("#pdv_"+pdvid)[0].title="";

		var strAry=lables.split(",");
		for(i=0;i<strAry.length;i++){
			if(strAry[i]=="" || parseInt(strAry[i])==NaN){return false}
			if($("#pdv_"+strAry[i])[0] && strAry[i]!=pdvid){
				if(i==0){
					$("#pdv_"+strAry[i]).css({zIndex:99});
					$("ul#gblable_"+pdvid).append("<li id='GBLLIST_"+i+"' class='"+CUR+"'>"+$("#pdv_"+strAry[i])[0].title+"</li>");
				}else{
					$("#pdv_"+strAry[i]).css({zIndex:31});
					$("ul#gblable_"+pdvid).append("<li id='GBLLIST_"+i+"' class='"+CLN+"'>"+$("#pdv_"+strAry[i])[0].title+"</li>");
				}
			}

		}

		R=$("ul#gblable_"+pdvid).children();
		S=R.size();


		if(roll=="click"){
			R.click(function(){
				R.each(function(){
					$(this)[0].className=CLN;
					$("#pdv_"+strAry[this.id.substr(8)]).hide();
				});
				$(this)[0].className=CUR;
				$("#pdv_"+strAry[this.id.substr(8)]).show();
				$("#pdv_"+strAry[this.id.substr(8)]).css({zIndex:99});

			});
		}else{
			R.mouseover(function(){
				R.each(function(){
					$(this)[0].className=CLN;
					$("#pdv_"+strAry[this.id.substr(8)]).hide();
				});
				$(this)[0].className=CUR;
				$("#pdv_"+strAry[this.id.substr(8)]).show();
				$("#pdv_"+strAry[this.id.substr(8)]).css({zIndex:99});
			});
		}

		//�Զ�����
		if(roll=="auto"){
			setInterval(function(){
				var nextId=0;
				R.each(function(id){
					if($(this)[0].className==CUR){
						nextId=id+1;
						if(nextId>=S){
							nextId=0;
						}
					}
					$(this)[0].className=CLN;
					$("#pdv_"+strAry[this.id.substr(8)]).hide();
				});
				R[nextId].className=CUR;
				$("#pdv_"+strAry[R[nextId].id.substr(8)]).show();
				$("#pdv_"+strAry[R[nextId].id.substr(8)]).css({zIndex:99});

			}, 5000);
		}


	};

})(jQuery);


-->