var ev = new fml.Ev();
//公共脚本文件 main.js
function addEvent(obj,evtType,func,cap){
    cap=cap||false;
	if(obj.addEventListener){
	    obj.addEventListener(evtType,func,cap);
		return true;
	}else if(obj.attachEvent){
        if(cap){
	        obj.setCapture();
	        return true;
	    }else{
		    return obj.attachEvent("on" + evtType,func);
		}
	}else{
		return false;
    }
}
function getPageScroll(){
    var xScroll,yScroll;
	if (self.pageXOffset) {
		xScroll = self.pageXOffset;
	} else if (document.documentElement && document.documentElement.scrollLeft){
		xScroll = document.documentElement.scrollLeft;
	} else if (document.body) {
		xScroll = document.body.scrollLeft;
	}
	if (self.pageYOffset) {
		yScroll = self.pageYOffset;
	} else if (document.documentElement && document.documentElement.scrollTop){
		yScroll = document.documentElement.scrollTop;
	} else if (document.body) {
		yScroll = document.body.scrollTop;
	}
	arrayPageScroll = new Array(xScroll,yScroll);
	return arrayPageScroll;
}
function GetPageSize(){
    var xScroll, yScroll;
    if (window.innerHeight && window.scrollMaxY) {	
        xScroll = document.body.scrollWidth;
        yScroll = window.innerHeight + window.scrollMaxY;
    } else if (document.body.scrollHeight > document.body.offsetHeight){
        xScroll = document.body.scrollWidth;
        yScroll = document.body.scrollHeight;
    } else {
        xScroll = document.body.offsetWidth;
        yScroll = document.body.offsetHeight;
    }
    var windowWidth, windowHeight;
    if (self.innerHeight) {
        windowWidth = self.innerWidth;
        windowHeight = self.innerHeight;
    } else if (document.documentElement && document.documentElement.clientHeight) {
        windowWidth = document.documentElement.clientWidth;
        windowHeight = document.documentElement.clientHeight;
    } else if (document.body) {
        windowWidth = document.body.clientWidth;
        windowHeight = document.body.clientHeight;
    }	
    if(yScroll < windowHeight){
        pageHeight = windowHeight;
    } else { 
        pageHeight = yScroll;
    }
    if(xScroll < windowWidth){	
        pageWidth = windowWidth;
    } else {
        pageWidth = xScroll;
    }
    arrayPageSize = new Array(pageWidth,pageHeight,windowWidth,windowHeight) 
    return arrayPageSize;
}
//广告脚本文件 AdMove.js
/*
例子
<div id="Div2">
    ***** content ******
</div>
var ad=new AdMove("Div2");
ad.Run();
*/
////////////////////////////////////////////////////////
var AdMoveConfig=new Object();
AdMoveConfig.IsInitialized=false;
AdMoveConfig.ScrollX=0;
AdMoveConfig.ScrollY=0;
AdMoveConfig.MoveWidth=0;
AdMoveConfig.MoveHeight=0;
AdMoveConfig.Resize=function(){
    var winsize=GetPageSize();
    AdMoveConfig.MoveWidth=winsize[2];
    AdMoveConfig.MoveHeight=winsize[3];
    AdMoveConfig.Scroll();
}
AdMoveConfig.Scroll=function(){
    var winscroll=getPageScroll();
    AdMoveConfig.ScrollX=winscroll[0];
    AdMoveConfig.ScrollY=winscroll[1];
}
addEvent(window,"resize",AdMoveConfig.Resize);
addEvent(window,"scroll",AdMoveConfig.Scroll);
function AdMove(id){
    if(!AdMoveConfig.IsInitialized){
        AdMoveConfig.Resize();
        AdMoveConfig.IsInitialized=true;
    }
    var obj=document.getElementById(id);
    obj.style.position="absolute";
    var W=AdMoveConfig.MoveWidth-obj.offsetWidth;
    var H=AdMoveConfig.MoveHeight-obj.offsetHeight;
    var x = W*Math.random(),y = H*Math.random();
    var rad=(Math.random()+1)*Math.PI/6;
    var kx=Math.sin(rad),ky=Math.cos(rad);
    var dirx = (Math.random()<0.5?1:-1), diry = (Math.random()<0.5?1:-1);
    var step = 1;
    var interval;
    this.SetLocation=function(vx,vy){x=vx;y=vy;}
    this.SetDirection=function(vx,vy){dirx=vx;diry=vy;}
    obj.CustomMethod=function(){
        obj.style.left = (x + AdMoveConfig.ScrollX) + "px";
        obj.style.top = (y + AdMoveConfig.ScrollY) + "px";
        rad=(Math.random()+1)*Math.PI/6;
        W=AdMoveConfig.MoveWidth-obj.offsetWidth;
        H=AdMoveConfig.MoveHeight-obj.offsetHeight;
        x = x + step*kx*dirx;
        if (x < 0){dirx = 1;x = 0;kx=Math.sin(rad);ky=Math.cos(rad);} 
        if (x > W){dirx = -1;x = W;kx=Math.sin(rad);ky=Math.cos(rad);}
        y = y + step*ky*diry;
        if (y < 0){diry = 1;y = 0;kx=Math.sin(rad);ky=Math.cos(rad);} 
        if (y > H){diry = -1;y = H;kx=Math.sin(rad);ky=Math.cos(rad);}
    }
    this.Run=function(){
        var delay = 10;
        interval=setInterval(obj.CustomMethod,delay);
        obj.onmouseover=function(){clearInterval(interval);}
        obj.onmouseout=function(){interval=setInterval(obj.CustomMethod, delay);}
    }
}

