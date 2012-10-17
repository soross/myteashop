<%@ page language="java" pageEncoding="GBK"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
<head>
	<html:base />
	<title>中间主页面</title>
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
				日常诊疗操作
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>日常诊疗操作选项：</b> [
				<a href="javascript:location.reload()">刷新页面</a>]
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
								患者ID
							</th>
							<td colspan="3">
								<html:text property="sufferer" size="30" maxlength="30" />
							</td>
							<th height="25">
								日期
							</th>
							<td colspan="2">
								<html:text property="createDate" size="15"
									onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd'});"
									styleId="createDate" styleClass="Wdate" readonly="true" />
							</td>
							<th height="25px">
								病历号
							</th>
							<td colspan="2">
								<html:text property="hisno" size="20" />
							</td>
						</tr>
						<tr>
							<th height="25">
								姓名
							</th>
							<td>
								<html:text property="name" size="15" />
							</td>
							<th height="25">
								性别
							</th>
							<td>
								<html:select property="garden">
									<html:option value="0">男</html:option>
									<html:option value="1">女</html:option>
								</html:select>
							</td>
							<th height="25">
								年龄
							</th>
							<td>
								<html:text property="old" size="15" />
							</td>
							<th height="25px">
								婚况
							</th>
							<td colspan="2">
								<html:select property="ismarry">
									<html:option value="0">未婚</html:option>
									<html:option value="1">已婚</html:option>
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
								身高
							</th>
							<td>
								<html:text property="height" size="10" />
								CM
							</td>
							<th height=25>
								体重
							</th>
							<td>
								<html:text property="weight" size="10" />
								KG
							</td>
							<th height=25>
								职业
							</th>
							<td>
								<html:text property="job" size="15" />
							</td>

							<th height=25>
								联系人
							</th>
							<td colspan="2">
								<html:text property="linkman" size="15" />
							</td>
						</tr>
						<tr>
							<th height=25>
								关系
							</th>
							<td>
								<html:text property="relation" size="15" />
							</td>
							<th height=25>
								联系电话
							</th>
							<td colspan="2">
								<html:text property="linktel" size="15" />
							</td>
							<th height=25>
								采集时间
							</th>
							<td colspan="3">
								<html:text property="gatherDate" size="22"
									onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'});"
									styleId="gatherDate" styleClass="Wdate" readonly="true" />
							</td>
						</tr>
						<tr>
							<th height=25>
								地址
							</th>
							<td colspan="5">
								<html:text property="address" size="55" />
							</td>
							<th height=25>
								电话
							</th>
							<td colspan="2">
								<html:text property="tel" size="15" />
							</td>
						</tr>
						<tr>
							<th height=25>
								联系地址
							</th>
							<td colspan="5">
								<html:text property="linkadd" size="55" />
							</td>
							<th height=25>
								联系地址电话
							</th>
							<td colspan="2">
								<html:text property="linkaddrel" size="15" />
							</td>
						</tr>
						<tr>
							<th height=25>
								科室
							</th>
							<td colspan="4">
								<html:text property="deptid" size="15" />
							</td>
							<th height=25>
								病史陈述
							</th>
							<td colspan="3">
								<html:text property="hisstate" size="15" />
							</td>
						</tr>
						<tr>
							<th height=25>
								发病节气
							</th>
							<td colspan="2">
								<html:text property="cycle" size="15" />
							</td>
							<th height=25>
								可靠程度
							</th>
							<td colspan="2">
								<html:text property="hislevel" size="15" />
							</td>
							<th height=25>
								X光CT号
							</th>
							<td colspan="2">
								<html:text property="xregctno" size="15" />
							</td>
						</tr>
						<tr>
							<th height=25>
								过敏药物
							</th>
							<td colspan="4">
								<html:text property="allergy" size="35" />
							</td>
							<th height=25>
								备注
							</th>
							<td colspan="4">
								<html:text property="remark" size="35" />
							</td>
						</tr>

						<tr>
							<th height=25>
								主诉
							</th>
							<td colspan="9">
								<html:text property="state" size="80" />
							</td>
						</tr>

						<tr>
							<th height=25>
								现病史
							</th>
							<td colspan="9">
								<html:textarea property="hisNow" rows="3" cols="80"></html:textarea>
							</td>
						</tr>

						<tr>
							<th height=25>
								个人史
							</th>
							<td colspan="9">
								<html:textarea property="hisSelf" rows="3" cols="80"></html:textarea>
							</td>
						</tr>

						<tr>
							<th height=25>
								婚育史
							</th>
							<td colspan="9">
								<html:textarea property="hisMarry" rows="3" cols="80"></html:textarea>
							</td>
						</tr>
						<tr>
							<th>
								家族史
							</th>
							<td colspan="9">
								<html:textarea property="hisFamily" rows="3" cols="80"></html:textarea>
							</td>
						</tr>
						<tr>
							<th>
								辅助检查
							</th>
							<td colspan="9">
								<html:textarea property="helpCheckup" rows="3" cols="80"></html:textarea>
							</td>
						</tr>
						<tr>
							<th>
								既往安装史
							</th>
							<td colspan="9">
								<html:textarea property="hisSetup" rows="3" cols="80"></html:textarea>
							</td>
						</tr>
						<tr>
							<th>
								诊疗结果
							</th>
							<td colspan="9">
								<html:textarea property="result"
									onfocus="JavaScript:$('#divSCA').OpenDiv();" styleId="result"
									rows="3" cols="80"></html:textarea>
							</td>
						</tr>
						<tr>
							<th>
								<strong>处理</strong>
							</th>
							<td colspan="9">
								<html:textarea property="dispose" rows="3" cols="80"></html:textarea>
							</td>
						</tr>
						<tr>
							<td colspan="10" align="right">
								接诊人签字：________________&nbsp;就诊日期：________年____月____日
							</td>
						</tr>
					</table>
					<table cellpadding="3" cellspacing="1" border="0"
						class="tableBorder tableth" align="center" width="100%">
						<tr>
							<td align="center">
								<input type="submit" value="确定" onclick="javascript:goUrl('');">
								&nbsp;
								<input type="button" value="取消" onclick="javascript:goUrl('');">
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
				本地上传头像
			</li>
			<li id="camera">
				摄像头拍照
			</li>
			<li id="save">
				保存头像
			</li>
			<li id="delete">
				删除头像
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
								疾病诊断
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
						残损诊断
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
						残障诊断
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
						<input type="button" value="增加疾病诊断"
							onclick="insertTypeOne('typeone');">
					</td>
					<td>
						<input type="button" value="增加残损诊断"
							onclick="insertTypeTwo('typetwo');">
					</td>
					<td>
						<input type="button" value="增加残障诊断"
							onclick="insertTypeThree('typethree');">
					</td>
					<td>
						<input type="button" value="确定" onclick="getResult();closeDiv();">
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
					<param name="Font" value="宋体">
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

				<input type="button" value="拍照" onclick="javascript:capPicture1();" />
				&nbsp;
				<input type="button" value="重照"
					onclick="javascript:document.getElementById('cap1').clear(); startCam();" />
				&nbsp;
				<input type="button" value="关闭"
					onclick="javascript:closeDivPhoto();" />
				&nbsp;
				<input type="button" value="确定上传" id="btnUpload1"
					onclick="javascript:ajax_post_1();" />
			</td>
		</tr>
	</table>
