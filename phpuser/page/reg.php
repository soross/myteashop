<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<title></title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/gg.css" rel="stylesheet" type="text/css" />
<link href="css/others.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="top_xian"></div>
<div class="top_c">
	<div class="logo"><a href="#"><img src="images/logo.png" /></a></div>
    <div class="top_t"><a href="#"><img src="images/dianhua.png" /></a></div>
    <div class="top_left">
   <script type="text/javascript" src="js/logo.php" language="javascript"></script>
  </div>
</div>
<div class="adv"><a href="">网站首页</a>
<span><img src="images/adv_xian.png"/></span><a href="domain/">域名注册</a>
<span><img src="images/adv_xian.png"/></span> <a href="Host/">虚拟主机</a>
<span><img src="images/adv_xian.png"/></span> <a href="isite/">智能建站</a>
<span><img src="images/adv_xian.png"/></span> <a href="vps/">VPS主机</a>
<span><img src="images/adv_xian.png"/></span> <a href="Server/">主机租用</a>
<span><img src="images/adv_xian.png"/></span> <a href="ServerColl/">主机托管</a>
<span><img src="images/adv_xian.png"/></span> <a href="mail/">企业邮局</a>
<span><img src="images/adv_xian.png"/></span> <a href="netpay/">付款方式</a> </div>
<div class="center clearfix">
	<div class="center_left">
    	<div class="box_User">
  		  <div class="left_top"><a href="newstyle/2img/hostleftback.jpg">产品管理</a></div>
        	<div class="left_bottom">
         		 <ul>
          			<li><a href="listmydomain.asp">域名管理</a></li>
            		<li><a href="hostadm.asp">主机管理</a></li>
            		<li><a href="hostnetcnadm.asp">万网主机管理</a></li>
            		<li><a href="mailadm.asp">邮箱管理</a></li>
                    <li><a href="sqladm.asp">数据库管理</a></li>
            		<li><a href="idcadm.asp">托管租用管理</a></li>
            		<li><a href="vpsadm.asp">VPS管理</a></li>
                    <li><a href="otheradm.asp">其他类管理</a></li>
          		</ul>
       		</div>
	    </div>
		<div class="box_User">
  		  <div class="left_top"><a href="#">用户管理</a></div>
        	<div class="left_bottom">
         		 <ul>
          			<li><a href="modify.asp">用户资料</a></li>
            		<li><a href="moneylist.asp">财务管理</a></li>
            		<li><a href="fapiao.asp">发票申请</a></li>
            		<li><a href="netpay/">在线支付</a></li>
                    <li><a href="logout.asp">安全退出</a></li>
            		<li><a href="">重新登录</a></li>
          		</ul>
       		</div>
	    </div>
		<div class="box_User">
  		  <div class="left_top"><a href="#">在线自助开通</a></div>
        	<div class="left_bottom">
         		 <ul>
          			<li><a href="myprice.asp">产品总揽</a></li>
            		<li><a href="style/info/domain.asp">注册域名</a></li>
            		<li><a href="style/info/host.asp">开通虚拟主机</a></li>
            		<li><a href="style/info/hostnetcn.asp">开通万网主机</a></li>
                    <li><a href="style/info/email.asp">开通邮箱</a></li>
            		<li><a href="style/info/sql.asp">开通数据库</a></li>
            		<li><a href="style/info/idc.asp">服务器租用托管</a></li>
                    <li><a href="style/info/vps.asp">购买VPS</a></li>
					<li><a href="style/info/other.asp">开通其他类</a></li>
          		</ul>
       		</div>
	    </div>
    	</div>
        <div class="User_right_title">　
用户注册
</div>
<div class="User_right"><br>
<script>

function Createregxml()
{
	try{
		regxml = new ActiveXObject("Microsoft.XMLHTTP");
	}catch(e){
		try{

		regxml = new ActiveXObject("Msxm12.XMLHTTP");
		}catch(E){
		    regxml = false;
		}
	}

	if(!regxml && typeof XMLHttpRequest != 'undefined')
	{
	 regxml =new XMLHttpRequest();
	}
	return regxml;
}

