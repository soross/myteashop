// JavaScript Document
// �ر�/����˵�
var status = 1;
function switchSysBar(){
     if (1 == window.status){
		  window.status = 0;
          document.getElementById('switchPoint').innerHTML = '<img src="images/lere01.gif">';
          document.getElementById("frmleft").style.display="none"
     }
     else{
		  window.status = 1;
          document.getElementById('switchPoint').innerHTML = '<img src="images/lere.gif">';
          document.getElementById("frmleft").style.display=""
     }
}
// ��ȡ����˵�����
function getleftbar(obj,id_num,maxs,num){
	var titleobj=obj.getElementsByTagName("a");
	if (titleobj[0]){
		document.getElementById("leftmenu_title").innerHTML = titleobj[0].innerHTML;
	}
	for(var i=0;i<maxs;i++){document.getElementById("menu_"+id_num+i).className=""}
	document.getElementById("menu_"+id_num+num).className="tabms";
}
with (document) {
write("<Div id='VicPopCal' style='POSITION:absolute;VISIBILITY:hidden;border:0px ridge;width:100%;height:100%;top:0;left:0;z-index:100;overflow:hidden;dlsplay:none'>");
write("</Div>");
}

// ******************************Ĭ�����ö���******************************
var TipsPop = null;
var TipsoffsetX = 10; // ��ʾ��λ������������Ҳ�ľ��룻3-12 ����
var TipsoffsetY = 15; // ��ʾ��λ������·��ľ��룻3-12 ����
var TipsPopbg = "#FFFFFF"; // ��ʾ�򱳾�ɫ
var TipsPopfg = "infotext"; // ��ʾ��ǰ��ɫ
var TipsAlpha = 90; // ��ʾ��͸���ȣ�100Ϊ��͸��
var Tipsshadowcolor = "threedlightshadow"; // ��ʾ����Ӱ��ɫ
var Tipsshadowdirection = 135; // ��ʾ����Ӱ����
var TipsTitlebg = "activecaption"; // ��ʾ��������ֱ���
var TipsTitlefg = "captiontext"; // ��ʾ�����������ɫ
var TipsBorderColor = "activecaption"; // ��ʾ�����߿���ɫ
var TipsBorder	= 0; // ��ʾ�����߿���
var TipsBaseWidth = 200; // ��ʾ����С��� ע�����ֵ��ò�ҪС����ʾ������ؿ��
var TipsTitle = ""; // ��ʾ���������
var TipsSmallTitle = "ϵͳ��ʾ";	// ��ʾ�򸱱�������
var TipsTitleCt = " " // �������ֺ͸���������֮������ӷ�

var FormObj;
var UsedForm="none";
var TipsLayer;
// ==================================================================================

document.write('<div id=TipsLayers style="display: none;position: absolute; z-index:10001"></div>');

function Tips(ev){
    var Event=window.event||ev;
    var o=Event.srcElement || Event.target;
    if(o.alt!=null && o.alt!=""){o.dypop=o.alt;o.alt=""};
    if(o.title!=null && o.title!=""){o.dypop=o.title;o.title=""};
	TipsPop=o.dypop;
    TipsLayer=document.getElementById('TipsLayers');
	if(TipsPop!=null && TipsPop!="" && typeof(TipsPop)!="undefined"){
		TipsLayer.style.left=-1000;
		TipsLayer.style.display='';
		var Msg = TipsPop.replace(/\n/g,"<br>"); // ���з�
		Msg = Msg.replace(/\r/g,"<br>"); // �س���
		if(TipsSmallTitle==""){TipsTitleCt="";}
		var attr=(document.location.toString().toLowerCase().indexOf("list.asp")>0?"nowrap":"");
		var content = '<table style="FILTER:alpha(opacity='+TipsAlpha+') shadow(color='+Tipsshadowcolor+',direction='+Tipsshadowdirection+');" id=toolTipTalbes border=0><tr><td width="100%"><table border=0 cellspacing="'+TipsBorder+'" cellpadding="2" style="width:100%;background-color:'+TipsBorderColor+';">'+
		'<tr id=TipsPoptops><th style="width:100%; color:'+TipsTitlefg+'; background-color:'+TipsTitlebg+';" class=s><b><p id=toplefts align=left>�I '+TipsTitle+TipsTitleCt+TipsSmallTitle+'</p><p id=toprights align=right style="display:none" class=s>'+TipsSmallTitle+TipsTitleCt+TipsTitle+' �J</font></b></th></tr>'+
		'<tr><td '+attr+' style="width:100%; background-color:'+TipsPopbg+'; color:'+TipsPopfg+'; padding-left:10px; padding-right:10px; padding-top: 4px; padding-bottom:4px; line-height:135%;font-family: Verdana, Arial, Helvetica, sans-serif, "����";" class=s>'+Msg+'</td></tr>'+
		'<tr id=TipsPopbots style="display:none" class=s><th style="width:100%;color:'+TipsTitlefg+';background-color:'+TipsTitlebg+';" class=s><b><p id=botlefts align=left>�L '+TipsTitle+TipsTitleCt+TipsSmallTitle+'</p><p id=botrights align=right style="display:none">'+TipsSmallTitle+TipsTitleCt+TipsTitle+' �K</font></b></th></tr>'+
		'</table></td></tr></table>';
		TipsLayer.innerHTML = content;
		var toolTipwidth = Math.min(TipsLayer.clientWidth, document.body.clientWidth/2.2);
		if(toolTipwidth<TipsBaseWidth){toolTipwidth=TipsBaseWidth;}
		document.getElementById('toolTipTalbes').style.width=toolTipwidth;
		MoveToMouseLoc(ev);
		return true;
	}else{
		TipsLayer.innerHTML='';
		TipsLayer.style.display='none';
		return true;
	}
}

function MoveToMouseLoc(ev){
	if(TipsLayer.innerHTML==''){return true;}
	var Event=window.event||ev;
	var MouseX=Event.clientX;
	var MouseY=Event.clientY;
	//window.status="x:"+event.offsetX;
	//window.status+=" y:"+event.offsetY;
	var popHeight=TipsLayer.clientHeight;
	var popWidth=TipsLayer.clientWidth;
    TipsPoptop=document.getElementById('TipsPoptops');
    TipsPopbot=document.getElementById('TipsPopbots');
    topleft=document.getElementById('toplefts');
    botleft=document.getElementById('botlefts');
    topright=document.getElementById('toprights');
    botright=document.getElementById('botrights');
	if(MouseY+TipsoffsetY+popHeight>document.body.clientHeight){
		popTopAdjust=-popHeight-TipsoffsetY*1.5;
		TipsPoptop.style.display="none";
		TipsPopbot.style.display="none";
	}else{
		popTopAdjust=0;
		TipsPoptop.style.display="none";
		TipsPopbot.style.display="none";
	}
	if(MouseX+TipsoffsetX+popWidth>document.body.clientWidth){
		popLeftAdjust=-popWidth-TipsoffsetX*2;
		topleft.style.display="none";
		botleft.style.display="none";
		topright.style.display="none";
		botright.style.display="none";
	}else{
		popLeftAdjust=0;
		topleft.style.display="none";
		botleft.style.display="none";
		topright.style.display="none";
		botright.style.display="none";
	}
	TipsLayer.style.left=MouseX+TipsoffsetX+document.documentElement.scrollLeft+popLeftAdjust+"px";
	TipsLayer.style.top=MouseY+TipsoffsetY+document.documentElement.scrollTop+popTopAdjust+"px";
	return true;
}

document.onmousemove = Tips;