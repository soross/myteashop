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
	body{
		
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
	<table id="tabinfo" cellpadding="2" cellspacing="1" border="0" class="tableBorder"
		align=center>
		<tr>
			<th colspan=2 height=25>
				�½���Ա����
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>����ѡ�</b><a
					href="${pageContext.request.contextPath}/admin/vip.do?task=deptList">��������</a>
				|
				<a
					href="${pageContext.request.contextPath}/admin/vip.do?task=toAddDept">�ῨԤ��</a>
				| [
				<a href="javascript:location.reload()">ˢ��ҳ��</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/cust" method="post">
		<table cellpadding="3" cellspacing="1" border="0"
			class="tableBorder tableth" align="center" width="100%">
			<tr>
				<th height="25" style="width: 80px;">
					����
				</th>
				<td style="width: 120px;">
					<html:text property="code" size="20" maxlength="30" />
				</td>
				<th style="width: 80px;" height=25>
					����
				</th>
				<td style="width: 120px;" colspan="3">
					<html:text property="username" size="20" />
				</td>
				<th style="width:120px;" height="25px">
					����
				</th>
				<td colspan="5">
					<html:text property="nameCode" size="20" />
				</td>
			</tr>
			<tr>
				<th height=25>
					����
				</th>
				<td>
					<html:text property="country" size="20" />
				</td>
				<th height=25>
					����
				</th>
				<td colspan="3">
					<html:text property="nation" size="20" />
				</td>

				<th height=25>
					���
				</th>
				<td>
					<html:select property="marry">
						<html:option value="0">δ��</html:option>
						<html:option value="1">�ѻ�</html:option>
					</html:select>
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
			</tr>
			<tr>
				<th height=25>
					��������
				</th>
				<td>
					<html:text property="birthday" size="13"
						onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd'});"
						styleId="brithday" styleClass="Wdate" readonly="true" />
					<html:text onfocus="javascript:putOld(this);" property="old"
						size="5" />
					��
				</td>

				<th height=25>
					����
				</th>
				<td>
					<html:text property="weight" size="5" />
					Kg
				</td>
				<th height=25>
					���
				</th>
				<td>
					<html:text property="height" size="5" />
					CM
				</td>

				<th height=25>
					ѧ��
				</th>
				<td colspan="3">
					<html:text property="college" size="20" />
				</td>
			</tr>
			<tr>
				<th height=25>
					ְҵ
				</th>
				<td>
					<html:text property="work" size="20" />
				</td>
				<th height=25>
					������λ
				</th>
				<td colspan="3">
					<html:text property="workUnit" size="20" />
				</td>
				<th height=25>
					��λ����
				</th>
				<td colspan="3">
					<html:text property="workCode" size="20" />
				</td>
			</tr>


			<tr>
				<th height=25>
					������Ϣ
				</th>
				<td>
					<html:text property="allergyInfo" size="20" />
				</td>
				<th height=25>
					������ַ
				</th>
				<td colspan="3">
					<html:text property="birthAdd" size="20" />
				</td>
				<th height=25>
					�������ʱ�
				</th>
				<td colspan="3">
					<html:text property="birthZip" size="20" />
				</td>
			</tr>


			<tr>
				<th height=25>
					���֤��
				</th>
				<td>
					<html:text property="idCode" size="20" />
				</td>
				<th height=25>
					���ڵ�ַ
				</th>
				<td colspan="3">
					<html:text property="idAdd" size="20" />
				</td>
				<th height=25>
					���ڵ��ʱ�
				</th>
				<td colspan="3">
					<html:text property="idZip" size="20" />
				</td>
			</tr>


			<tr>
				<th height=25>
					�ֻ�����
				</th>
				<td>
					<html:text property="mobile" size="20" />
				</td>
				<th height=25>
					��ס��ַ
				</th>
				<td colspan="3">
					<html:text property="liveAdd" size="20" />
				</td>
				<th height=25>
					��ס���ʱ�
				</th>
				<td colspan="3">
					<html:text property="liveZip" size="20" />
				</td>
			</tr>
			<tr>
				<th height=25>
					��ϵ��
				</th>
				<td>
					<html:text property="linkman" size="20" />
				</td>
				<th height=25>
					��ϵ�˵�ַ
				</th>
				<td colspan="3">
					<html:text property="linkAdd" size="20" />
				</td>
				<th height=25>
					��ϵ�˵绰
				</th>
				<td colspan="3">
					<html:text property="linkTell" size="20" />
				</td>
			</tr>

			<tr>
				<th height=25>
					��������
				</th>
				<td>
					<html:select property="payType">
						<html:option value="0">�ֽ�</html:option>
						<html:option value="1">ˢ��</html:option>
						<html:option value="2">ҽ����</html:option>
					</html:select>
				</td>
				<th height=25>
					��������
				</th>
				<td colspan="3">
					<html:select property="sickType">
						<html:option value="0">��ͨ����Ժ</html:option>
						<html:option value="1">���ء���Ժ</html:option>
						<html:option value="2">��ͨ����Ժ</html:option>
					</html:select>
				</td>
				<th height=25>
					ҵ��Ա
				</th>
				<td colspan="3">
					<html:select property="staff">
						<html:option value="1">����</html:option>
						<html:option value="2">����</html:option>
						<html:option value="3">����</html:option>
					</html:select>
				</td>
			</tr>

			<tr>
				<th height=25>
					��Ϣ��Դ
				</th>
				<td>
					<html:select property="srcInfo">
						<html:option value="1">ҽ������</html:option>
						<html:option value="2">��վ</html:option>
						<html:option value="3">���</html:option>
					</html:select>
				</td>
				<th height=25>
					IC����
				</th>
				<td colspan="3">
					<html:text property="icCardCode" size="20" />
				</td>
				<td colspan="4" rowspan="4">
					<div id="context-menu-one" class="context-menu-one"
						style="border: 2px solid #3399CC; width: 240px; height: 180px; margin-left: 20px; cursor: pointer;";>
					</div>
				</td>
			</tr>

			<tr>
				<th height=25>
					��Ա����
				</th>
				<td>
					<html:select property="vipType">
						<html:option value="1">���ƻ�Ա</html:option>
						<html:option value="2">���ƻ�Ա</html:option>
						<html:option value="3">��ͨ��Ա</html:option>
					</html:select>
				</td>
				<th height="25px">
					��Ա����
				</th>
				<td colspan="3">
					<html:text property="vipCardCode" size="20" />
				</td>
			</tr>

			<tr>
				<th height=25>
					��Ч״̬
				</th>
				<td>
					<html:select property="state">
						<html:option value="1">��Ч</html:option>
						<html:option value="2">����</html:option>
						<html:option value="3">����</html:option>
					</html:select>
				</td>
				<th height="25px">
					���պ���
				</th>
				<td colspan="3">
					<html:text property="safeCode" size="20" />
				</td>
			</tr>
			<tr>
				<th height=25>
					��ע
				</th>
				<td colspan="5">
					<html:textarea property="remark" cols="30" rows="5"></html:textarea>
				</td>
			</tr>
			<tr>
				<td colspan="5">

					<table>
						<tr>
							<th height=25>
								�ֿ���
							</th>
							<td>
								<html:text property="cardUser" size="20" />
								<br>
							</td>
						</tr>
						<tr>
							<th height=25>
								��ǰ���
							</th>
							<td>
								<html:text property="balance" size="20" />
								<br>
							</td>
						</tr>
						<tr>
							<th height=25>
								&nbsp;
							</th>
							<td>
								&nbsp;
							</td>
						</tr>
					</table>
				</td>
				<td colspan="5">

					<table>
						<tr>
							<th height=25>
								ʱ��
							</th>
							<td>
								<input type="text" name="inputDate" />
							</td>
							<th height=25>
								Ԥ����
							</th>
							<td>
								<input type="text" name="money" />
							</td>
						</tr>
						<tr>
							<th height=25>
								��ע
							</th>
							<td colspan="3">
								<input type="text" name="inputRemark" size="20" />
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<input type="checkbox" name="print" />
								������ӡ
							</td>
						</tr>
					</table>
				</td>
			</tr>

		</table>
	</html:form>

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

	<div id="divSCA" style="height: 50px; display: none; ">
		<img src="${pageContext.request.contextPath}/admin/images/loading.gif"
			id="loading" style="display: none;">
		<table>
			<tr>
				<td>
					<input type="file" id="file" name="file" />
				</td>
			</tr>
			<tr>
				<td align="center">
					<input type="button" value="�ر�" onclick="closeDiv()">
					&nbsp;&nbsp;
					<input type="button" value="�ϴ�" onclick="return ajaxFileUpload();">
				</td>
			</tr>
		</table>
	</div>
</body>



<div id="divPhoto"
	style="height: 300px : weight : 240px; display: none;">
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
</html:html>