function returnI()
{
	if(regxml.readyState == 4)
	{
	    var Data = regxml.responseText;
		if( Data == "ok")
		{
		  var divobj = document.getElementById("divusername");
		   divobj.innerHTML = "<font color=greed>√</font>可以注册检查通过。";
		}
		else
		{
		   var divobj = document.getElementById("divusername");
		   divobj.style.display = "block";
		   divobj.innerHTML = "<font color=red>×</font>这个用户名已经被注册了，请换一个";
		}
	}
}

function checkabc(tempstr)
{
	ptempstr=new String("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
	for(i=0;i<tempstr.length;i++)
	{
		if(ptempstr.indexOf(tempstr.charAt(i))==-1)
		{
			return false;
		}
	}

	return true;
}
function checkusername(name)
{
	if (name.length>14 |name.length<4)
	{
	   var divobj = document.getElementById("divusername");
       divobj.innerHTML = "<font color=red>X</font>用户名长度需要在4-14之间!";

	}
	else
	{
		if(checkabc(name))
		{
			regxml = Createregxml();
			regxml.onreadystatechange=returnI;
			var url = "/user/checkusername.asp?";
			regxml.open("GET",url+"username="+name);
			regxml.send(null);


		}
		else
		{
		   var divobj = document.getElementById("divusername");
		   divobj.innerHTML = "<font color=red>×</font>用户名只能包含数字和字母";
		}
	}
}
function Iusername()
{
		  var divobj = document.getElementById("divusername");
		  divobj.innerHTML = "提醒：4-14个数字和字母。";
}

function Ipassword()
{
		  var divobj = document.getElementById("divpassword");
		  divobj.innerHTML = "提醒：6-14个数字和字母。";
}

function checkpassword(name)
{
	if (name.length>14 |name.length<6)
	{
	   var divobj = document.getElementById("divpassword");
       divobj.innerHTML = "<font color=red>X</font>密码长度需要在6-14之间!";

	}
	else
	{
		if(checkabc(name))
		{
		  var divobj = document.getElementById("divpassword");
		   divobj.innerHTML = "<font color=greed>√</font>密码检查通过。";
		}
		else
		{
		   var divobj = document.getElementById("divpassword");
		   divobj.innerHTML = "<font color=red>×</font>密码只能包含数字和字母";
		}
	}
}


function Irepassword()
{
		  var divobj = document.getElementById("divrepassword");
		  divobj.innerHTML = "提醒：重复输入密码。";
}

function checkrepassword(name)
{
	if (name.length>14 |name.length<6)
	{
	   var divobj = document.getElementById("divrepassword");
       divobj.innerHTML = "<font color=red>X</font>密码长度需要在6-14之间!";

	}
	else
	{
		if(reguserform.password.value==reguserform.repassword.value)
		{
		  var divobj = document.getElementById("divrepassword");
		   divobj.innerHTML = "<font color=greed>√</font>重复密码检查通过。";
		}
		else
		{
		   var divobj = document.getElementById("divrepassword");
		   divobj.innerHTML = "<font color=red>×</font>密码不一致！";
		}
	}
}

function Iemail()
{
		  var divobj = document.getElementById("divemail");
		  divobj.innerHTML = "提醒：输入邮箱地址";
}

function checkemail(name)
{
	if (name.length<5)
	{
	   var divobj = document.getElementById("divemail");
       divobj.innerHTML = "<font color=red>X</font>邮箱不正确!";

	}
	else
	{
		var myReg = /^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([abcegimnortvz]{2,3})$/;
		  if(myReg.test(name))
		{
		  var divobj = document.getElementById("divemail");
		   divobj.innerHTML = "<font color=greed>√</font>邮箱检查通过。";
		}
		else
		{
		   var divobj = document.getElementById("divemail");
		   divobj.innerHTML = "<font color=red>×</font>邮箱检查不通过！";
		}
	}
}

function Itruename()
{
		  var divobj = document.getElementById("divtruename");
		  divobj.innerHTML = "提醒：20个汉字以内";
}

function checktruename(name)
{
	if (name.length>40 |name.length<2)
	{
	   var divobj = document.getElementById("divtruename");
       divobj.innerHTML = "<font color=red>X</font>输入的内容长度不正确!";

	}
	else
	{
		 var myReg = /^[\u4e00-\u9fa5]+$/;
		if(myReg.test(name))
		{
		  var divobj = document.getElementById("divtruename");
		   divobj.innerHTML = "<font color=greed>√</font>检查通过。";
		}
		else
		{
		   var divobj = document.getElementById("divtruename");
		   divobj.innerHTML = "<font color=red>×</font>检查不通过！";
		}
	}
}


function Icity()
{
		  var divobj = document.getElementById("divcity");
		  divobj.innerHTML = "提醒：10个汉字以内";
}

function checkcity(name)
{
	if (name.length>20 |name.length<2)
	{
	   var divobj = document.getElementById("divcity");
       divobj.innerHTML = "<font color=red>X</font>输入的内容长度不正确!";

	}
	else
	{
		 var myReg = /^[\u4e00-\u9fa5]+$/;
		if(myReg.test(name))
		{
		  var divobj = document.getElementById("divcity");
		   divobj.innerHTML = "<font color=greed>√</font>检查通过。";
		}
		else
		{
		   var divobj = document.getElementById("divcity");
		   divobj.innerHTML = "<font color=red>×</font>检查不通过！";
		}
	}
}

function Iaddress()
{
		  var divobj = document.getElementById("divaddress");
		  divobj.innerHTML = "提醒：50个汉字以内";
}

function checkaddress(name)
{
	if (name.length>20 |name.length<5)
	{
	   var divobj = document.getElementById("divaddress");
       divobj.innerHTML = "<font color=red>X</font>输入的内容长度不正确!";

	}
	else
	{

		  var divobj = document.getElementById("divaddress");
		   divobj.innerHTML = "<font color=greed>√</font>检查通过。";

	}
}

function Icontact()
{
		  var divobj = document.getElementById("divcontact");
		  divobj.innerHTML = "提醒：10个汉字以内";
}

function checkcontact(name)
{
	if (name.length>20 |name.length<2)
	{
	   var divobj = document.getElementById("divcontact");
       divobj.innerHTML = "<font color=red>X</font>输入的内容长度不正确!";

	}
	else
	{
		 var myReg = /^[\u4e00-\u9fa5]+$/;
		if(myReg.test(name))
		{
		  var divobj = document.getElementById("divcontact");
		   divobj.innerHTML = "<font color=greed>√</font>检查通过。";
		}
		else
		{
		   var divobj = document.getElementById("divcontact");
		   divobj.innerHTML = "<font color=red>×</font>检查不通过！";
		}

	}
}


function Ipostid()
{
		  var divobj = document.getElementById("divpostid");
		  divobj.innerHTML = "提醒：邮编必须是6位数字";
}

function checkpostid(name)
{
	if(name.length!=6)
	{
	   var divobj = document.getElementById("divpostid");
       divobj.innerHTML = "<font color=red>X</font>输入的内容长度不正确!";

	}
	else
	{
		 if(name>=0 && name<1000000)
		{
		  var divobj = document.getElementById("divpostid");
		   divobj.innerHTML = "<font color=greed>√</font>检查通过。";
		}
		else
		{
		   var divobj = document.getElementById("divpostid");
		   divobj.innerHTML = "<font color=red>×</font>检查不通过！";
		}

	}
}



function Iperid()
{
		  var divobj = document.getElementById("divperid");
		  divobj.innerHTML = "提醒：注册后不可更改。";
}

function checkperid(name)
{
	if(name.length<6)
	{
	   var divobj = document.getElementById("divperid");
       divobj.innerHTML = "<font color=red>X</font>输入的内容长度不正确!";

	}
	else
	{

		  var divobj = document.getElementById("divperid");
		   divobj.innerHTML = "<font color=greed>√</font>检查通过。";
	}
}

function Itel()
{
		  var divobj = document.getElementById("divtel");
		  divobj.innerHTML = "提醒：输入您的电话。";
}

function checktel(name)
{
	if(name.length<6)
	{
	   var divobj = document.getElementById("divtel");
       divobj.innerHTML = "<font color=red>X</font>输入的内容长度不正确!";

	}
	else
	{

		  var divobj = document.getElementById("divtel");
		   divobj.innerHTML = "<font color=greed>√</font>检查通过。";
	}
}

function Imobi()
{
		  var divobj = document.getElementById("divmobi");
		  divobj.innerHTML = "提醒：输入您的手机号码。";
}
function checkmobi(name)
{
	if(name.length<6)
	{
	   var divobj = document.getElementById("divmobi");
       divobj.innerHTML = "<font color=red>X</font>输入的内容长度不正确!";

	}
	else
	{

		  var divobj = document.getElementById("divmobi");
		   divobj.innerHTML = "<font color=greed>√</font>检查通过。";
	}
}


function Ifax()
{
		  var divobj = document.getElementById("divfax");
		  divobj.innerHTML = "提醒：输入您的传真号码。";
}
function checkfax(name)
{
	if(name.length<6)
	{
	   var divobj = document.getElementById("divfax");
       divobj.innerHTML = "<font color=red>X</font>输入的内容长度不正确!";

	}
	else
	{

		  var divobj = document.getElementById("divfax");
		   divobj.innerHTML = "<font color=greed>√</font>检查通过。";
	}
}

function Iqq()
{
		  var divobj = document.getElementById("divqq");
		  divobj.innerHTML = "提醒：输入您的QQ或MSN号码。";
}
function checkqq(name)
{
	if(name.length<4)
	{
	   var divobj = document.getElementById("divqq");
       divobj.innerHTML = "<font color=red>X</font>输入的内容长度不正确!";

	}
	else
	{

		  var divobj = document.getElementById("divqq");
		   divobj.innerHTML = "<font color=greed>√</font>检查通过。";
	}
}


</script>
<form name="reguserform" method="post" action="register-sub.asp">
<table width="100%"  border="0" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="9%" height="30" rowspan="2" bgcolor="#FFFFFF"><table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#E6F4F9">
      <tr>
        <td width="377" height="31" align="right" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　用户名：</font></div></td>
        <td width="101" bgcolor="#FAFAF5">
              <input name="username" type="text" id="username" size="14" maxlength="14" onblur=checkusername(this.value) onfocus=Iusername()>
</td>
        <td width="951" bgcolor="#FAFAF5"><div id="divusername"></div></td>
      </tr>
      <tr>
        <td width="377" height="32" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　密码：</font></div></td>
        <td bgcolor="#FAFAF5">

            <input name="password" type="password" size="14" maxlength="50" onblur=checkpassword(this.value) onfocus=Ipassword()>
</td>
        <td bgcolor="#FAFAF5"><div id="divpassword"></div></td>
      </tr>
      <tr>
        <td width="377" height="32" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　重复密码：</font></div></td>
        <td bgcolor="#FAFAF5">
            <input name="repassword" type="password" id="repassword" size="14" maxlength="50"  onblur=checkrepassword(this.value) onfocus=Irepassword()>
</td>
        <td bgcolor="#FAFAF5"><div id="divrepassword"></div></td>
      </tr>
      <tr>
        <td width="377" height="32" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　Email：</font></div></td>
        <td height="13" colspan="2" bgcolor="#FAFAF5">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50">            <input name="email" type="text" onblur=checkemail(this.value) onfocus=Iemail()></td>
    <td><div id="divemail"></div></td>
  </tr>
</table>

</td>
      </tr>
      <tr>
        <td width="377" height="28" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　姓名(或企业名称)：</font></div></td>
        <td colspan="2" bgcolor="#FAFAF5">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50">            <input name="truename" type="text" maxlength="25" onblur=checktruename(this.value) onfocus=Itruename()></td>
    <td><div id="divtruename"></div></td>
  </tr>
</table>
</td>
      </tr>



<input name="kefunow" type="hidden" value="华通-原味">
<input name="kfqq" type="hidden" value="1303771972">
<input name="kftel" type="hidden" value="010-52722325">
<input name="kfmail" type="hidden" value="1303771972@qq.com">


      <tr>
        <td width="377" height="27" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　国家：</font></div></td>
        <td colspan="3" bgcolor="#FAFAF5">
            <div align="left">
              <input name="coun" type="text" id="coun" value="中国" size="6">
              </div></td>
      </tr>
      <tr>
        <td width="377" height="28" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　省份：</font></div></td>
        <td colspan="3" bgcolor="#FAFAF5">
            <div align="left">
              <select name="prv">
                <option selected value="">请选择: </option>
                <option value="北京">北京</option>
                <option value="广东">广东</option>
                <option value="上海">上海</option>
                <option value="广西">广西</option>
                <option value="天津">天津</option>
                <option value="重庆">重庆</option>
                <option value="河北">河北</option>
                <option value="河南">河南</option>
                <option value="黑龙江">黑龙江</option>
                <option value="吉林">吉林</option>
                <option value="辽宁">辽宁</option>
                <option value="内蒙古">内蒙古</option>
                <option value="海南">海南</option>
                <option value="山西">山西</option>
                <option value="陕西">陕西</option>
                <option value="山东">山东</option>
                <option value="江苏">江苏</option>
                <option value="浙江">浙江</option>
                <option value="安徽">安徽</option>
                <option value="江西">江西</option>
                <option value="福建">福建</option>
                <option value="甘肃">甘肃</option>
                <option value="宁夏">宁夏</option>
                <option value="青海">青海</option>
                <option value="新疆">新疆</option>
                <option value="湖北">湖北</option>
                <option value="湖南">湖南</option>
                <option value="四川">四川</option>
                <option value="贵州">贵州</option>
                <option value="云南">云南</option>
                <option value="西藏">西藏</option>
                <option value="香港">香港</option>
                <option value="澳门">澳门</option>
                <option value="台湾">台湾</option>
                <option value="其它">其它</option>
              </select>
              </div></td>
      </tr>
      <tr>
        <td width="377" height="25" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　城市：</font></div></td>
        <td colspan="3" bgcolor="#FAFAF5">

<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50">            <input name="city" size="10" type="text" maxlength="25" onblur=checkcity(this.value) onfocus=Icity()></td>
    <td><div id="divcity"></div></td>
  </tr>
</table>

</td>
      </tr>
      <tr>
        <td width="377" height="30" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　地址：</font></div></td>
        <td colspan="3" bgcolor="#FAFAF5">

<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50">            <input name="address" size="30" type="text" maxlength="50" onblur=checkaddress(this.value) onfocus=Iaddress()></td>
    <td><div id="divaddress"></div></td>
  </tr>
</table>


</td>
      </tr>
      <tr>
        <td width="377" height="30" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　联系人：</font></div></td>
        <td colspan="3" bgcolor="#FAFAF5">

<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50">            <input name="contact" type="text" size="20" maxlength="20" onblur=checkcontact(this.value) onfocus=Icontact()></td>
    <td><div id="divcontact"></div></td>
  </tr>
</table>

</td>
      </tr>
      <tr>
        <td width="377" height="31" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　邮政编码： </font></div></td>
        <td colspan="3" bgcolor="#FAFAF5">

<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50">            <input name="postid" type="text" size="8" maxlength="10" onblur=checkpostid(this.value) onfocus=Ipostid()></td>
    <td><div id="divpostid"></div></td>
  </tr>
</table>


</td>
      </tr>
      <tr>
        <td width="377" height="31" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　身份证号码(或营业执照)： </font></div></td>
        <td colspan="3" bgcolor="#FAFAF5">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50">            <input name="perid" type="text" size="18" maxlength="40" onblur=checkperid(this.value) onfocus=Iperid()></td>
    <td><div id="divperid"></div></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td width="377" height="31" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　联系电话：</font></div></td>
        <td colspan="3" bgcolor="#FAFAF5">

<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50">            <input name="tel" type="text" size="20" maxlength="50" onblur=checktel(this.value) onfocus=Itel()></td>
    <td><div id="divtel"></div></td>
  </tr>
</table>


</td>
      </tr>
      <tr>
        <td width="377" height="31" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　联系手机：</font></div></td>
        <td colspan="3" bgcolor="#FAFAF5">

<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50">            <input name="mobi" type="text" size="20" maxlength="50" onblur=checkmobi(this.value) onfocus=Imobi()></td>
    <td><div id="divmobi"></div></td>
  </tr>
</table>

</td>
      </tr>
      <tr>
        <td width="377" height="34" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　传　　真：</font></div></td>
        <td colspan="3" bgcolor="#FAFAF5">


<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50">            <input name="fax" type="text" size="20" maxlength="50" onblur=checkfax(this.value) onfocus=Ifax()></td>
    <td><div id="divfax"></div></td>
  </tr>
</table>
</td>
        </tr>
      <tr>
        <td width="377" height="32" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　</font>QQ或MSN： </div></td>
        <td colspan="3" bgcolor="#FAFAF5">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50">            <input name="qq" type="text" size="20" maxlength="50" onblur=checkqq(this.value) onfocus=Iqq()></td>
    <td><div id="divqq"></div></td>
  </tr>
</table>
</td>
      </tr>

     <tr>
        <td width="335" height="32" bgcolor="#F5F5F5"><font color="#000000">　您如何知道我们网站：</font></td>
        <td colspan="2" bgcolor="#FAFAF5">
            <input type="radio" value="百度" name="xxly">百度
            <input type="radio" value="GOOGLE" name="xxly">GOOGLE
            <input type="radio" value="网站广告" name="xxly">网站广告
            <input type="radio" value="朋友推荐" name="xxly">朋友推荐
            <input type="radio" value="其它" name="xxly">其它</td>
      </tr>
      <tr>
        <td width="335" height="32" bgcolor="#F5F5F5"><font color="#000000">　您打算购买何种产品：</font></td>
        <td colspan="2" bgcolor="#FAFAF5">
            <input type="checkbox" name="xgmcp" value="域名">域名 <input type="checkbox" name="xgmcp" value="虚拟主机">虚拟主机 <input type="checkbox" name="xgmcp" value="服务器租用/托管">服务器租用/托管 <input type="checkbox" name="xgmcp" value="VPS">VPS<br>
			<input type="checkbox" name="xgmcp" value="智能建站">智能建站 <input type="checkbox" name="xgmcp" value="邮局">邮局 <input type="checkbox" name="xgmcp" value="数据库">数据库 <input type="checkbox" name="xgmcp" value="推广">推广 <input type="checkbox" name="xgmcp" value="其它">其它</td>
      </tr>


      <tr>
        <td height="32" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　</font>同意条款：</div></td>
        <td colspan="3" bgcolor="#FAFAF5"><div align="left">            <input id=tiaokuan value=y checked type=checkbox name=tiaokuan>
            <a href="register3.asp" target=_blank>我已阅读，理解并接受会员注册条款</a></div></td>
      </tr>
      <tr>
        <td width="377" height="32" bgcolor="#F5F5F5"><div align="left"><font color="#000000">　</font>验证码：</div></td>
        <td colspan="3" bgcolor="#FAFAF5">
            <div align="left">
              <input name="vcode" type="text" id="vcode" size="4" maxlength="10" />
              <img src="images/vcode.bmp" width="40" height="10" id="vcodeimg">　<a href="#" onclick="vcodeimg.src='/style/info/vcode.asp?id='+Math.random();">刷新验证码</a></div></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td width="377" height="34">　　　
          <div align="left"></div></td>
        <td colspan="3">
            <div align="left">
              <input type="submit" name="Submit" value="提交">
              </div></td>
      </tr>
    </table>    </td>
  </tr>
</table>
</form>
         </div>
</div>
<div class="bottom_xian"></div>
<script type='text/javascript' src='js/CopyRights.js'></script>
</body>
</html>
