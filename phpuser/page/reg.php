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
<div class="adv"><a href="">��վ��ҳ</a>
<span><img src="images/adv_xian.png"/></span><a href="domain/">����ע��</a>
<span><img src="images/adv_xian.png"/></span> <a href="Host/">��������</a>
<span><img src="images/adv_xian.png"/></span> <a href="isite/">���ܽ�վ</a>
<span><img src="images/adv_xian.png"/></span> <a href="vps/">VPS����</a>
<span><img src="images/adv_xian.png"/></span> <a href="Server/">��������</a>
<span><img src="images/adv_xian.png"/></span> <a href="ServerColl/">�����й�</a>
<span><img src="images/adv_xian.png"/></span> <a href="mail/">��ҵ�ʾ�</a>
<span><img src="images/adv_xian.png"/></span> <a href="netpay/">���ʽ</a> </div>
<div class="center clearfix">
	<div class="center_left">
    	<div class="box_User">
  		  <div class="left_top"><a href="newstyle/2img/hostleftback.jpg">��Ʒ����</a></div>
        	<div class="left_bottom">
         		 <ul>
          			<li><a href="listmydomain.asp">��������</a></li>
            		<li><a href="hostadm.asp">��������</a></li>
            		<li><a href="hostnetcnadm.asp">������������</a></li>
            		<li><a href="mailadm.asp">�������</a></li>
                    <li><a href="sqladm.asp">���ݿ����</a></li>
            		<li><a href="idcadm.asp">�й����ù���</a></li>
            		<li><a href="vpsadm.asp">VPS����</a></li>
                    <li><a href="otheradm.asp">���������</a></li>
          		</ul>
       		</div>
	    </div>
		<div class="box_User">
  		  <div class="left_top"><a href="#">�û�����</a></div>
        	<div class="left_bottom">
         		 <ul>
          			<li><a href="modify.asp">�û�����</a></li>
            		<li><a href="moneylist.asp">�������</a></li>
            		<li><a href="fapiao.asp">��Ʊ����</a></li>
            		<li><a href="netpay/">����֧��</a></li>
                    <li><a href="logout.asp">��ȫ�˳�</a></li>
            		<li><a href="">���µ�¼</a></li>
          		</ul>
       		</div>
	    </div>
		<div class="box_User">
  		  <div class="left_top"><a href="#">����������ͨ</a></div>
        	<div class="left_bottom">
         		 <ul>
          			<li><a href="myprice.asp">��Ʒ����</a></li>
            		<li><a href="style/info/domain.asp">ע������</a></li>
            		<li><a href="style/info/host.asp">��ͨ��������</a></li>
            		<li><a href="style/info/hostnetcn.asp">��ͨ��������</a></li>
                    <li><a href="style/info/email.asp">��ͨ����</a></li>
            		<li><a href="style/info/sql.asp">��ͨ���ݿ�</a></li>
            		<li><a href="style/info/idc.asp">�����������й�</a></li>
                    <li><a href="style/info/vps.asp">����VPS</a></li>
					<li><a href="style/info/other.asp">��ͨ������</a></li>
          		</ul>
       		</div>
	    </div>
    	</div>
        <div class="User_right_title">��
�û�ע��
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
		   divobj.innerHTML = "<font color=greed>��</font>����ע����ͨ����";
		}
		else
		{
		   var divobj = document.getElementById("divusername");
		   divobj.style.display = "block";
		   divobj.innerHTML = "<font color=red>��</font>����û����Ѿ���ע���ˣ��뻻һ��";
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
       divobj.innerHTML = "<font color=red>X</font>�û���������Ҫ��4-14֮��!";

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
		   divobj.innerHTML = "<font color=red>��</font>�û���ֻ�ܰ������ֺ���ĸ";
		}
	}
}
function Iusername()
{
		  var divobj = document.getElementById("divusername");
		  divobj.innerHTML = "���ѣ�4-14�����ֺ���ĸ��";
}

function Ipassword()
{
		  var divobj = document.getElementById("divpassword");
		  divobj.innerHTML = "���ѣ�6-14�����ֺ���ĸ��";
}