function init(){
	   $.ajax( {
		url : domain+'/show.shtml',
		type : 'POST',
		dataType : 'json',
		cache : false,
		async : false,
		timeout : 1000,
		error : function()
		{
			alert('查询失败');
		},
		success : function(json) 
		{
			if(json.CODE=='0')
			{
				if(json.CENTERLIST!=null)
				{
					var str = '';
					var ls = new Array();
					for(var i =0;i<json.CENTERLIST.length;i++)
					{
						ls.push(json.CENTERLIST[i].ADVERTISING_ID);
						var url = '';
						if(json.CENTERLIST[i].ADVERTISING_URL!=null)
						{
							url = ' onClick="window.top.location=\''+json.CENTERLIST[i].ADVERTISING_URL+'\';"';
							//url = 'onClick="window.top.location=\'http://www.baidu.com\';"';
						}
						str = str+ '<div id="'+json.CENTERLIST[i].ADVERTISING_ID+'" style="width:100px;height:100px;background-image:url('+json.CENTERLIST[i].ADVERTISING_IMAGE+');"'+url+'></div>';
					}
					document.getElementById("aa").innerHTML = str;
					//document.getElementById("bb").innerText = str;
					for(var j =0;j<ls.length;j++)
					{
						var ad=new AdMove(ls[j]);
    			  		ad.Run();
					}
				}
				//if(json.LEFTLIST!=null)
				//{
				//	showLeftAndRight("L","1");
				//	window.onscroll=scall;
				//	window.onresize=scall;
				//	window.onload=scall;	
				//}
			}
		}
	});
	}
