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
	<link href="${pageContext.request.contextPath}/admin/css/style.css" rel="stylesheet" type="text/css">
	<style> 
	#divSCA 
	{ 
	position: absolute; 
	width: 300px; 
	height: 200px; 
	font-size: 12px; 
	background: #EEF7FD; 
	border: 0px solid #000; 
	z-index: 10001; 
	display: none; 
	text-algin:center;
	padding:10px 0 0 10px;
	} 
	</style> 
</head>
<body>
<table cellpadding="2" cellspacing="1" border="0" class="tableBorder" align=center>
  <tr>
    <th colspan=2 height=25>新建会员档案</th>
  </tr>
  <tr>
	<td height=25 class="pl20">
		<b>门诊选项：</b><a
			href="${pageContext.request.contextPath}/admin/vip.do?task=deptList">病人资料</a>
		|
		<a href="${pageContext.request.contextPath}/admin/vip.do?task=toAddDept">会卡预存</a> |
		[<a href="javascript:location.reload()">刷新页面</a>]
	</td>
  </tr>
</table>
<html:form action="/admin/cust" method="post">
<table cellpadding="3" cellspacing="1" border="0" class="tableBorder tableth" align="center" width="100%">
<tr>
  <th height="25" style="width:80px;">编码</th>
  <td style="width:120px;"><html:text property="code"  size="20" maxlength="30" /> </td>
  <th style="width:80px;" height=25>姓名</th>
  <td style="width:120px;"  colspan="3"> <html:text property="username"  size="20"  /> </td>
  <th style="width:100px;" height="25px">简码</th>
  <td colspan="3"><html:text property="nameCode"  size="20"/> </td>
</tr>

<tr>
  <th height=25>国籍</th>
  <td> <html:text property="country"  size="20"  /> </td>
  <th height=25>民族</th>
  <td  colspan="3"> <html:text property="nation"  size="20" /> </td>

	<th height=25>婚况</th>
	<td>
	   <html:select property="marry">
	  	<html:option value="0">未婚</html:option>
	  	<html:option value="1">已婚</html:option>
	  </html:select>
	</td>
	<th height="25">性别</th>
	<td>
	 <html:select property="garden">
	  	<html:option value="0">男</html:option>
	  	<html:option value="1">女</html:option>
	  </html:select>
	 	</td>
</tr>
<tr>
  <th height=25>出生日期</th>
  <td><html:text property="birthday"  size="13" onfocus="javascript:WdatePicker({dateFmt:'yyyy-MM-dd'});" styleId="brithday"  styleClass="Wdate" readonly="true" /><html:text onfocus="javascript:putOld(this);" property="old" size="5"/>岁</td>
	  
  <th height=25>体重</th>
  <td><html:text property="weight"  size="5" />Kg</td>
  <th height=25>身高</th>
  <td>
  <html:text property="height"  size="5" />CM
  </td>
  
  <th height=25>学历</th>
  <td  colspan="3">
	 <html:text property="college"  size="20" />
  </td>
</tr>
<tr>
  <th height=25>职业</th>
  <td> <html:text property="work"  size="20" /> </td>
  <th height=25>工作单位</th>
  <td  colspan="3"> <html:text property="workUnit"  size="20" /> </td>
  <th height=25>单位编码</th>
  <td  colspan="3"> <html:text property="workCode"  size="20" /> </td>
</tr>


<tr>
  <th height=25>过敏信息</th>
  <td> <html:text property="allergyInfo"  size="20" /> </td>
  <th height=25>出生地址</th>
  <td  colspan="3"> <html:text property="birthAdd"  size="20"  /> </td>
  <th height=25>出生地邮编</th>
  <td  colspan="3"> <html:text property="birthZip"  size="20" /> </td>
</tr>


<tr>
  <th height=25>身份证号</th>
  <td> <html:text property="idCode"  size="20" /> </td>
  <th height=25>户口地址</th>
  <td  colspan="3"> <html:text property="idAdd"  size="20" /> </td>
  <th height=25>户口地邮编</th>
  <td  colspan="3"> <html:text property="idZip"  size="20" /> </td>
</tr>


<tr>
  <th height=25>手机号码</th>
  <td> <html:text property="mobile"  size="20" /> </td>
  <th height=25>常住地址</th>
  <td  colspan="3"> <html:text property="liveAdd"  size="20" /> </td>
  <th height=25>常住地邮编</th>
  <td  colspan="3"> <html:text property="liveZip"  size="20" /> </td>
</tr>
<tr>
  <th height=25>联系人</th>
  <td> <html:text property="linkman"  size="20" /> </td>
  <th height=25>联系人地址</th>
  <td  colspan="3"> <html:text property="linkAdd"  size="20" /> </td>
  <th height=25>联系人电话</th>
  <td  colspan="3"> <html:text property="linkTell"  size="20" /> </td>
