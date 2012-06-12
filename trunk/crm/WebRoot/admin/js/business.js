function getType3(obj){
	var td = document.getElementById("showtypetd");
	var zysxTD = document.getElementById("zysx");
	zysxTD.innerHTML="";
	
	if(obj.value=="11"){
		td.innerHTML="";
		//来电显示
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>开通状态</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate'>"+
								 "<option value='-1'>=未选择=</option>"+
								 "<option value='0'>开通</option><option value='1'>关闭</option></select>"+
								 "</td>	<td class='STYLE1' width='100' align='center'>账期</td>"+
								 "<td ><select id='canuserdate' name='canuserdate'><option value='-1'>=未选择=</option>"+
								 "<option value='0'>立即生效</option><option value='1'>次月生效</option></select></td></tr></table>";
	
		td.innerHTML=inhtml;	
		
	}else if(obj.value=="14"){
		td.innerHTML="";
		//主叫隐藏
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>开通状态</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate'>"+
								 "<option value='-1'>=未选择=</option>"+
								 "<option value='0'>开通</option><option value='1'>关闭</option></select>"+
								 "</td>	<td class='STYLE1' width='100' align='center'>账期</td>"+
								 "<td ><select id='canuserdate' name='canuserdate'><option value='-1'>=未选择=</option>"+
								 "<option value='0'>立即生效</option><option value='1'>次月生效</option></select></td></tr></table>";
	
		td.innerHTML=inhtml;	
																
	}else if(obj.value=="17"){
		td.innerHTML="";
		//来电显示
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>开通状态</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate'>"+
								 "<option value='-1'>=未选择=</option><option value='0'>开通</option><option value='1'>关闭</option></select>"+
								 "</td>	<td class='STYLE1' width='100' align='center'>来电号码</td>"+
								 "<td class='STYLE1' width='120'><input type='text' id='call' name='call' style='width:100' maxlength='15'"+
								 " onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}'  />"+
								 "</td><td class='STYLE1' width='100' align='center'>转移号码</td><td>"+
								 "<input type='text' id='move' name='move' style='width:100'  maxlength='15' "+
								 "  onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}'/></td></tr></table>";
	
		td.innerHTML=inhtml;
		var zysx = "<font color='red'>所设置的呼转号码仅限固话或手机号码，其它短号的呼叫转移均不予受理。<br></font>"
		zysxTD.innerHTML=zysx;
											
	}else if(obj.value=="21"){
		td.innerHTML="";
		
		var zysx = "<font color='red'>自然月内同一用户ID最多只可进行连续1次立即开机操作，第2次操作需缴清欠费。<br></font>"
		zysxTD.innerHTML=zysx;
		
	}else if(obj.value=="22"){
		td.innerHTML="";
		//临时授信
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>可授信金额</td>"+								 
								 "<td class='STYLE1' width='120'><input type='text' id='creditfee' name='creditfee' style='width:50' readonly='true'/>元</td>"+
								 "<td  class='STYLE1' width='100' align='center'>实际授信金额</td><td width='100'>"+
								 "<select id='factfee' name='factfee'><option value='0'>=未选择=</option>"+
								 "<option value='30'>30元</option><option value='50'>50元</option><option value='80'>80元</option>"+
								 "<option value='100'>100元</option><select></td><td class='STYLE1' width='100' align='center'>"+
								 "授信原因</td><td><select id='why' name='why'><option value='0'>====未选择====</option>"+
								 "<option value='1'>出差在外缴费不便</option><option value='2'>紧急事务</option></select></td></tr></table>";
		
		td.innerHTML=inhtml;
		document.getElementById("creditfee").value=grade;
		
		var zysx = "<font color='red'>授信金额查询：<br>1、银卡，一次性可授信金额为30元；<br>2、金卡，一次性可授信金额为50元；<br>"+
					"3、砖石卡，一次性可授信金额为100元；<br>4、每个月（自然月）只能享受一个临时授信的服务。<br></font>"
		zysxTD.innerHTML=zysx;
											
	}else if(obj.value=="26"){
		td.innerHTML="";
		//申请停机
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>申请的电话号码</td>"+								 
								 "<td class='STYLE1' width='120'><input type='text' maxlength='15' onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}' id='call' name='call' style='width:100'/></td>"+
								 "</tr></table>";
		
		td.innerHTML=inhtml;	
											
	}else if(obj.value=="27"){
		td.innerHTML="";
		//撤销停机
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>申请的电话号码</td>"+								 
								 "<td class='STYLE1' width='120'><input type='text' maxlength='15' onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}' id='call' name='call' style='width:100'/></td>"+
								 "</tr></table>";
		
		td.innerHTML=inhtml;	
											
	}else if(obj.value=="28"){
		td.innerHTML="";
		//国内长途
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>开通状态</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate'>"+
								 "<option value='-1'>=未选择=</option>"+
								 "<option value='0'>开通</option><option value='1'>关闭</option></select>"+
								 "</td></tr></table>";
	
		td.innerHTML=inhtml;	
		
	}else if(obj.value=="30"){
		td.innerHTML="";
		//国际长途
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>开通状态</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate'>"+
								 "<option value='-1'>=未选择=</option>"+
								 "<option value='0'>开通</option><option value='1'>关闭</option></select>"+
								 "</td></tr></table>";
	
		td.innerHTML=inhtml;		
	
	}else if(obj.value=="32"){
		td.innerHTML="";
		//增值
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>开通状态</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate'>"+
								 "<option value='-1'>=未选择=</option>"+
								 "<option value='0'>开通</option><option value='1'>关闭</option></select>"+
								 "</td>	<td class='STYLE1' width='100' align='center'>账期</td>"+
								 "<td ><select name='canuserdate' id='canuserdate'><option value='-1'>=未选择=</option>"+
								 "<option value='0'>立即生效</option><option value='1'>次月生效</option></select></td></tr>"+
								 "<tr><td class='STYLE1' width='100' align='center'>类型</td><td width='100'>"+
								 "<select id='type3' name='type3' onchange='getSee(this);'><option value='0'>==未选择==</option>"+
								 "<option value='35'>联通秘书</option><option value='36'>炫铃</option><option value='37'>话费周周报</option>"+
								 "<option value='38'>如意邮箱</option><option value='39'>随手看</option><option value='45'>8001短信</option>"+
								 "</select></td><td colspan='2' id='see'><td></tr></table>";
								 
		td.innerHTML=inhtml;			
	}	else if(obj.value=="46"){
		td.innerHTML="";
		//客户化优惠
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>开通状态</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate' onchange='getTemp(this);'>"+
								 "<option value='-1'>=未选择=</option>"+
								 "<option value='0'>开通</option><option value='1'>关闭</option></select>"+
								 "</td>	<td class='STYLE1' width='100' align='center'>账期</td>"+
								 "<td id='temp'><select name='canuserdate' id='canuserdate'><option value='-1'>=未选择=</option></td></tr>"+
								 "<tr><td class='STYLE1' width='100' align='center'>类型</td><td width='150'>"+
								 "<select id='type3' name='type3' onchange='getType4(this);'><option value='0'>====未选择====</option>"+
								 "<option value='49'>短信包月</option><option value='69'>国际长途优惠包</option><option value='82'>国内长途优惠包</option>"+
								 "<option value='86'>省内漫游优惠包</option><option value='90'>忙时优惠包</option>"+
								 "</select></td><td colspan='2' id='client'><td></tr></table>";
								 
		td.innerHTML=inhtml;
					
	}	else if(obj.value=="91"){
		td.innerHTML="";
		//客户查询信息变更
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>邮递地址</td>"+
								 "<td class='STYLE1' width='100' colspan='3'><input type='text' id='address'  maxlength='50' name='address' style='width:300' />"+
								 "</td></tr><tr><td class='STYLE1' width='100' align='center'>联络电话</td>"+
								 "<td><input type='text'  maxlength='15' id='call' name='call' style='width:120' onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}' /></td>"+
								 "<td class='STYLE1' width='100' align='center'>邮递标识</td><td><input type='text' maxlength='10' id='ischeck' name='ischeck' style='width:120' /></td>"
								 "</tr></table>";
								 
		td.innerHTML=inhtml;			
	}	else if(obj.value=="92"){
		td.innerHTML="";
	//邮递服务
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>类型</td>"+
								 "<td width='100'><select id='type3' name='type3' onchange='getMail(this);'>"+
								 "<option value='0'>===未选择===</option>"+
								 "<option value='97'>账单寄送</option><option value='98'>发票寄送</option></select>"+
								 "</td><td colspan='2' id='mail'><td></tr></table>";
								 
		td.innerHTML=inhtml;				
	
	}else if(obj.value=="93"){	
		td.innerHTML="";
		var zysx = "<font color='red'>仅砖石卡用户才享有此业务！！<br></font>"
		zysxTD.innerHTML=zysx;
		
	}else if(obj.value=="94"){
		td.innerHTML="";
	//代办国籍漫游
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>开通状态</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate'>"+
								 "<option value='-1'>=未选择=</option>"+
								 "<option value='0'>开通</option><option value='1'>关闭</option></select>"+
								 "</td>	<td class='STYLE1' width='100' align='center'>账期</td>"+
								 "<td ><select name='canuserdate' id='canuserdate'><option value='-1'>=未选择=</option>"+
								 "<option value='0'>立即生效</option><option value='1'>次月生效</option></select></td></tr></table>";
	
		td.innerHTML=inhtml;
	
	}else if(obj.value=="95"){
		td.innerHTML="";
		//套餐变更
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100' align='center'>账期</td>"+
								 "<td ><select name='canuserdate' id='canuserdate'><option value='-1'>=未选择=</option>"+
								 "<option value='0'>立即生效</option><option value='1'>次月生效</option></select></td></tr></table>";
	
		td.innerHTML=inhtml;
	
	}else if(obj.value=="96"){
		td.innerHTML="";
		//客户经理电话服务预约
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100' align='center'>账期</td>"+
								 "<td ><select name='canuserdate' id='canuserdate'><option value='-1'>=未选择=</option>"+
								 "<option value='0'>立即生效</option><option value='1'>次月生效</option></select></td></tr></table>";
	
		td.innerHTML=inhtml;
	
	}else if(obj.value=="0"){
		td.innerHTML="";
	}
}


