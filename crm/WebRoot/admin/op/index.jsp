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
				新建会员档案
			</th>
		</tr>
		<tr>
			<td height=25 class="pl20">
				<b>门诊选项：</b><a
					href="${pageContext.request.contextPath}/admin/vip.do?task=deptList">病人资料</a>
				|
				<a
					href="${pageContext.request.contextPath}/admin/vip.do?task=toAddDept">会卡预存</a>
				| [
				<a href="javascript:location.reload()">刷新页面</a>]
			</td>
		</tr>
	</table>
	<html:form action="/admin/cust" method="post">
		<table cellpadding="3" cellspacing="1" border="0"
			class="tableBorder tableth" align="center" width="100%">
			<tr>
				<th height="25" style="width: 80px;">
					编码
				</th>
				<td style="width: 120px;">
					<html:text property="code" size="20" maxlength="30" />
				</td>
				<th style="width: 80px;" height=25>
					姓名
				</th>
				<td style="width: 120px;" colspan="3">
					<html:text property="username" size="20" />
				</td>
				<th style="width:120px;" height="25px">
					简码
				</th>
				<td colspan="5">
					<html:text property="nameCode" size="20" />
				</td>
			</tr>
			<tr>
				<th height=25>
					国籍
				</th>
				<td>
					<html:text property="country" size="20" />
				</td>
				<th height=25>
					民族
				</th>
				<td colspan="3">
					<html:text property="nation" size="20" />
				</td>

				<th height=25>
					婚况
				</th>
				<td>
					<html:select property="marry">
						<html:option value="0">未婚</html:option>
						<html:option value="1">已婚</html:option>
					</html:select>
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
			</tr>
			<tr>
				<th height=25>
					出生日期
				</th>
				<td>
					<html:text property="birthday" size="13"
						onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd'});"
						styleId="brithday" styleClass="Wdate" readonly="true" />
					<html:text onfocus="javascript:putOld(this);" property="old"
						size="5" />
					岁
				</td>

				<th height=25>
					体重
				</th>
				<td>
					<html:text property="weight" size="5" />
					Kg
				</td>
				<th height=25>
					身高
				</th>
				<td>
					<html:text property="height" size="5" />
					CM
				</td>

				<th height=25>
					学历
				</th>
				<td colspan="3">
					<html:text property="college" size="20" />
				</td>
			</tr>
			<tr>
				<th height=25>
					职业
				</th>
				<td>
					<html:text property="work" size="20" />
				</td>
				<th height=25>
					工作单位
				</th>
				<td colspan="3">
					<html:text property="workUnit" size="20" />
				</td>
				<th height=25>
					单位编码
				</th>
				<td colspan="3">
					<html:text property="workCode" size="20" />
				</td>
			</tr>


			<tr>
				<th height=25>
					过敏信息
				</th>
				<td>
					<html:text property="allergyInfo" size="20" />
				</td>
				<th height=25>
					出生地址
				</th>
				<td colspan="3">
					<html:text property="birthAdd" size="20" />
				</td>
				<th height=25>
					出生地邮编
				</th>
				<td colspan="3">
					<html:text property="birthZip" size="20" />
				</td>
			</tr>


			<tr>
				<th height=25>
					身份证号
				</th>
				<td>
					<html:text property="idCode" size="20" />
				</td>
				<th height=25>
					户口地址
				</th>
				<td colspan="3">
					<html:text property="idAdd" size="20" />
				</td>
				<th height=25>
					户口地邮编
				</th>
				<td colspan="3">
					<html:text property="idZip" size="20" />
				</td>
			</tr>


			<tr>
				<th height=25>
					手机号码
				</th>
				<td>
					<html:text property="mobile" size="20" />
				</td>
				<th height=25>
					常住地址
				</th>
				<td colspan="3">
					<html:text property="liveAdd" size="20" />
				</td>
				<th height=25>
					常住地邮编
				</th>
				<td colspan="3">
					<html:text property="liveZip" size="20" />
				</td>
			</tr>
			<tr>
				<th height=25>
					联系人
				</th>
				<td>
					<html:text property="linkman" size="20" />
				</td>
				<th height=25>
					联系人地址
				</th>
				<td colspan="3">
					<html:text property="linkAdd" size="20" />
				</td>
				<th height=25>
					联系人电话
				</th>
				<td colspan="3">
					<html:text property="linkTell" size="20" />
				</td>
			</tr>

			<tr>
				<th height=25>
					付费类型
				</th>
				<td>
					<html:select property="payType">
						<html:option value="0">现金</html:option>
						<html:option value="1">刷卡</html:option>
						<html:option value="2">医保卡</html:option>
					</html:select>
				</td>
				<th height=25>
					患者类型
				</th>
				<td colspan="3">
					<html:select property="sickType">
						<html:option value="0">普通、本院</html:option>
						<html:option value="1">严重、本院</html:option>
						<html:option value="2">普通、外院</html:option>
					</html:select>
				</td>
				<th height=25>
					业务员
				</th>
				<td colspan="3">
					<html:select property="staff">
						<html:option value="1">张三</html:option>
						<html:option value="2">李四</html:option>
						<html:option value="3">王五</html:option>
					</html:select>
				</td>
			</tr>

			<tr>
				<th height=25>
					信息来源
				</th>
				<td>
					<html:select property="srcInfo">
						<html:option value="1">医生介绍</html:option>
						<html:option value="2">网站</html:option>
						<html:option value="3">广告</html:option>
					</html:select>
				</td>
				<th height=25>
					IC卡号
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
					会员类型
				</th>
				<td>
					<html:select property="vipType">
						<html:option value="1">金牌会员</html:option>
						<html:option value="2">银牌会员</html:option>
						<html:option value="3">普通会员</html:option>
					</html:select>
				</td>
				<th height="25px">
					会员卡号
				</th>
				<td colspan="3">
					<html:text property="vipCardCode" size="20" />
				</td>
			</tr>

			<tr>
				<th height=25>
					有效状态
				</th>
				<td>
					<html:select property="state">
						<html:option value="1">有效</html:option>
						<html:option value="2">过期</html:option>
						<html:option value="3">新增</html:option>
					</html:select>
				</td>
				<th height="25px">
					保险号码
				</th>
				<td colspan="3">
					<html:text property="safeCode" size="20" />
				</td>
			</tr>
			<tr>
				<th height=25>
					备注
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
								持卡人
							</th>
							<td>
								<html:text property="cardUser" size="20" />
								<br>
							</td>
						</tr>
						<tr>
							<th height=25>
								当前余额
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
								时间
							</th>
							<td>
								<input type="text" name="inputDate" />
							</td>
							<th height=25>
								预存金额
							</th>
							<td>
								<input type="text" name="money" />
							</td>
						</tr>
						<tr>
							<th height=25>
								备注
							</th>
							<td colspan="3">
								<input type="text" name="inputRemark" size="20" />
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<input type="checkbox" name="print" />
								保存后打印
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
					<input type="button" value="关闭" onclick="closeDiv()">
					&nbsp;&nbsp;
					<input type="button" value="上传" onclick="return ajaxFileUpload();">
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
</html:html>