</tr>

<tr>
  <th height=25>付费类型</th>
  <td>  
  <html:select property="payType">
  	<html:option value="0">现金</html:option>
  	<html:option value="1">刷卡</html:option>
  	<html:option value="2">医保卡</html:option>
  </html:select>
  </td>
  <th height=25>患者类型</th>
  <td  colspan="3">
  <html:select property="sickType">
  	<html:option value="0">普通、本院</html:option>
  	<html:option value="1">严重、本院</html:option>
  	<html:option value="2">普通、外院</html:option>
  </html:select>
  </td>
  <th height=25>业务员</th>
  <td  colspan="3">
  <html:select property="staff">
  	<html:option value="1">张三</html:option>
  	<html:option value="2">李四</html:option>
  	<html:option value="3">王五</html:option>
  </html:select>
  </td>  
</tr>

<tr>
  <th height=25>信息来源</th>
  <td>
  <html:select property="srcInfo">
  	<html:option value="1">医生介绍</html:option>
  	<html:option value="2">网站</html:option>
  	<html:option value="3">广告</html:option>
  </html:select></td>
  <th height=25>IC卡号</th>
  <td  colspan="3"> <html:text property="icCardCode"  size="20" /> </td>
  <td colspan="5" rowspan="4">
	  <div id="context-menu-one" class="context-menu-one" style="border:2px solid #3399CC;width:120px;height:150px;margin-left:20px;cursor:pointer;";>
	  </div>
  </td>
</tr>

<tr>
  <th height=25>会员类型</th>
  <td><html:select property="vipType">
  	<html:option value="1">金牌会员</html:option>
  	<html:option value="2">银牌会员</html:option>
  	<html:option value="3">普通会员</html:option>
  </html:select></td>
  <th height=25>会员卡号</th>
  <td  colspan="3"> <html:text property="vipCardCode"  size="20" /> </td>
</tr>

<tr>
  <th height=25>有效状态</th>
  <td><html:select property="state">
  	<html:option value="1">有效</html:option>
  	<html:option value="2">过期</html:option>
  	<html:option value="3">新增</html:option>
  </html:select></td>
  <th height=25>保险号码</th>
  <td  colspan="3"> <html:text property="safeCode"  size="20" /> </td>
</tr>
<tr>
  <th height=25>备注</th>
  <td colspan="5">
  <html:textarea property="remark" cols="30" rows="5"></html:textarea>
  </td>
</tr>
<tr>
<td colspan="5">

	<table>
	<tr>
	  <th height=25>持卡人</th>
	  <td><html:text property="cardUser"  size="20" /> <br></td>
	</tr>
	<tr>
	  <th height=25>当前余额</th>
	  <td><html:text property="balance"  size="20" /><br></td>
	</tr>
	<tr>
	  <th height=25>&nbsp;</th>
	  <td>&nbsp;</td>
	</tr>
	</table>
</td>
<td colspan="5">
	
	<table>
	<tr>
	  <th height=25>时间</th>
	  <td> <input type="text" name="inputDate" /> </td>
	  <th height=25>预存金额</th>
	  <td> <input type="text" name="money" /> </td>
	</tr>
	<tr>
	  <th height=25>备注</th>
	  <td colspan="3"> <input type="text" name="inputRemark"  size="20" /> </td>
	</tr>
	<tr>
	  <td colspan="4"> <input type="checkbox" name="print" />保存后打印</td>
	</tr>
	</table>
</td>
</tr>

</table>
</html:form>

<div class="contextMenu" id="myMenu2">
    <ul>
      <li id="upload">本地上传头像</li>
      <li id="camera">摄像头拍照</li>
      <li id="save">保存头像</li>
      <li id="delete">删除头像</li>
    </ul>
</div>

<div  id="divSCA" style="display: none;">
	<img src="${pageContext.request.contextPath}/admin/images/loading.gif" id="loading" style="display: none;">
	<input type="file" id="file" name="file" />&nbsp;&nbsp;<input type="button" value="上传" onclick="return ajaxFileUpload();">
	<br><input type="button" value="关闭" onclick="closeDiv()"> 
</div>
</body>

<!-- 右击菜单 -->
<script language="javascript" src="${pageContext.request.contextPath}/admin/js/jquery.min.js" ></script>
<script language="javascript" src="${pageContext.request.contextPath}/admin/js/jquery.contextmenu.r2.js" ></script>
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
          alert('Trigger was '+t.id+'\nAction was Open');
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
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery.ajaxfileupload.js"></script>

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
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery.divbox.js"></script>
<script type="text/javascript">
function openDiv() { 
$("#divSCA").OpenDiv(); 
} 
function closeDiv() { 
$("#divSCA").CloseDiv(); 
} 
</script>

<!--日历控件 -->
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/admin/js/My97DatePicker/WdatePicker.js"></script>
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
</html:html>
