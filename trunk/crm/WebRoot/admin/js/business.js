function getType3(obj){
	var td = document.getElementById("showtypetd");
	var zysxTD = document.getElementById("zysx");
	zysxTD.innerHTML="";
	
	if(obj.value=="11"){
		td.innerHTML="";
		//������ʾ
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>��ͨ״̬</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate'>"+
								 "<option value='-1'>=δѡ��=</option>"+
								 "<option value='0'>��ͨ</option><option value='1'>�ر�</option></select>"+
								 "</td>	<td class='STYLE1' width='100' align='center'>����</td>"+
								 "<td ><select id='canuserdate' name='canuserdate'><option value='-1'>=δѡ��=</option>"+
								 "<option value='0'>������Ч</option><option value='1'>������Ч</option></select></td></tr></table>";
	
		td.innerHTML=inhtml;	
		
	}else if(obj.value=="14"){
		td.innerHTML="";
		//��������
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>��ͨ״̬</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate'>"+
								 "<option value='-1'>=δѡ��=</option>"+
								 "<option value='0'>��ͨ</option><option value='1'>�ر�</option></select>"+
								 "</td>	<td class='STYLE1' width='100' align='center'>����</td>"+
								 "<td ><select id='canuserdate' name='canuserdate'><option value='-1'>=δѡ��=</option>"+
								 "<option value='0'>������Ч</option><option value='1'>������Ч</option></select></td></tr></table>";
	
		td.innerHTML=inhtml;	
																
	}else if(obj.value=="17"){
		td.innerHTML="";
		//������ʾ
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>��ͨ״̬</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate'>"+
								 "<option value='-1'>=δѡ��=</option><option value='0'>��ͨ</option><option value='1'>�ر�</option></select>"+
								 "</td>	<td class='STYLE1' width='100' align='center'>�������</td>"+
								 "<td class='STYLE1' width='120'><input type='text' id='call' name='call' style='width:100' maxlength='15'"+
								 " onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}'  />"+
								 "</td><td class='STYLE1' width='100' align='center'>ת�ƺ���</td><td>"+
								 "<input type='text' id='move' name='move' style='width:100'  maxlength='15' "+
								 "  onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}'/></td></tr></table>";
	
		td.innerHTML=inhtml;
		var zysx = "<font color='red'>�����õĺ�ת������޹̻����ֻ����룬�����̺ŵĺ���ת�ƾ���������<br></font>"
		zysxTD.innerHTML=zysx;
											
	}else if(obj.value=="21"){
		td.innerHTML="";
		
		var zysx = "<font color='red'>��Ȼ����ͬһ�û�ID���ֻ�ɽ�������1������������������2�β��������Ƿ�ѡ�<br></font>"
		zysxTD.innerHTML=zysx;
		
	}else if(obj.value=="22"){
		td.innerHTML="";
		//��ʱ����
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>�����Ž��</td>"+								 
								 "<td class='STYLE1' width='120'><input type='text' id='creditfee' name='creditfee' style='width:50' readonly='true'/>Ԫ</td>"+
								 "<td  class='STYLE1' width='100' align='center'>ʵ�����Ž��</td><td width='100'>"+
								 "<select id='factfee' name='factfee'><option value='0'>=δѡ��=</option>"+
								 "<option value='30'>30Ԫ</option><option value='50'>50Ԫ</option><option value='80'>80Ԫ</option>"+
								 "<option value='100'>100Ԫ</option><select></td><td class='STYLE1' width='100' align='center'>"+
								 "����ԭ��</td><td><select id='why' name='why'><option value='0'>====δѡ��====</option>"+
								 "<option value='1'>��������ɷѲ���</option><option value='2'>��������</option></select></td></tr></table>";
		
		td.innerHTML=inhtml;
		document.getElementById("creditfee").value=grade;
		
		var zysx = "<font color='red'>���Ž���ѯ��<br>1��������һ���Կ����Ž��Ϊ30Ԫ��<br>2���𿨣�һ���Կ����Ž��Ϊ50Ԫ��<br>"+
					"3��שʯ����һ���Կ����Ž��Ϊ100Ԫ��<br>4��ÿ���£���Ȼ�£�ֻ������һ����ʱ���ŵķ���<br></font>"
		zysxTD.innerHTML=zysx;
											
	}else if(obj.value=="26"){
		td.innerHTML="";
		//����ͣ��
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>����ĵ绰����</td>"+								 
								 "<td class='STYLE1' width='120'><input type='text' maxlength='15' onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}' id='call' name='call' style='width:100'/></td>"+
								 "</tr></table>";
		
		td.innerHTML=inhtml;	
											
	}else if(obj.value=="27"){
		td.innerHTML="";
		//����ͣ��
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>����ĵ绰����</td>"+								 
								 "<td class='STYLE1' width='120'><input type='text' maxlength='15' onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}' id='call' name='call' style='width:100'/></td>"+
								 "</tr></table>";
		
		td.innerHTML=inhtml;	
											
	}else if(obj.value=="28"){
		td.innerHTML="";
		//���ڳ�;
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>��ͨ״̬</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate'>"+
								 "<option value='-1'>=δѡ��=</option>"+
								 "<option value='0'>��ͨ</option><option value='1'>�ر�</option></select>"+
								 "</td></tr></table>";
	
		td.innerHTML=inhtml;	
		
	}else if(obj.value=="30"){
		td.innerHTML="";
		//���ʳ�;
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>��ͨ״̬</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate'>"+
								 "<option value='-1'>=δѡ��=</option>"+
								 "<option value='0'>��ͨ</option><option value='1'>�ر�</option></select>"+
								 "</td></tr></table>";
	
		td.innerHTML=inhtml;		
	
	}else if(obj.value=="32"){
		td.innerHTML="";
		//��ֵ
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>��ͨ״̬</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate'>"+
								 "<option value='-1'>=δѡ��=</option>"+
								 "<option value='0'>��ͨ</option><option value='1'>�ر�</option></select>"+
								 "</td>	<td class='STYLE1' width='100' align='center'>����</td>"+
								 "<td ><select name='canuserdate' id='canuserdate'><option value='-1'>=δѡ��=</option>"+
								 "<option value='0'>������Ч</option><option value='1'>������Ч</option></select></td></tr>"+
								 "<tr><td class='STYLE1' width='100' align='center'>����</td><td width='100'>"+
								 "<select id='type3' name='type3' onchange='getSee(this);'><option value='0'>==δѡ��==</option>"+
								 "<option value='35'>��ͨ����</option><option value='36'>����</option><option value='37'>�������ܱ�</option>"+
								 "<option value='38'>��������</option><option value='39'>���ֿ�</option><option value='45'>8001����</option>"+
								 "</select></td><td colspan='2' id='see'><td></tr></table>";
								 
		td.innerHTML=inhtml;			
	}	else if(obj.value=="46"){
		td.innerHTML="";
		//�ͻ����Ż�
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>��ͨ״̬</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate' onchange='getTemp(this);'>"+
								 "<option value='-1'>=δѡ��=</option>"+
								 "<option value='0'>��ͨ</option><option value='1'>�ر�</option></select>"+
								 "</td>	<td class='STYLE1' width='100' align='center'>����</td>"+
								 "<td id='temp'><select name='canuserdate' id='canuserdate'><option value='-1'>=δѡ��=</option></td></tr>"+
								 "<tr><td class='STYLE1' width='100' align='center'>����</td><td width='150'>"+
								 "<select id='type3' name='type3' onchange='getType4(this);'><option value='0'>====δѡ��====</option>"+
								 "<option value='49'>���Ű���</option><option value='69'>���ʳ�;�Żݰ�</option><option value='82'>���ڳ�;�Żݰ�</option>"+
								 "<option value='86'>ʡ�������Żݰ�</option><option value='90'>æʱ�Żݰ�</option>"+
								 "</select></td><td colspan='2' id='client'><td></tr></table>";
								 
		td.innerHTML=inhtml;
					
	}	else if(obj.value=="91"){
		td.innerHTML="";
		//�ͻ���ѯ��Ϣ���
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>�ʵݵ�ַ</td>"+
								 "<td class='STYLE1' width='100' colspan='3'><input type='text' id='address'  maxlength='50' name='address' style='width:300' />"+
								 "</td></tr><tr><td class='STYLE1' width='100' align='center'>����绰</td>"+
								 "<td><input type='text'  maxlength='15' id='call' name='call' style='width:120' onkeypress='if (event.keyCode<48 || event.keyCode>57){event.keyCode=0;}' /></td>"+
								 "<td class='STYLE1' width='100' align='center'>�ʵݱ�ʶ</td><td><input type='text' maxlength='10' id='ischeck' name='ischeck' style='width:120' /></td>"
								 "</tr></table>";
								 
		td.innerHTML=inhtml;			
	}	else if(obj.value=="92"){
		td.innerHTML="";
	//�ʵݷ���
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>����</td>"+
								 "<td width='100'><select id='type3' name='type3' onchange='getMail(this);'>"+
								 "<option value='0'>===δѡ��===</option>"+
								 "<option value='97'>�˵�����</option><option value='98'>��Ʊ����</option></select>"+
								 "</td><td colspan='2' id='mail'><td></tr></table>";
								 
		td.innerHTML=inhtml;				
	
	}else if(obj.value=="93"){	
		td.innerHTML="";
		var zysx = "<font color='red'>��שʯ���û������д�ҵ�񣡣�<br></font>"
		zysxTD.innerHTML=zysx;
		
	}else if(obj.value=="94"){
		td.innerHTML="";
	//�����������
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100 align='center'>��ͨ״̬</td>"+
								 "<td class='STYLE1' width='100'><select id='openstate' name='openstate'>"+
								 "<option value='-1'>=δѡ��=</option>"+
								 "<option value='0'>��ͨ</option><option value='1'>�ر�</option></select>"+
								 "</td>	<td class='STYLE1' width='100' align='center'>����</td>"+
								 "<td ><select name='canuserdate' id='canuserdate'><option value='-1'>=δѡ��=</option>"+
								 "<option value='0'>������Ч</option><option value='1'>������Ч</option></select></td></tr></table>";
	
		td.innerHTML=inhtml;
	
	}else if(obj.value=="95"){
		td.innerHTML="";
		//�ײͱ��
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100' align='center'>����</td>"+
								 "<td ><select name='canuserdate' id='canuserdate'><option value='-1'>=δѡ��=</option>"+
								 "<option value='0'>������Ч</option><option value='1'>������Ч</option></select></td></tr></table>";
	
		td.innerHTML=inhtml;
	
	}else if(obj.value=="96"){
		td.innerHTML="";
		//�ͻ�����绰����ԤԼ
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'>"+
								 "<tr><td class='STYLE1' width='100' align='center'>����</td>"+
								 "<td ><select name='canuserdate' id='canuserdate'><option value='-1'>=δѡ��=</option>"+
								 "<option value='0'>������Ч</option><option value='1'>������Ч</option></select></td></tr></table>";
	
		td.innerHTML=inhtml;
	
	}else if(obj.value=="0"){
		td.innerHTML="";
	}
}