function checkpassword(name)
{
	if (name.length>14 |name.length<6)
	{
	   var divobj = document.getElementById("divpassword");
       divobj.innerHTML = "<font color=red>X</font>���볤����Ҫ��6-14֮��!";

	}
	else
	{
		if(checkabc(name))
		{
		  var divobj = document.getElementById("divpassword");
		   divobj.innerHTML = "<font color=greed>��</font>������ͨ����";
		}
		else
		{
		   var divobj = document.getElementById("divpassword");
		   divobj.innerHTML = "<font color=red>��</font>����ֻ�ܰ������ֺ���ĸ";
		}
	}
}


function Irepassword()
{
		  var divobj = document.getElementById("divrepassword");
		  divobj.innerHTML = "���ѣ��ظ��������롣";
}

function checkrepassword(name)
{
	if (name.length>14 |name.length<6)
	{
	   var divobj = document.getElementById("divrepassword");
       divobj.innerHTML = "<font color=red>X</font>���볤����Ҫ��6-14֮��!";

	}
	else
	{
		if(reguserform.password.value==reguserform.repassword.value)
		{
		  var divobj = document.getElementById("divrepassword");
		   divobj.innerHTML = "<font color=greed>��</font>�ظ�������ͨ����";
		}
		else
		{
		   var divobj = document.getElementById("divrepassword");
		   divobj.innerHTML = "<font color=red>��</font>���벻һ�£�";
		}
	}
}

function Iemail()
{
		  var divobj = document.getElementById("divemail");
		  divobj.innerHTML = "���ѣ����������ַ";
}

function checkemail(name)
{
	if (name.length<5)
	{
	   var divobj = document.getElementById("divemail");
       divobj.innerHTML = "<font color=red>X</font>���䲻��ȷ!";

	}
	else
	{
		var myReg = /^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([abcegimnortvz]{2,3})$/;
		  if(myReg.test(name))
		{
		  var divobj = document.getElementById("divemail");
		   divobj.innerHTML = "<font color=greed>��</font>������ͨ����";
		}
		else
		{
		   var divobj = document.getElementById("divemail");
		   divobj.innerHTML = "<font color=red>��</font>�����鲻ͨ����";
		}
	}
}

function Itruename()
{
		  var divobj = document.getElementById("divtruename");
		  divobj.innerHTML = "���ѣ�20����������";
}

function checktruename(name)
{
	if (name.length>40 |name.length<2)
	{
	   var divobj = document.getElementById("divtruename");
       divobj.innerHTML = "<font color=red>X</font>��������ݳ��Ȳ���ȷ!";

	}
	else
	{
		 var myReg = /^[\u4e00-\u9fa5]+$/;
		if(myReg.test(name))
		{
		  var divobj = document.getElementById("divtruename");
		   divobj.innerHTML = "<font color=greed>��</font>���ͨ����";
		}
		else
		{
		   var divobj = document.getElementById("divtruename");
		   divobj.innerHTML = "<font color=red>��</font>��鲻ͨ����";
		}
	}
}


function Icity()
{
		  var divobj = document.getElementById("divcity");
		  divobj.innerHTML = "���ѣ�10����������";
}

function checkcity(name)
{
	if (name.length>20 |name.length<2)
	{
	   var divobj = document.getElementById("divcity");
       divobj.innerHTML = "<font color=red>X</font>��������ݳ��Ȳ���ȷ!";

	}
	else
	{
		 var myReg = /^[\u4e00-\u9fa5]+$/;
		if(myReg.test(name))
		{
		  var divobj = document.getElementById("divcity");
		   divobj.innerHTML = "<font color=greed>��</font>���ͨ����";
		}
		else
		{
		   var divobj = document.getElementById("divcity");
		   divobj.innerHTML = "<font color=red>��</font>��鲻ͨ����";
		}
	}
}

function Iaddress()
{
		  var divobj = document.getElementById("divaddress");
		  divobj.innerHTML = "���ѣ�50����������";
}

function checkaddress(name)
{
	if (name.length>20 |name.length<5)
	{
	   var divobj = document.getElementById("divaddress");
       divobj.innerHTML = "<font color=red>X</font>��������ݳ��Ȳ���ȷ!";

	}
	else
	{

		  var divobj = document.getElementById("divaddress");
		   divobj.innerHTML = "<font color=greed>��</font>���ͨ����";

	}
}