//********************************************************************
//********************************************************************
//********************************************************************


//邮递服务
function getMail(obj){
	var td = document.getElementById("mail");
	
	if(obj.value=="97"){
		td.innerHTML="";
		//账单寄送
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td class='STYLE1' width='100' align='center'>姓名</td><td width='100'>"+
								 "<input type='text' maxlength='15' name='name' id='name' style='width:100'/></td>"+
								 "<td class='STYLE1' width='200' align='center' colspan='1'>证件有效截至日期</td>"+
								 "<td colspan='1'><input type='text' id='codedate' name='codedate' style='width:100' readonly='true' onclick='setDay(this);' styleId='invalidate'/></td>"+
								 "</tr><tr><td class='STYLE1' width='100' align='center'>邮递地址</td>"+
								 "<td colspan='3'><input type='text' id='address' name='address' maxlength='50' style='width:100'/></td>"+
								 "</tr></table>";
								 
		td.innerHTML=inhtml;			
	}else if(obj.value=="98"){
		td.innerHTML="";
		//发票寄送
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td class='STYLE1' width='100' align='center'>姓名</td><td width='100'>"+
								 "<input type='text' name='name' id='name' style='width:100' maxlength='15'/></td>"+
								 "<td class='STYLE1' width='100' align='center'>邮递地址</td>"+
								 "<td><input type='text' id='address' name='address' style='width:100' maxlength='50'/></td>"+
								 "</tr></table>";
								 
		td.innerHTML=inhtml;	
	
	}else if(obj.value=="0"){
		td.innerHTML=""
	}
}

