<?php /* Smarty version 2.6.26, created on 2011-06-25 14:41:54
         compiled from inc/qq_index.html */ ?>
<?php echo '
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<title>右侧悬浮的QQ在线客服</title>
<meta http-equiv="content-type" content="text/html; charset=GBK">
<style>
.qqbox{
	font-size:12px;
	height:175px;
	width:127px;
	letter-spacing:0px;
	overflow:hidden;
	position:absolute;
	right:0;
	top:100px;
}
.qqlv{
	float:right;
	height:162px;
	overflow:hidden;
	position:relative;
	width:41px;
	z-index:50px;
}
.qqtable{
	height:173px;
	text-align:center;
	width:127px;
}
.qqtable2{
	height:98%;
	width:98%;
}

.qqtd{
	background-image:url(images/qq/show_qq.gif);
	background-repeat: no-repeat;
	height:173px;
	width:127px;
}
.qqtr1{
	height:30px;
}
.qqtr2{
	height:140px;
	vertical-align:top;
}
.qqtr3{
	height:10px;
}
</style>

</head><body>
<div class="qqbox" id="divQQbox">
  <div style="display: block;" class="qqlv" id="meumid" onmouseover="show()"><img src="images/qq/qq.gif"></div>
  <div class="qqkf" style="display: none;" id="contentid" onmouseout="hideMsgBox(event)">
	<table class="qqtable">
		<tr>
			<td class="qqtd">
				<table class="qqtable2">
					<tr class="qqtr1">
						<td>
							&nbsp;
						</td>
					</tr>
					<tr class="qqtr2">
						<td>
							<table>
								<tr>
									<td>
										&nbsp;&nbsp;<a target="_blank" href="http://sighttp.qq.com/authd?IDKEY=2fa5efa6ed88742eaba0bfdf46a115951055689b6c8b8ec0"><img border="0"  src="http://wpa.qq.com/imgd?IDKEY=2fa5efa6ed88742eaba0bfdf46a115951055689b6c8b8ec0&pic=42" alt="Q我吧!!" title="Q我吧!!"></a>
									</td>
								</tr>
								<tr>
									<td>
									&nbsp;&nbsp;<a target="_blank" href="http://sighttp.qq.com/authd?IDKEY=98f2a0b268f5a569ea068010c5cc79ea6dbbd812c6bdbee3"><img border="0"  src="http://wpa.qq.com/imgd?IDKEY=98f2a0b268f5a569ea068010c5cc79ea6dbbd812c6bdbee3&pic=42" alt="Q我吧!!" title="Q我吧!!"></a>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;<a target="_blank" href="http://sighttp.qq.com/authd?IDKEY=90d03b9699905f3979eecf2dd61278f6800f15a9c6ef01f3"><img border="0"  src="http://wpa.qq.com/imgd?IDKEY=90d03b9699905f3979eecf2dd61278f6800f15a9c6ef01f3&pic=42" alt="Q我吧!!" title="Q我吧!!"></a>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;&nbsp;<a target="_blank" href="http://sighttp.qq.com/authd?IDKEY=90d03b9699905f3979eecf2dd61278f6800f15a9c6ef01f3"><img border="0"  src="http://wpa.qq.com/imgd?IDKEY=90d03b9699905f3979eecf2dd61278f6800f15a9c6ef01f3&pic=42" alt="Q我吧!!" title="Q我吧!!"></a>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr class="qqtr2">
						<td>
							&nbsp;
						</td>
					</tr>
				</table>
			</td>
		</tr>
	<table>
  </div>
</div>
<script language="javascript">
	var tips;
	var theTop = 100;
	var old = theTop;
	function initFloatTips()
	{
		tips = document.getElementById(\'divQQbox\');
		moveTips();
	}
	function moveTips()
	{
			  var tt=50;
			  if (window.innerHeight)
			  {
			pos = window.pageYOffset
			  }else if (document.documentElement && document.documentElement.scrollTop) {
			pos = document.documentElement.scrollTop
			  }else if (document.body) {
				pos = document.body.scrollTop;
			  }
			  //http:
			  pos=pos-tips.offsetTop+theTop;
			  pos=tips.offsetTop+pos/10;
			  if (pos < theTop){
				 pos = theTop;
			  }
			  if (pos != old) {
				 tips.style.top = pos+"px";
				 tt=10;//alert(tips.style.top);
			  }
			  old = pos;
			  setTimeout(moveTips,tt);
	}
	initFloatTips();
	if(typeof(HTMLElement)!="undefined")//给firefox定义contains()方法，ie下不起作用
		{
		  HTMLElement.prototype.contains=function (obj)
		  {
			  while(obj!=null&&typeof(obj.tagName)!="undefind"){//
	   　　 　if(obj==this) return true;
	   　　　	　obj=obj.parentNode;
	   　　	  }
			  return false;
		  }
	}
	function show()
	{
		document.getElementById("meumid").style.display="none"
		document.getElementById("contentid").style.display="block"
	}
	function hideMsgBox(theEvent){
	  if (theEvent){
		var browser=navigator.userAgent;
		if (browser.indexOf("Firefox")>0){//Firefox
		    if (document.getElementById("contentid").contains(theEvent.relatedTarget)) {
				return
			}
		}
		if (browser.indexOf("MSIE")>0 || browser.indexOf("Presto")>=0){
	        if (document.getElementById(\'contentid\').contains(event.toElement)) {
			    return;//结束函式
		    }
		}
	  }
	  document.getElementById("meumid").style.display = "block";
	  document.getElementById("contentid").style.display = "none";
 	}
</script>
</body>
</html>
'; ?>