function Icontact()
{
		  var divobj = document.getElementById("divcontact");
		  divobj.innerHTML = "���ѣ�10����������";
}

function checkcontact(name)
{
	if (name.length>20 |name.length<2)
	{
	   var divobj = document.getElementById("divcontact");
       divobj.innerHTML = "<font color=red>X</font>��������ݳ��Ȳ���ȷ!";

	}
	else
	{
		 var myReg = /^[\u4e00-\u9fa5]+$/;
		if(myReg.test(name))
		{
		  var divobj = document.getElementById("divcontact");
		   divobj.innerHTML = "<font color=greed>��</font>���ͨ����";
		}
		else
		{
		   var divobj = document.getElementById("divcontact");
		   divobj.innerHTML = "<font color=red>��</font>��鲻ͨ����";
		}

	}
}


function Ipostid()
{
		  var divobj = document.getElementById("divpostid");
		  divobj.innerHTML = "���ѣ��ʱ������6λ����";
}

function checkpostid(name)
{
	if(name.length!=6)
	{
	   var divobj = document.getElementById("divpostid");
       divobj.innerHTML = "<font color=red>X</font>��������ݳ��Ȳ���ȷ!";

	}
	else
	{
		 if(name>=0 && name<1000000)
		{
		  var divobj = document.getElementById("divpostid");
		   divobj.innerHTML = "<font color=greed>��</font>���ͨ����";
		}
		else
		{
		   var divobj = document.getElementById("divpostid");
		   divobj.innerHTML = "<font color=red>��</font>��鲻ͨ����";
		}

	}
}



function Iperid()
{
		  var divobj = document.getElementById("divperid");
		  divobj.innerHTML = "���ѣ�ע��󲻿ɸ��ġ�";
}

function checkperid(name)
{
	if(name.length<6)
	{
	   var divobj = document.getElementById("divperid");
       divobj.innerHTML = "<font color=red>X</font>��������ݳ��Ȳ���ȷ!";

	}
	else
	{

		  var divobj = document.getElementById("divperid");
		   divobj.innerHTML = "<font color=greed>��</font>���ͨ����";
	}
}

function Itel()
{
		  var divobj = document.getElementById("divtel");
		  divobj.innerHTML = "���ѣ��������ĵ绰��";
}

function checktel(name)
{
	if(name.length<6)
	{
	   var divobj = document.getElementById("divtel");
       divobj.innerHTML = "<font color=red>X</font>��������ݳ��Ȳ���ȷ!";

	}
	else
	{

		  var divobj = document.getElementById("divtel");
		   divobj.innerHTML = "<font color=greed>��</font>���ͨ����";
	}
}

function Imobi()
{
		  var divobj = document.getElementById("divmobi");
		  divobj.innerHTML = "���ѣ����������ֻ����롣";
}
function checkmobi(name)
{
	if(name.length<6)
	{
	   var divobj = document.getElementById("divmobi");
       divobj.innerHTML = "<font color=red>X</font>��������ݳ��Ȳ���ȷ!";

	}
	else
	{

		  var divobj = document.getElementById("divmobi");
		   divobj.innerHTML = "<font color=greed>��</font>���ͨ����";
	}
}


function Ifax()
{
		  var divobj = document.getElementById("divfax");
		  divobj.innerHTML = "���ѣ��������Ĵ�����롣";
}
function checkfax(name)
{
	if(name.length<6)
	{
	   var divobj = document.getElementById("divfax");
       divobj.innerHTML = "<font color=red>X</font>��������ݳ��Ȳ���ȷ!";

	}
	else
	{

		  var divobj = document.getElementById("divfax");
		   divobj.innerHTML = "<font color=greed>��</font>���ͨ����";
	}
}

function Iqq()
{
		  var divobj = document.getElementById("divqq");
		  divobj.innerHTML = "���ѣ���������QQ��MSN���롣";
}
function checkqq(name)
{
	if(name.length<4)
	{
	   var divobj = document.getElementById("divqq");
       divobj.innerHTML = "<font color=red>X</font>��������ݳ��Ȳ���ȷ!";

	}
	else
	{

		  var divobj = document.getElementById("divqq");
		   divobj.innerHTML = "<font color=greed>��</font>���ͨ����";
	}
}