//********************************************************************
//********************************************************************
//********************************************************************

//客户优惠
function getType4(obj){
	var td = document.getElementById("client");
	if(obj.value=="49"){
		td.innerHTML="";
		//短信包月
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td  width='100'><select id='type4' name='type4' onchange='getType5(this);'>"+
								 "<option value='0'>===未选择===</option><option value='50'>网内</option>"+
								 "<option value='56'>网内外</option><option value='61'>网外</option></select>"+
								 "</td><td id='info'><td></tr></table>";
								 
		td.innerHTML=inhtml;			
	}else if(obj.value=="69"){
		td.innerHTML="";
		//国籍长途
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td  width='100'><select id='type4' name='type4'>"+
								 "<option value='0'>===未选择===</option><option value='70'>澳门</option>"+
								 "<option value='71'>菲律宾</option><option value='72'>韩国</option>"+
								 "<option value='73'>马来西亚</option><option value='74'>美国、加拿大</option>"+
								 "<option value='75'>日本</option><option value='76'>台湾</option>"+
								 "<option value='77'>香港</option><option value='78'>新加坡</option>"+
								 "<option value='79'>以色列</option><option value='80'>印度尼西亚</option>"+
								 "<option value='81'>英国</option></select>"+
								 "</td></tr></table>";
								 
		td.innerHTML=inhtml;			
	}else if(obj.value=="82"){
		td.innerHTML="";
		//国内长途
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td  width='100'><select id='type4' name='type4'>"+
								 "<option value='0'>====未=选=择====</option><option value='83'>3元，0.25元/分钟</option>"+
								 "<option value='84'>5元，0.2元/分钟</option><option value='85'>10元，0.15元/分钟</option></select>"+
								 "</td></tr></table>";
								 
		td.innerHTML=inhtml;			
	}else if(obj.value=="86"){
		td.innerHTML="";
		//省内长途
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td  width='100'><select id='type4' name='type4'>"+
								 "<option value='0'>======未==选==择======</option><option value='87'>10元，漫游费0.4元/分钟</option>"+
								 "<option value='88'>20元，漫游费0.3元/分钟</option><option value='89'>30元，漫游费0.25元/分钟</option></select>"+
								 "</td></tr></table>";
								 
		td.innerHTML=inhtml;			
	}
	else if(obj.value=="90"){
		td.innerHTML="";
		//忙时优惠包
	}else if(obj.value=="0"){
		td.innerHTML="";
	}
}