/*
function showLeftAndRight(i,j)
{
	if(i=='R')
	{
		var ClosebuttonRightHtml = '<div align="right" style="position: absolute;top:0px;right:0px;margin:2px;padding:2px;z-index:2000;"><a href="javascript:;" onclick="hidead(\"0\")" style="color:red;text-decoration:none;font-size:12px;">关闭</a></div>';
		var AdRightContentHtml = '<div align="center" style="color:green;font-size:23pt;font-family:黑体;"><br><br>广<br>告<br>内<br>容</div>';
		//document.write('<div id="Javascript.RightDiv" style="position: absolute;border: 1px solid #336699;background-color:#EEEEE2;z-index:1000;width:'+AdDivW+'px;height:'+AdDivH+'px;top:-1000px;word-break:break-all;display:none;">'+ClosebuttonRightHtml+'<div>'+AdRightContentHtml+'</div></div>');
		 //document.write
	}
	else
	{
		
		var ClosebuttonLeftHtml = '<div align="right" style="position: absolute;top:0px;right:0px;margin:2px;padding:2px;z-index:2000;"><a href="javascript:;" onclick="hidead(\"1\")" style="color:red;text-decoration:none;font-size:12px;">关闭</a></div>';
		var AdLeftContentHtml = '<div align="center" style="color:green;font-size:23pt;font-family:黑体;"><br><br>广<br>告<br>内<br>容</div>';
		//document.getElementById("bb").innerHTML = '<div id="Javascript.LeftDiv" style="position: absolute;border: 1px solid #336699;background-color:#EEEEE2;z-index:1000;width:'+AdDivW+'px;height:'+AdDivH+'px;top:-1000px;word-break:break-all;display:none;">'+ClosebuttonLeftHtml+'<div>'+AdLeftContentHtml+'</div></div>';
	}
	
}


var showad = true;
var Toppx = 60;			//上端位置
var AdDivW = 100;		//宽度
var AdDivH = 360;		//高度
var PageWidth = 800;	//页面多少宽度象素下正好不出现左右滚动条
var MinScreenW = 1024;	//显示广告的最小屏幕宽度象素
var ClosebuttonRightHtml = '<div align="right" style="position: absolute;top:0px;right:0px;margin:2px;padding:2px;z-index:2000;"><a href="javascript:;" onclick="hidead(0)" style="color:red;text-decoration:none;font-size:12px;">关闭</a></div>';
var AdRightContentHtml = '<div align="center" style="color:green;font-size:23pt;font-family:黑体;"><br><br>广<br>告<br>内<br>容</div>';
var ClosebuttonLeftHtml = '<div align="right" style="position: absolute;top:0px;right:0px;margin:2px;padding:2px;z-index:2000;"><a href="javascript:;" onclick="hidead(1)" style="color:red;text-decoration:none;font-size:12px;">关闭</a></div>';
var AdLeftContentHtml = '<div align="center" style="color:green;font-size:23pt;font-family:黑体;"><br><br>广<br>告<br>内<br>容</div>';
document.write('<div id="Javascript.RightDiv" style="position: absolute;border: 1px solid #336699;background-color:#EEEEE2;z-index:1000;width:'+AdDivW+'px;height:'+AdDivH+'px;top:-1000px;word-break:break-all;display:none;">'+ClosebuttonRightHtml+'<div>'+AdRightContentHtml+'</div></div>');
document.write('<div id="Javascript.LeftDiv" style="position: absolute;border: 1px solid #336699;background-color:#EEEEE2;z-index:1000;width:'+AdDivW+'px;height:'+AdDivH+'px;top:-1000px;word-break:break-all;display:none;">'+ClosebuttonLeftHtml+'<div>'+AdLeftContentHtml+'</div></div>');

function scall(){
	if(!showad){return;}
	if (window.screen.width<MinScreenW){
		alert("临时提示：\n\n显示器分辨率宽度小于"+MinScreenW+",不显示广告");
		showad = false;
		document.getElementById("Javascript.LeftDiv").style.display="none";
		document.getElementById("Javascript.RightDiv").style.display="none";
		return;
	}
	var Borderpx = ((window.screen.width-PageWidth)/2-AdDivW)/2;

	document.getElementById("Javascript.LeftDiv").style.display="";
	document.getElementById("Javascript.LeftDiv").style.top=document.body.scrollTop+Toppx;
	document.getElementById("Javascript.LeftDiv").style.left=document.body.scrollLeft+Borderpx;
	document.getElementById("Javascript.RightDiv").style.display="";
	document.getElementById("Javascript.RightDiv").style.top=document.body.scrollTop+Toppx;
	document.getElementById("Javascript.RightDiv").style.left=document.body.scrollLeft+document.body.clientWidth-document.getElementById("Javascript.RightDiv").offsetWidth-Borderpx;
}

function hidead(i)
{
	showad = false;
	if(i=='0')
	{
		document.getElementById("Javascript.RightDiv").style.display="none";
	}
	else
	{
		document.getElementById("Javascript.LeftDiv").style.display="none";
	}
}
//window.onscroll=scall;
//window.onresize=scall;
//window.onload=scall;
*/