</div>











<!-- 右击菜单 -->
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
        fontFamily : '微软雅黑',
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

<!--  ajax上传 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/admin/js/jquery.ajaxfileupload.js"></script>

<script type="text/javascript">
function ajaxFileUpload()
{
    $("#loading")
    	.ajaxStart(function(){
        $(this).show();
    })//开始上传文件时显示一个图片
    .ajaxComplete(function(){
        $(this).hide();
    });//文件上传完成将图片隐藏起来
    
    $.ajaxFileUpload
    (
        {
            url:'${pageContext.request.contextPath}/admin/cust.do?task=uploadPhoto',//用于文件上传的服务器端请求地址
            secureuri:false,//一般设置为false
            fileElementId:'file',//文件上传空间的id属性  <input type="file" id="file" name="file" />
            dataType: 'string',//返回值类型 一般设置为json
            success: function (data, status)  //服务器成功响应处理函数
            {
                alert(data);//从服务器返回的json中取出message中的数据,其中message为在struts2中action中定义的成员变量
                if(typeof(data) != 'undefined'){
                   closeDiv();
                }
            },
            error: function (data, status, e)//服务器响应失败处理函数
            {
                alert(data);
            }
        }
    )
    
    return false;

}
</script>

<!-- 弹出层 -->
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

<!--日历控件 -->
<script language="javascript" type="text/javascript"
	src="${pageContext.request.contextPath}/admin/js/My97DatePicker/WdatePicker.js"></script>
<!-- 年龄计算 -->
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
			alert('出生日期填写非法!');
		}
	}catch(e){
		obj.value="";		
		document.getElementById("brithday").value="";
		document.getElementById("brithday").focus();
		alert('出生日期填写非法!');
	}
}
</script>


