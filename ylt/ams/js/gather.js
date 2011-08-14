$(document).ready(function(){
	$("#gatherButton").click(function(){
		tidck = window.setInterval('getOverState()',10000);  //重置定时器
		$('div#resule').show();
		$("#gatherButton").attr("disabled","disabled");
		$('div#rssRow').html("&nbsp;");
		$.ajax({
			type: "POST",
			url:"../gather/readRss.php",
			data: "task=RSS",
			success: function(msg){
				//alert(msg);
				if(msg=="ERROR"){
					$('div#resule').hide();
					$('div#ajaxResule').html("数据采集失败!"+msg);
					$('div#ajaxResule').show();
				}
				/*readRss不echo的时候才会执行success
				else{
					$('div#resule').hide();
					$('div#ajaxResule').html("数据采集成功,共采集了"+msg+"条数据!");
					$('div#ajaxResule').show();
				}
				*/
			}
		});
	});

	$("#getRssDateButton").click(function(){
		getRssDate();
	});


	$("#createNews").click(function(){
		$('div#resule1').show();
		$("#createNews").attr("disabled","disabled");
		$.ajax({
			type: "POST",
			url:"action/post.php",
			data: "task=createNews",
			success: function(msg){
				if(msg=="ERROR"){
					$('div#resule1').hide();
					$('div#ajaxResule1').html("新闻创建失败!"+msg);
					$('div#ajaxResule1').show();
				}else{

					$('div#resule1').hide();
					$('div#ajaxResule1').html("新闻创建成功,共生成了&nbsp<strong>"+msg+"</strong>&nbsp条新闻!");
					$('div#ajaxResule1').show();
				}
			}
		});
	});


});

var tidck;
var cnt = 0;
var flag = false;
function getOverState(){
	$.ajax({
		type: "POST",
		url:"action/post.php",
		data: "task=getState",
		success: function(msg){
			if(parseInt(msg)<= cnt){
				if(flag){
					$('div#resule').hide();
					$('div#ajaxResule').html("新闻采集成功,共生成了&nbsp<strong>"+msg+"</strong>&nbsp条新闻!");
					$('div#ajaxResule').show();
					clearTimeOut(tidck);
					getRssDate();
				}else{
					flag = true;
				}
			}else{
				cnt = msg;
			}
		}
	});
}

function clearTimeOut(tidg){
	window.clearInterval(tidg);
}

function getRssDate(){
	$.ajax({
		type: "POST",
		url:"action/post.php",
		data: "task=getRssDate",
		success: function(msg){
			$('div#rssRow').html(unescape(msg));
		}
	});
}

