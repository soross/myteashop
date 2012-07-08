
<div class="qqbox_left" id="divQQbox2" style="display: none;Z-index:3001;">
</div>
<div class="qqbox" id="divQQbox" style="Z-index:3002;">
  	<div style="display: block;" class="qqlv" id="meumid" onmouseover="show()">
       <!--  <img src="images/qq/kefu.gif" /> --><img src="images/qq/qq_1.gif" />
</div>
<div class="qqkf" style="display: none;Z-index:3000;" id="contentid" onmouseout="hideMsgBox(event)">
    <!--栏目标题一-->
    <div class='qqkfbt' id='qq-1'></div>
	<div class='submenu' id='DIV1'>
		<div class='qqkfhm'>
			<a href='#' target='_self'>
				<img src="images/qq/jj.png" border="0">
			</a>
		</div>
	</div>

	<div class='submenu' id='DIV2'>
		<div class='qqkfhm'>
			<a href='#' target='_self'>
				<img src="images/qq/sj.gif" border="0">
			</a>
		</div>
	</div>

	<div class='submenu' id='DIV3'>
		<div class='qqkfhm'>
			<a href='#' target='_self'>
				综合布线施工技术
			</a>
		</div>
	</div>

	<div class='submenu' id='DIV3'>
		<div class='qqkfhm'>
			<a href='#' target='_self'>
				网络布线工程验收
			</a>
		</div>
	</div>

	<div class='submenu' id='DIV3'>
		<div class='qqkfhm'>
			<a href='#' target='_self'>
				综合布线工程案例
			</a>
		</div>
	</div>

</div>

<!--在线QQ客服开始-->
<link href="css/style_QQ_servces.css" rel="stylesheet" type="text/css" />
<!--在线QQ客服结束-->
<script language="javascript">
	var tips;
	var theTop = 100;
	var old = theTop;
	function initFloatTips()
	{
		tips = document.getElementById('divQQbox');
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
	        if (document.getElementById('contentid').contains(event.toElement)) {
			    return;//结束函式
		    }
		}
	  }
	  document.getElementById("meumid").style.display = "block";
	  document.getElementById("contentid").style.display = "none";
 	}
</script>