<script type="text/javascript">

			function startCam(){
				var capActivexObject=document.getElementById('cap1');

				//启动摄像头
				capActivexObject.start();
			}

			function capPicture1(){
				var capActivexObject=document.getElementById('cap1');
				capActivexObject.cap(); //控制摄像头拍照
			}
			
			function selectPic(){
				var capActivexObject=document.getElementById('cap1');
				capActivexObject.selectRect(0.3,0.25,0.6,0.8);//具体含义请查看文档
			}
			
			function cutSelectedPic(){
				var capActivexObject=document.getElementById('cap1');
				capActivexObject.cutSelected();
				
			}


			function submitToServer(){
				//读取控件的拍照结果到hidden输入项中
				var base64_data1 = document.getElementById('cap1').jpegBase64Data;
				if (base64_data1.length==0) {
					alert('请先拍照!');
					return false;
				}
				document.getElementById('picData1').value=base64_data1;
				document.getElementById('picExt1').value='.jpg';


				/*注意不同的服务器端技术要配置不同的接收数据的url,可以参考submit.html的示
				如asp.net的程序员可以查看submit.aspx，php程序员可以查看submit.php，asp程序员可以查看submit.asp
				*/

				document.forms[0].action="http://localhost:8080/pages/submit.jsp";

				//alert('请先打开demo6.html配置服务器端程序参数再继续测试!');
				//return false;
				document.forms[0].submit();
			}

		</script>

<!-- 清空控件按钮 -->
<script type="text/javascript">
	document.all.cap1.SwitchWatchOnly();  //切换到只显示摄像头画面形式，隐藏编辑按钮等图标.
</script>

<!-- ajax提交 -->
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
					alert('操作失败,请重试!');
				}
				//readyState	4	Number
				//responseText	"OK"	String
				document.getElementById('cap1').clear();
				closeDivPhoto();
				
			}
		var rspText="";
		</script>

<!-- 诊疗结果-->
<script>
function insertTypeOne(tabid){
	var obj = document.getElementById(tabid);
	//alert(obj.rows.length);
	var myTR =obj.insertRow(obj.rows.length);
	
	var myTD1=myTR.insertCell();
	myTD1.innerHTML='疾病诊断';//+obj.rows.length;
	
	var myTD2=myTR.insertCell();
	myTD2.innerHTML='<input name="aaaaa" id="aaaaa'+obj.rows.length+'" size="35"/>';
	
	var myTD3 = myTR.insertCell();
	myTD3.innerHTML='<input type="button" onclick="deleteRow(\'typeone\',this)" value="删除"/>'
}

function insertTypeTwo(tabid){
	var obj = document.getElementById(tabid);
	var myTR =obj.insertRow(obj.rows.length);
	
	var myTD1=myTR.insertCell();
	myTD1.innerHTML='残损诊断';//+obj.rows.length;
	
	var myTD2=myTR.insertCell();
	myTD2.innerHTML='<input name="bbbbb" id="bbbbb'+obj.rows.length+'" size="35"/>';
	
	var myTD3 = myTR.insertCell();
	myTD3.innerHTML='<input type="button" onclick="deleteRow(\'typetwo\',this)" value="删除"/>'
}

function insertTypeThree(tabid){
	var obj = document.getElementById(tabid);
	var myTR =obj.insertRow(obj.rows.length);
	
	var myTD1=myTR.insertCell();
	myTD1.innerHTML='残障诊断';//+obj.rows.length;
	
	var myTD2=myTR.insertCell();
	myTD2.innerHTML='<input name="ccccc" id="ccccc'+obj.rows.length+'" size="35"/>';
	
	var myTD3 = myTR.insertCell();
	myTD3.innerHTML='<input type="button" onclick="deleteRow(\'typeThree\',this)" value="删除"/>'
}
function getResult(){
	var result="";
	var names = document.getElementsByName("aaaaa");
	for(var i=0;i<names.length;i++){
		//alert("aaaaa"+(i+1)+":"+ names[i].value+"\r\n");
		//result = result +"疾病诊断"+(i+1)+":"+ names[i].value+"\r\n";
		result = result +"疾病诊断:"+ names[i].value+"\r\n";
	}
	
	
	var names = document.getElementsByName("bbbbb");
	for(var i=0;i<names.length;i++){
		//result = result +"残损诊断"+(i+1)+":"+ names[i].value+"\r\n";
		result = result +"残损诊断:"+ names[i].value+"\r\n";
	}
	
	var names = document.getElementsByName("aaaaa");
	for(var i=0;i<names.length;i++){
		//result = result +"残障诊断"+(i+1)+":"+ names[i].value+"\r\n";
		result = result +"残障诊断:"+ names[i].value+"\r\n";
	}
	
	document.getElementById('result').value=result;
}

function deleteRow(tabid,obj) {  
	var rootTable = document.getElementById(tabid);  
	rootTable.deleteRow(obj.parentNode.parentNode.rowIndex);  
}  

</script>
</html:html>
