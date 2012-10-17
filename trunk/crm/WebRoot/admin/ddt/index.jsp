<%@ page language="java" pageEncoding="GBK"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />
	<title>�м���ҳ��</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<link href="${pageContext.request.contextPath}/admin/css/style.css"
		rel="stylesheet" type="text/css">

	<style>
body {
	
}

#divSCA {
	position: absolute;
	width: 300px;
	height: 200px;
	font-size: 12px;
	background: #EEF7FD;
	border: 0px solid #000;
	z-index: 10001;
	display: none;
	text-algin: center;
	padding: 10px 0 0 10px;
}
</style>
</head>
<body>
	<table id="tabinfo" cellpadding="2" cellspacing="1" border="0"
		class="tableBorder" align=center>
		<tr>
			<th colspan=2 height=25>
				�ճ����Ʋ���
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>�ճ����Ʋ���ѡ�</b> [
				<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<table width="98%" align=center>
		<tr valign="top">
			<td width="200px">
				<!-- frame -->
				<iframe src="${pageContext.request.contextPath}/admin/his.do?task=TreeFrame" frameborder="0" height="100%" width="220px"
					scrolling="auto" marginwidth="0px" marginheight="0px"></iframe>
			</td>
			<td id="formTD">
				<html:form action="/admin/his" method="post">
					<table cellpadding="3" cellspacing="1" border="0"
						class="tableBorder tableth" align="center" width="100%">
						<tr>
							<th height="25">
								����ID
							</th>
							<td colspan="3">
								<html:text property="sufferer" size="30" maxlength="30" />
							</td>
							<th height="25">
								����
							</th>
							<td colspan="2">
								<html:text property="createDate" size="15"
									onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd'});"
									styleId="createDate" styleClass="Wdate" readonly="true" />
							</td>
							<th height="25px">
								������
							</th>
							<td colspan="2">
								<html:text property="hisno" size="20" />
							</td>
						</tr>
						<tr>
							<th height="25">
								����
							</th>
							<td>
								<html:text property="name" size="15" />
							</td>
							<th height="25">
								�Ա�
							</th>
							<td>
								<html:select property="garden">
									<html:option value="0">��</html:option>
									<html:option value="1">Ů</html:option>
								</html:select>
							</td>
							<th height="25">
								����
							</th>
							<td>
								<html:text property="old" size="15" />
							</td>
							<th height="25px">
								���
							</th>
							<td colspan="2">
								<html:select property="ismarry">
									<html:option value="0">δ��</html:option>
									<html:option value="1">�ѻ�</html:option>
								</html:select>
							</td>
							<td rowspan="7">
								<div id="context-menu-one" class="context-menu-one"
									style="border: 2px solid #3399CC; width: 120px; height: 180px; margin-left: 20px; cursor: pointer;";>
								</div>
							</td>
						</tr>
						<tr>
							<th height=25>
								���
							</th>
							<td>
								<html:text property="height" size="10" />
								CM
							</td>
							<th height=25>
								����
							</th>
							<td>
								<html:text property="weight" size="10" />
								KG
							</td>
							<th height=25>
								ְҵ
							</th>
							<td>
								<html:text property="job" size="15" />
							</td>

							<th height=25>
								��ϵ��
							</th>
							<td colspan="2">
								<html:text property="linkman" size="15" />
							</td>
						</tr>
						<tr>
							<th height=25>
								��ϵ
							</th>
							<td>
								<html:text property="relation" size="15" />
							</td>
							<th height=25>
								��ϵ�绰
							</th>
							<td colspan="2">
								<html:text property="linktel" size="15" />
							</td>
							<th height=25>
								�ɼ�ʱ��
							</th>
							<td colspan="3">
								<html:text property="gatherDate" size="22"
									onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'});"
									styleId="gatherDate" styleClass="Wdate" readonly="true" />
							</td>
						</tr>
						<tr>
							<th height=25>
								��ַ
							</th>
							<td colspan="5">
								<html:text property="address" size="55" />
							</td>
							<th height=25>
								�绰
							</th>
							<td colspan="2">
								<html:text property="tel" size="15" />
							</td>
						</tr>
						<tr>
							<th height=25>
								��ϵ��ַ
							</th>
							<td colspan="5">
								<html:text property="linkadd" size="55" />
							</td>
							<th height=25>
								��ϵ��ַ�绰
							</th>
							<td colspan="2">
								<html:text property="linkaddrel" size="15" />
							</td>
						</tr>
						<tr>
							<th height=25>
								����
							</th>
							<td colspan="4">
								<html:text property="deptid" size="15" />
							</td>
							<th height=25>
								��ʷ����
							</th>
							<td colspan="3">
								<html:text property="hisstate" size="15" />
							</td>
						</tr>
						<tr>
							<th height=25>
								��������
							</th>
							<td colspan="2">
								<html:text property="cycle" size="15" />
							</td>
							<th height=25>
								�ɿ��̶�
							</th>
							<td colspan="2">
								<html:text property="hislevel" size="15" />
							</td>
							<th height=25>
								X��CT��
							</th>
							<td colspan="2">
								<html:text property="xregctno" size="15" />
							</td>
						</tr>
						<tr>
							<th height=25>
								����ҩ��
							</th>
							<td colspan="4">
								<html:text property="allergy" size="35" />
							</td>
							<th height=25>
								��ע
							</th>
							<td colspan="4">
								<html:text property="remark" size="35" />
							</td>
						</tr>

						<tr>
							<th height=25>
								����
							</th>
							<td colspan="9">
								<html:text property="state" size="80" />
							</td>
						</tr>

						<tr>
							<th height=25>
								�ֲ�ʷ
							</th>
							<td colspan="9">
								<html:textarea property="hisNow" rows="3" cols="80"></html:textarea>
							</td>
						</tr>

						<tr>
							<th height=25>
								����ʷ
							</th>
							<td colspan="9">
								<html:textarea property="hisSelf" rows="3" cols="80"></html:textarea>
							</td>
						</tr>

						<tr>
							<th height=25>
								����ʷ
							</th>
							<td colspan="9">
								<html:textarea property="hisMarry" rows="3" cols="80"></html:textarea>
							</td>
						</tr>
						<tr>
							<th>
								����ʷ
							</th>
							<td colspan="9">
								<html:textarea property="hisFamily" rows="3" cols="80"></html:textarea>
							</td>
						</tr>
						<tr>
							<th>
								�������
							</th>
							<td colspan="9">
								<html:textarea property="helpCheckup" rows="3" cols="80"></html:textarea>
							</td>
						</tr>
						<tr>
							<th>
								������װʷ
							</th>
							<td colspan="9">
								<html:textarea property="hisSetup" rows="3" cols="80"></html:textarea>
							</td>
						</tr>
						<tr>
							<th>
								���ƽ��
							</th>
							<td colspan="9">
								<html:textarea property="result"
									onfocus="JavaScript:$('#divSCA').OpenDiv();" styleId="result"
									rows="3" cols="80"></html:textarea>
							</td>
						</tr>
						<tr>
							<th>
								<strong>����</strong>
							</th>
							<td colspan="9">
								<html:textarea property="dispose" rows="3" cols="80"></html:textarea>
							</td>
						</tr>
						<tr>
							<td colspan="10" align="right">
								������ǩ�֣�________________&nbsp;�������ڣ�________��____��____��
							</td>
						</tr>
					</table>
					<table cellpadding="3" cellspacing="1" border="0"
						class="tableBorder tableth" align="center" width="100%">
						<tr>
							<td align="center">
								<input type="submit" value="ȷ��" onclick="javascript:goUrl('');">
								&nbsp;
								<input type="button" value="ȡ��" onclick="javascript:goUrl('');">
							</td>
						</tr>
					</table>
				</html:form>
			</td>
		</tr>
	</table>











	<div class="contextMenu" id="myMenu2">
		<ul>
			<li id="upload">
				�����ϴ�ͷ��
			</li>
			<li id="camera">
				����ͷ����
			</li>
			<li id="save">
				����ͷ��
			</li>
			<li id="delete">
				ɾ��ͷ��
			</li>
		</ul>
	</div>



	<div id="divSCA" style="margin-top: 400px; display: none;">
		<table>
			<tr>
				<td><br>
					<table id="typeone" width="400px">
						<tr>
							<td>
								�������
							</td>
							<td>
								<input id="aaaaa1" name="aaaaa" size="35" />
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
					</table>
			<table id="typetwo" width="400px">
				<tr>
					<td>
						�������
					</td>
					<td>
						<input name="bbbbb" size="35" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
			</table>
			<table id="typethree" width="400px">
				<tr>
					<td>
						�������
					</td>
					<td>
						<input name="ccccc" size="35" />
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
			</table>

			<table>
				<tr>
					<td>
						<input type="button" value="���Ӽ������"
							onclick="insertTypeOne('typeone');">
					</td>
					<td>
						<input type="button" value="���Ӳ������"
							onclick="insertTypeTwo('typetwo');">
					</td>
					<td>
						<input type="button" value="���Ӳ������"
							onclick="insertTypeThree('typethree');">
					</td>
					<td>
						<input type="button" value="ȷ��" onclick="getResult();closeDiv();">
					</td>
				</tr>
			</table>
			</td>
			</tr>
		</table>
		<br>
		<br>
	</div>
</body>



<div id="divPhoto"
	style="height: 300px :           weight :           240px; display: none;">
	<input type="hidden" id="picData1" name="picData1" />
	<input type="hidden" id="picExt1" name="picExt1" />
	<input type="hidden" id="picData2" name="picData2" />
	<input type="hidden" id="picExt2" name="picExt2" />
	<table>
		<tr>
			<td>
				<object classid="clsid:34681DB3-58E6-4512-86F2-9477F1A9F3D8"
					id="cap1" width="245px" height="305px"
					codebase="${pageContext.request.contextPath}/cabs/ImageCapOnWeb.cab#version=2,0,2,14">
					<param name="Visible" value="0">
					<param name="AutoScroll" value="0">
					<param name="AutoSize" value="0">
					<param name="AxBorderStyle" value="1">
					<param name="Caption" value="scaner">
					<param name="Color" value="4278190095">
					<param name="Font" value="����">
					<param name="KeyPreview" value="0">
					<param name="PixelsPerInch" value="96">
					<param name="PrintScale" value="1">
					<param name="Scaled" value="-1">
					<param name="DropTarget" value="0">
					<param name="HelpFile" value>
					<param name="PopupMode" value="0">
					<param name="ScreenSnap" value="0">
					<param name="SnapBuffer" value="10">
					<param name="DockSite" value="0">
					<param name="DoubleBuffered" value="0">
					<param name="ParentDoubleBuffered" value="0">
					<param name="UseDockManager" value="0">
					<param name="Enabled" value="-1">
					<param name="AlignWithMargins" value="0">
					<param name="ParentCustomHint" value="-1">
					<param name="licenseMode" value="2">
					<param name="key1" value="">
					<param name="key2" value="">
				</object>
			</td>
		</tr>
		<tr>
			<td align="center">

				<input type="button" value="����" onclick="javascript:capPicture1();" />
				&nbsp;
				<input type="button" value="����"
					onclick="javascript:document.getElementById('cap1').clear(); startCam();" />
				&nbsp;
				<input type="button" value="�ر�"
					onclick="javascript:closeDivPhoto();" />
				&nbsp;
				<input type="button" value="ȷ���ϴ�" id="btnUpload1"
					onclick="javascript:ajax_post_1();" />
			</td>
		</tr>
	</table>
</div>











<!-- �һ��˵� -->
<script language="javascript"
	src="${pageContext.request.contextPath}/admin/js/jquery.min.js"></script>
<script language="javascript"
	src="${pageContext.request.contextPath}/admin/js/jquery.contextmenu.r2.js"></script>
<script>
    $('#context-menu-one').contextMenu('myMenu2', {
      menuStyle: {
        border: '2px solid #3399CC'
      },
      itemStyle: {
        fontFamily : '΢���ź�',
        backgroundColor : '#99CCCC',
        color: '#000000',
        border: 'none',
        padding: '1px'
      },

      itemHoverStyle: {
        color: '#FFFFFF',
        backgroundColor: '#0066CC',
        border: 'none',
        cursor:'hand'
      },
      bindings: {
        'upload': function(t) {
          openDiv();
        },
        'camera': function(t) {
          //alert('Trigger was '+t.id+'\nAction was Open');
          openDivPhoto();
          startCam();
        },
        'save': function(t) {
          alert('Trigger was '+t.id+'\nAction was Open');
        },
        'delete': function(t) {
          alert('Trigger was '+t.id+'\nAction was Open');
        }
      }
    });
</script>

<!--  ajax�ϴ� -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/admin/js/jquery.ajaxfileupload.js"></script>

<script type="text/javascript">
function ajaxFileUpload()
{
    $("#loading")
    	.ajaxStart(function(){
        $(this).show();
    })//��ʼ�ϴ��ļ�ʱ��ʾһ��ͼƬ
    .ajaxComplete(function(){
        $(this).hide();
    });//�ļ��ϴ���ɽ�ͼƬ��������
    
    $.ajaxFileUpload
    (
        {
            url:'${pageContext.request.contextPath}/admin/cust.do?task=uploadPhoto',//�����ļ��ϴ��ķ������������ַ
            secureuri:false,//һ������Ϊfalse
            fileElementId:'file',//�ļ��ϴ��ռ��id����  <input type="file" id="file" name="file" />
            dataType: 'string',//����ֵ���� һ������Ϊjson
            success: function (data, status)  //�������ɹ���Ӧ������
            {
                alert(data);//�ӷ��������ص�json��ȡ��message�е�����,����messageΪ��struts2��action�ж���ĳ�Ա����
                if(typeof(data) != 'undefined'){
                   closeDiv();
                }
            },
            error: function (data, status, e)//��������Ӧʧ�ܴ�����
            {
                alert(data);
            }
        }
    )
    
    return false;

}
</script>

<!-- ������ -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/admin/js/jquery.divbox.js"></script>
<script type="text/javascript">
function openDiv() { 
	$("#divSCA").OpenDiv(); 
} 
function closeDiv() {
	$("#divSCA").CloseDiv();
	$("body").css("overflow", "scroll"); 
	//document.getElementById("tabinfo").style.width = document.body.offsetWidth; 
} 

function openDivPhoto(){
	$("#divPhoto").OpenDiv(); 
}

function closeDivPhoto() {
	
	$("#divPhoto").CloseDiv();
	$("body").css("overflow", "scroll"); 
	//document.getElementById("tabinfo").style.width = document.body.offsetWidth; 
	
} 
</script>

<!--�����ؼ� -->
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/admin/js/My97DatePicker/WdatePicker.js"></script>
<!-- ������� -->
<script language="javascript">
function putOld(obj){
	try{
		var y = (document.getElementById("brithday").value).substring(0,4);
		var date = new Date();
		var ny = date.getFullYear();
		if((parseInt(ny-y+1))>0){
			obj.value=(ny-y+1);
		}else{
			obj.value="";
			document.getElementById("brithday").value="";
			document.getElementById("brithday").focus();
			alert('����������д�Ƿ�!');
		}
	}catch(e){
		obj.value="";		
		document.getElementById("brithday").value="";
		document.getElementById("brithday").focus();
		alert('����������д�Ƿ�!');
	}
}
</script>


<script type="text/javascript">

			function startCam(){
				var capActivexObject=document.getElementById('cap1');

				//��������ͷ
				capActivexObject.start();
			}

			function capPicture1(){
				var capActivexObject=document.getElementById('cap1');
				capActivexObject.cap(); //��������ͷ����
			}
			
			function selectPic(){
				var capActivexObject=document.getElementById('cap1');
				capActivexObject.selectRect(0.3,0.25,0.6,0.8);//���庬����鿴�ĵ�
			}
			
			function cutSelectedPic(){
				var capActivexObject=document.getElementById('cap1');
				capActivexObject.cutSelected();
				
			}


			function submitToServer(){
				//��ȡ�ؼ������ս����hidden��������
				var base64_data1 = document.getElementById('cap1').jpegBase64Data;
				if (base64_data1.length==0) {
					alert('��������!');
					return false;
				}
				document.getElementById('picData1').value=base64_data1;
				document.getElementById('picExt1').value='.jpg';


				/*ע�ⲻͬ�ķ������˼���Ҫ���ò�ͬ�Ľ������ݵ�url,���Բο�submit.html��ʾ
				��asp.net�ĳ���Ա���Բ鿴submit.aspx��php����Ա���Բ鿴submit.php��asp����Ա���Բ鿴submit.asp
				*/

				document.forms[0].action="http://localhost:8080/pages/submit.jsp";

				//alert('���ȴ�demo6.html���÷������˳�������ټ�������!');
				//return false;
				document.forms[0].submit();
			}

		</script>

<!-- ��տؼ���ť -->
<script type="text/javascript">
	document.all.cap1.SwitchWatchOnly();  //�л���ֻ��ʾ����ͷ������ʽ�����ر༭��ť��ͼ��.
</script>

<!-- ajax�ύ -->
<script>
			function ajax_post_1() {
				var base64_data = document.getElementById('cap1').jpegBase64Data;
			//	alert("data length:"+base64_data.length);
			//	var s=getServerUrl();
			//	alert(s);
				$.ajax({
							url : '${pageContext.request.contextPath}/admin/cust.do?task=uploadPhotoByCam',
							type : 'POST',
							dataType : 'jason',
							data : {
								picData : "'" + base64_data + "'",
								picExt:".jpg"
							},
							timeout : 20000,
							success:function(html){
							    callbackfun1(html);
							},
							error:function(data){
								callbackfun1(data);
							}
						});
			}
			
			function callbackfun1(data) {
				if(data.readyState==4){
					document.getElementById('context-menu-one').innerHTML=data.responseText;
					rspText = data.responseText;
				}else{
					alert('����ʧ��,������!');
				}
				//readyState	4	Number
				//responseText	"OK"	String
				document.getElementById('cap1').clear();
				closeDivPhoto();
				
			}
		var rspText="";
		</script>

<!-- ���ƽ��-->
<script>
function insertTypeOne(tabid){
	var obj = document.getElementById(tabid);
	//alert(obj.rows.length);
	var myTR =obj.insertRow(obj.rows.length);
	
	var myTD1=myTR.insertCell();
	myTD1.innerHTML='�������';//+obj.rows.length;
	
	var myTD2=myTR.insertCell();
	myTD2.innerHTML='<input name="aaaaa" id="aaaaa'+obj.rows.length+'" size="35"/>';
	
	var myTD3 = myTR.insertCell();
	myTD3.innerHTML='<input type="button" onclick="deleteRow(\'typeone\',this)" value="ɾ��"/>'
}

function insertTypeTwo(tabid){
	var obj = document.getElementById(tabid);
	var myTR =obj.insertRow(obj.rows.length);
	
	var myTD1=myTR.insertCell();
	myTD1.innerHTML='�������';//+obj.rows.length;
	
	var myTD2=myTR.insertCell();
	myTD2.innerHTML='<input name="bbbbb" id="bbbbb'+obj.rows.length+'" size="35"/>';
	
	var myTD3 = myTR.insertCell();
	myTD3.innerHTML='<input type="button" onclick="deleteRow(\'typetwo\',this)" value="ɾ��"/>'
}

function insertTypeThree(tabid){
	var obj = document.getElementById(tabid);
	var myTR =obj.insertRow(obj.rows.length);
	
	var myTD1=myTR.insertCell();
	myTD1.innerHTML='�������';//+obj.rows.length;
	
	var myTD2=myTR.insertCell();
	myTD2.innerHTML='<input name="ccccc" id="ccccc'+obj.rows.length+'" size="35"/>';
	
	var myTD3 = myTR.insertCell();
	myTD3.innerHTML='<input type="button" onclick="deleteRow(\'typeThree\',this)" value="ɾ��"/>'
}
function getResult(){
	var result="";
	var names = document.getElementsByName("aaaaa");
	for(var i=0;i<names.length;i++){
		//alert("aaaaa"+(i+1)+":"+ names[i].value+"\r\n");
		//result = result +"�������"+(i+1)+":"+ names[i].value+"\r\n";
		result = result +"�������:"+ names[i].value+"\r\n";
	}
	
	
	var names = document.getElementsByName("bbbbb");
	for(var i=0;i<names.length;i++){
		//result = result +"�������"+(i+1)+":"+ names[i].value+"\r\n";
		result = result +"�������:"+ names[i].value+"\r\n";
	}
	
	var names = document.getElementsByName("aaaaa");
	for(var i=0;i<names.length;i++){
		//result = result +"�������"+(i+1)+":"+ names[i].value+"\r\n";
		result = result +"�������:"+ names[i].value+"\r\n";
	}
	
	document.getElementById('result').value=result;
}

function deleteRow(tabid,obj) {  
	var rootTable = document.getElementById(tabid);  
	rootTable.deleteRow(obj.parentNode.parentNode.rowIndex);  
}  

</script>
</html:html>