//********************************************************************
//********************************************************************
//********************************************************************


//�ʵݷ���
function getMail(obj){
	var td = document.getElementById("mail");
	
	if(obj.value=="97"){
		td.innerHTML="";
		//�˵�����
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td class='STYLE1' width='100' align='center'>����</td><td width='100'>"+
								 "<input type='text' maxlength='15' name='name' id='name' style='width:100'/></td>"+
								 "<td class='STYLE1' width='200' align='center' colspan='1'>֤����Ч��������</td>"+
								 "<td colspan='1'><input type='text' id='codedate' name='codedate' style='width:100' readonly='true' onclick='setDay(this);' styleId='invalidate'/></td>"+
								 "</tr><tr><td class='STYLE1' width='100' align='center'>�ʵݵ�ַ</td>"+
								 "<td colspan='3'><input type='text' id='address' name='address' maxlength='50' style='width:100'/></td>"+
								 "</tr></table>";
								 
		td.innerHTML=inhtml;			
	}else if(obj.value=="98"){
		td.innerHTML="";
		//��Ʊ����
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td class='STYLE1' width='100' align='center'>����</td><td width='100'>"+
								 "<input type='text' name='name' id='name' style='width:100' maxlength='15'/></td>"+
								 "<td class='STYLE1' width='100' align='center'>�ʵݵ�ַ</td>"+
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

//�ͻ��Ż�
function getType4(obj){
	var td = document.getElementById("client");
	if(obj.value=="49"){
		td.innerHTML="";
		//���Ű���
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td  width='100'><select id='type4' name='type4' onchange='getType5(this);'>"+
								 "<option value='0'>===δѡ��===</option><option value='50'>����</option>"+
								 "<option value='56'>������</option><option value='61'>����</option></select>"+
								 "</td><td id='info'><td></tr></table>";
								 
		td.innerHTML=inhtml;			
	}else if(obj.value=="69"){
		td.innerHTML="";
		//������;
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td  width='100'><select id='type4' name='type4'>"+
								 "<option value='0'>===δѡ��===</option><option value='70'>����</option>"+
								 "<option value='71'>���ɱ�</option><option value='72'>����</option>"+
								 "<option value='73'>��������</option><option value='74'>���������ô�</option>"+
								 "<option value='75'>�ձ�</option><option value='76'>̨��</option>"+
								 "<option value='77'>���</option><option value='78'>�¼���</option>"+
								 "<option value='79'>��ɫ��</option><option value='80'>ӡ��������</option>"+
								 "<option value='81'>Ӣ��</option></select>"+
								 "</td></tr></table>";
								 
		td.innerHTML=inhtml;			
	}else if(obj.value=="82"){
		td.innerHTML="";
		//���ڳ�;
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td  width='100'><select id='type4' name='type4'>"+
								 "<option value='0'>====δ=ѡ=��====</option><option value='83'>3Ԫ��0.25Ԫ/����</option>"+
								 "<option value='84'>5Ԫ��0.2Ԫ/����</option><option value='85'>10Ԫ��0.15Ԫ/����</option></select>"+
								 "</td></tr></table>";
								 
		td.innerHTML=inhtml;			
	}else if(obj.value=="86"){
		td.innerHTML="";
		//ʡ�ڳ�;
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td  width='100'><select id='type4' name='type4'>"+
								 "<option value='0'>======δ==ѡ==��======</option><option value='87'>10Ԫ�����η�0.4Ԫ/����</option>"+
								 "<option value='88'>20Ԫ�����η�0.3Ԫ/����</option><option value='89'>30Ԫ�����η�0.25Ԫ/����</option></select>"+
								 "</td></tr></table>";
								 
		td.innerHTML=inhtml;			
	}
	else if(obj.value=="90"){
		td.innerHTML="";
		//æʱ�Żݰ�
	}else if(obj.value=="0"){
		td.innerHTML="";
	}
}


//********************************************************************
//********************************************************************
//********************************************************************


//���Ű���
function getType5(obj){
	var td = document.getElementById("info");
	if(obj.value=="50"){
		td.innerHTML="";
		//����
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td  width='100'><select id='type5' name='type5'>"+
								 "<option value='0'>===δѡ��===</option><option value='51'>3Ԫ50��</option>"+
								 "<option value='52'>6Ԫ100��</option><option value='53'>10Ԫ150��</option>"+
								 "<option value='54'>15Ԫ300��</option><option value='55'>20Ԫ500��</option></select>"+
								 "</td></tr></table>";
								 
		td.innerHTML=inhtml;			
	}else if(obj.value=="56"){
		td.innerHTML="";
		//������
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td  width='100'><select id='type5' name='type5'>"+
								 "<option value='0'>===δѡ��===</option><option value='57'>3Ԫ50��</option>"+
								 "<option value='58'>6Ԫ100��</option><option value='59'>10Ԫ150��</option>"+
								 "<option value='60'>18Ԫ300��</option></select></td></tr></table>";
								 
		td.innerHTML=inhtml;																							
	}else if(obj.value=="61"){
		td.innerHTML="";
			//������
		var inhtml = "<table width='100%' cellpadding='0' cellspacing='0'><tr>"+
								 "<td  width='100'><select id='type5' name='type5'>"+
								 "<option value='0'>===δѡ��===</option><option value='62'>5Ԫ60��</option></select></td></tr></table>";
								 
		td.innerHTML=inhtml;	
	}else if(obj.value=="0"){
		td.innerHTML="";
	}
	
}


//********************************************************************
//********************************************************************
//********************************************************************


//���ֿ�
function getSee(obj){	
	var td = document.getElementById("see");
	if(obj.value=="39"){
		td.innerHTML="";
		var inhtml = "<table  cellpadding='0' cellspacing='0'><tr><td class='STYLE1'>"+
								"&nbsp;&nbsp;���ֿ�����&nbsp;&nbsp;</td><td><select id='type4' name='type4'>"+
								"<option value='0'>===δѡ��===</option><option value='40'>����</option><option value='41'>Ц��</option>"+
								"<option value='42'>����������ʿ</option><option value='43'>����Ԥ��</option><option value='44'>ȫ��</option>"+
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
		var inhtml = "<select name='canuserdate' id='canuserdate'><option value='-1'>=δѡ��=</option>"+
					 "<option value='0'>������Ч</option><option value='1'>������Ч</option></select>";
	
		td.innerHTML= inhtml;
	}else if(obj.value=="1"){		
		td.innerHTML="";		
		var inhtml = "<select name='canuserdate' id='canuserdate'><option value='-1'>=δѡ��=</option>"+
					 "<option value='1'>������Ч</option></select>";
		td.innerHTML=inhtml;
	}else if(obj.value=="-1"){
		td.innerHTML="";
	}	
}

//************************************************
//************************************************