</script>
<form name="reguserform" method="post" action="register-sub.asp">
<table width="100%"  border="0" cellspacing="1" bgcolor="#CCCCCC">
  <tr>
    <td width="9%" height="30" rowspan="2" bgcolor="#FFFFFF"><table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#E6F4F9">
      <tr>
        <td width="377" height="31" align="right" bgcolor="#F5F5F5"><div align="left"><font color="#000000">���û�����</font></div></td>
        <td width="101" bgcolor="#FAFAF5">
              <input name="username" type="text" id="username" size="14" maxlength="14" onblur=checkusername(this.value) onfocus=Iusername()>
</td>
        <td width="951" bgcolor="#FAFAF5"><div id="divusername"></div></td>
      </tr>
      <tr>
        <td width="377" height="32" bgcolor="#F5F5F5"><div align="left"><font color="#000000">�����룺</font></div></td>
        <td bgcolor="#FAFAF5">

            <input name="password" type="password" size="14" maxlength="50" onblur=checkpassword(this.value) onfocus=Ipassword()>
</td>
        <td bgcolor="#FAFAF5"><div id="divpassword"></div></td>
      </tr>
      <tr>
        <td width="377" height="32" bgcolor="#F5F5F5"><div align="left"><font color="#000000">���ظ����룺</font></div></td>
        <td bgcolor="#FAFAF5">
            <input name="repassword" type="password" id="repassword" size="14" maxlength="50"  onblur=checkrepassword(this.value) onfocus=Irepassword()>
</td>
        <td bgcolor="#FAFAF5"><div id="divrepassword"></div></td>
      </tr>
      <tr>
        <td width="377" height="32" bgcolor="#F5F5F5"><div align="left"><font color="#000000">��Email��</font></div></td>
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
        <td width="377" height="28" bgcolor="#F5F5F5"><div align="left"><font color="#000000">������(����ҵ����)��</font></div></td>
        <td colspan="2" bgcolor="#FAFAF5">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="50">            <input name="truename" type="text" maxlength="25" onblur=checktruename(this.value) onfocus=Itruename()></td>
    <td><div id="divtruename"></div></td>
  </tr>
</table>
</td>
      </tr>