//********************************************************************
//********************************************************************
//********************************************************************


//短信包月
function getType5(obj){
	var td = document.getElementById("info");
	if(obj.value=="50"){
		td.innerHTML="";
		//网内
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td  width='100'><select id='type5' name='type5'>"+
								 "<option value='0'>===未选择===</option><option value='51'>3元50条</option>"+
								 "<option value='52'>6元100条</option><option value='53'>10元150条</option>"+
								 "<option value='54'>15元300条</option><option value='55'>20元500条</option></select>"+
								 "</td></tr></table>";
								 
		td.innerHTML=inhtml;			
	}else if(obj.value=="56"){
		td.innerHTML="";
		//网内外
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td  width='100'><select id='type5' name='type5'>"+
								 "<option value='0'>===未选择===</option><option value='57'>3元50条</option>"+
								 "<option value='58'>6元100条</option><option value='59'>10元150条</option>"+
								 "<option value='60'>18元300条</option></select></td></tr></table>";
								 
		td.innerHTML=inhtml;																							
	}else if(obj.value=="61"){
		td.innerHTML="";
			//网内外
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td  width='100'><select id='type5' name='type5'>"+
								 "<option value='0'>===未选择===</option><option value='62'>5元60条</option></select></td></tr></table>";
								 
		td.innerHTML=inhtml;	
	}else if(obj.value=="0"){
		td.innerHTML="";
	}
	
}


//********************************************************************
//********************************************************************
//********************************************************************


//随手看
function getSee(obj){	
	var td = document.getElementById("see");
	if(obj.value=="39"){
		td.innerHTML="";
		var inhtml = "<table  cellpadding='0' cellspacing='0'><tr><td class='STYLE1'>"+
								"&nbsp;&nbsp;随手看类型&nbsp;&nbsp;</td><td><select id='type4' name='type4'>"+
								"<option value='0'>===未选择===</option><option value='40'>新闻</option><option value='41'>笑话</option>"+
								"<option value='42'>健康生活贴士</option><option value='43'>天气预报</option><option value='44'>全部</option>"+
								"</select></td></tr></table>"
	
		td.innerHTML= inhtml;
	}else if(obj.value=="0"){
		td.innerHTML="";
	}	
}

function getTemp(obj){
	var td = document.getElementById("temp");
	if(obj.value=="0"){
		td.innerHTML="";
		var inhtml = "<select name='canuserdate' id='canuserdate'><option value='-1'>=未选择=</option>"+
					 "<option value='0'>立即生效</option><option value='1'>次月生效</option></select>";
	
		td.innerHTML= inhtml;
	}else if(obj.value=="1"){		
		td.innerHTML="";		
		var inhtml = "<select name='canuserdate' id='canuserdate'><option value='-1'>=未选择=</option>"+
					 "<option value='1'>次月生效</option></select>";
		td.innerHTML=inhtml;
	}else if(obj.value=="-1"){
		td.innerHTML="";
	}	
}

//************************************************
//************************************************