<input name="kefunow" type="hidden" value="��ͨ-ԭζ">
<input name="kfqq" type="hidden" value="1303771972">
<input name="kftel" type="hidden" value="010-52722325">
<input name="kfmail" type="hidden" value="1303771972@qq.com">


      <tr>
        <td width="377" height="27" bgcolor="#F5F5F5"><div align="left"><font color="#000000">�����ң�</font></div></td>
        <td colspan="3" bgcolor="#FAFAF5">
            <div align="left">
              <input name="coun" type="text" id="coun" value="�й�" size="6">
              </div></td>
      </tr>
      <tr>
        <td width="377" height="28" bgcolor="#F5F5F5"><div align="left"><font color="#000000">��ʡ�ݣ�</font></div></td>
        <td colspan="3" bgcolor="#FAFAF5">
            <div align="left">
              <select name="prv">
                <option selected value="">��ѡ��: </option>
                <option value="����">����</option>
                <option value="�㶫">�㶫</option>
                <option value="�Ϻ�">�Ϻ�</option>
                <option value="����">����</option>
                <option value="���">���</option>
                <option value="����">����</option>
                <option value="�ӱ�">�ӱ�</option>
                <option value="����">����</option>
                <option value="������">������</option>
                <option value="����">����</option>
                <option value="����">����</option>
                <option value="���ɹ�">���ɹ�</option>
                <option value="����">����</option>
                <option value="ɽ��">ɽ��</option>
                <option value="����">����</option>
                <option value="ɽ��">ɽ��</option>
                <option value="����">����</option>
                <option value="�㽭">�㽭</option>
                <option value="����">����</option>
                <option value="����">����</option>
                <option value="����">����</option>
                <option value="����">����</option>
                <option value="����">����</option>
                <option value="�ຣ">�ຣ</option>
                <option value="�½�">�½�</option>
                <option value="����">����</option>
                <option value="����">����</option>
                <option value="�Ĵ�">�Ĵ�</option>
                <option value="����">����</option>
                <option value="����">����</option>
                <option value="����">����</option>
                <option value="���">���</option>
                <option value="����">����</option>
                <option value="̨��">̨��</option>
                <option value="����">����</option>
              </select>
              </div></td>
      </tr>
      <tr>
        <td width="377" height="25" bgcolor="#F5F5F5"><div align="left"><font color="#000000">�����У�</font></div></td>
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
        <td width="377" height="30" bgcolor="#F5F5F5"><div align="left"><font color="#000000">����ַ��</font></div></td>
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
        <td width="377" height="30" bgcolor="#F5F5F5"><div align="left"><font color="#000000">����ϵ�ˣ�</font></div></td>
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
        <td width="377" height="31" bgcolor="#F5F5F5"><div align="left"><font color="#000000">���������룺 </font></div></td>
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
        <td width="377" height="31" bgcolor="#F5F5F5"><div align="left"><font color="#000000">�����֤����(��Ӫҵִ��)�� </font></div></td>
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
        <td width="377" height="31" bgcolor="#F5F5F5"><div align="left"><font color="#000000">����ϵ�绰��</font></div></td>
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
        <td width="377" height="31" bgcolor="#F5F5F5"><div align="left"><font color="#000000">����ϵ�ֻ���</font></div></td>
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
        <td width="377" height="34" bgcolor="#F5F5F5"><div align="left"><font color="#000000">���������棺</font></div></td>
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
        <td width="377" height="32" bgcolor="#F5F5F5"><div align="left"><font color="#000000">��</font>QQ��MSN�� </div></td>
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
        <td width="335" height="32" bgcolor="#F5F5F5"><font color="#000000">�������֪��������վ��</font></td>
        <td colspan="2" bgcolor="#FAFAF5">
            <input type="radio" value="�ٶ�" name="xxly">�ٶ�
            <input type="radio" value="GOOGLE" name="xxly">GOOGLE
            <input type="radio" value="��վ���" name="xxly">��վ���
            <input type="radio" value="�����Ƽ�" name="xxly">�����Ƽ�
            <input type="radio" value="����" name="xxly">����</td>
      </tr>
      <tr>
        <td width="335" height="32" bgcolor="#F5F5F5"><font color="#000000">�������㹺����ֲ�Ʒ��</font></td>
        <td colspan="2" bgcolor="#FAFAF5">
            <input type="checkbox" name="xgmcp" value="����">���� <input type="checkbox" name="xgmcp" value="��������">�������� <input type="checkbox" name="xgmcp" value="����������/�й�">����������/�й� <input type="checkbox" name="xgmcp" value="VPS">VPS<br>
			<input type="checkbox" name="xgmcp" value="���ܽ�վ">���ܽ�վ <input type="checkbox" name="xgmcp" value="�ʾ�">�ʾ� <input type="checkbox" name="xgmcp" value="���ݿ�">���ݿ� <input type="checkbox" name="xgmcp" value="�ƹ�">�ƹ� <input type="checkbox" name="xgmcp" value="����">����</td>
      </tr>


      <tr>
        <td height="32" bgcolor="#F5F5F5"><div align="left"><font color="#000000">��</font>ͬ�����</div></td>
        <td colspan="3" bgcolor="#FAFAF5"><div align="left">            <input id=tiaokuan value=y checked type=checkbox name=tiaokuan>
            <a href="register3.asp" target=_blank>�����Ķ�����Ⲣ���ܻ�Աע������</a></div></td>
      </tr>
      <tr>
        <td width="377" height="32" bgcolor="#F5F5F5"><div align="left"><font color="#000000">��</font>��֤�룺</div></td>
        <td colspan="3" bgcolor="#FAFAF5">
            <div align="left">
              <input name="vcode" type="text" id="vcode" size="4" maxlength="10" />
              <img src="images/vcode.bmp" width="40" height="10" id="vcodeimg">��<a href="#" onclick="vcodeimg.src='/style/info/vcode.asp?id='+Math.random();">ˢ����֤��</a></div></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td width="377" height="34">������
          <div align="left"></div></td>
        <td colspan="3">
            <div align="left">
              <input type="submit" name="Submit" value="�ύ">
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
