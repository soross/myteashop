<?php
require_once("../action/checkAamsLogin.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE4 {
	font-size: 12px;
	color: #1F4A65;
	font-weight: bold;
}

a:link {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;

}
a:visited {
	font-size: 12px;
	color: #06482a;
	text-decoration: none;
}
a:hover {
	font-size: 12px;
	color: #FF0000;
	text-decoration: underline;
}
a:active {
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.STYLE7 {font-size: 12}

-->
</style>

<script>
var  highlightcolor='#eafcd5';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="30"><img src="../images/tab/tab_03.gif" width="15" height="30" /></td>
        <td width="1101" background="../images/tab/tab_05.gif"><img src="../images/tab/311.gif" width="16" height="16" /> <span class="STYLE4">欢迎来到后台管理平台</span></td>
        <td width="281" background="../images/tab/tab_05.gif">
        <!--
        <table border="0" align="right" cellpadding="0" cellspacing="0">
            <tr>
              <td width="60">
              <table width="87%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center">
                        <input type="checkbox" name="checkbox62" value="checkbox" />
                    </div></td>
                    <td class="STYLE1"><div align="center">全选</div></td>
                  </tr>
              </table></td>
              <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="../images/tab/001.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center">新增</div></td>
                  </tr>
              </table></td>
              <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="../images/tab/114.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center">修改</div></td>
                  </tr>
              </table></td>
              <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="../images/tab/083.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center">删除</div></td>
                  </tr>
              </table></td>
            </tr>
        </table>
         -->
        </td>
        <td width="14"><img src="../images/tab/tab_07.gif" width="14" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9" background="../images/tab/tab_12.gif">&nbsp;</td>
        <td bgcolor="#f3ffe3">
        <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#c0de98" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
            <td width="100%" height="26" background="../images/tab/tab_14.gif" class="STYLE1" colspan="2"><div align="center" class="STYLE2 STYLE1">会员信息</div></td>
            <!--
            <td width="8%" height="18" background="../images/tab/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">序号</div></td>
            <td width="24%" height="18" background="../images/tab/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">运行机器ip地址</div></td>
            <td width="10%" height="18" background="../images/tab/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">机器名</div></td>
            <td width="14%" height="18" background="../images/tab/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2 STYLE1">节点类型</div></td>
            <td width="24%" height="18" background="../images/tab/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2">服务器进程配置</div></td>
            <td width="7%" height="18" background="../images/tab/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2">编辑</div></td>
            <td width="7%" height="18" background="../images/tab/tab_14.gif" class="STYLE1"><div align="center" class="STYLE2">删除</div></td>
             -->
          </tr>
          <tr>
          	<td width="50%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="right" class="STYLE2 STYLE1">
          	用户名：
           	</div></td>
           	<td height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
          	<?php
                		 $info = $_SESSION['WEB_AAMS_USER_LOGIN_BEAN_SESSION'];
                		echo $info[username];
                ?>
           	</div></td>

          	<!--
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <input name="checkbox" type="checkbox" class="STYLE2" value="checkbox" />
            </div></td>
            <td height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="center" class="STYLE2 STYLE1">A0012</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">192.168.0.124</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">wtz_fh</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">DBserver</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" ><a href="#">服务器进程配置</a></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><img src="../images/tab/037.gif" width="9" height="9" /><span class="STYLE1"> [</span><a href="#">编辑</a><span class="STYLE1">]</span></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2"><img src="../images/tab/010.gif" width="9" height="9" /> </span><span class="STYLE1">[</span><a href="#">删除</a><span class="STYLE1">]</span></div></td>
             -->
          </tr>
          <tr>
          		<td width="50%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="right" class="STYLE2 STYLE1">
          	真实姓名：
           	</div></td>
           	<td height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
          	<?php
                		echo $info[realname];
                ?>
           	</div></td>
          </tr>
          <tr>
          	<td width="50%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="right" class="STYLE2 STYLE1">
          	创建时间：
           	</div></td>
           	<td height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
          	<?php
                		echo $info[create_date];
                ?>
           	</div></td>
          </tr>
           <tr>
          	<td width="50%" colspan="2" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="center" class="STYLE2 STYLE1">
          	&nbsp;</div></td>
          </tr>
           <tr>
          	<td width="50%" colspan="2" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="center" class="STYLE2 STYLE1">
          	&nbsp;	</div></td>
          </tr>
           <tr>
          	<td width="50%" colspan="2" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="center" class="STYLE2 STYLE1">
          	<span style="color:red;font-size:20px;">注意：本后台系统上传的图片大小必须小于100k,格式为gif|jpg|png.</span>  	</div></td>
          </tr>
          <!--
          <tr>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <input name="checkbox2" type="checkbox" class="STYLE2" value="checkbox" />
            </div></td>
            <td height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="center" class="STYLE2 STYLE1">A0012</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">192.168.0.124</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">wtz_fh</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">DBserver</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><a href="#">服务器进程配置</a></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2"><img src="../images/tab/037.gif" width="9" height="9" /></span><span class="STYLE1"> [</span><a href="#">编辑</a><span class="STYLE1">]</span></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2"><img src="../images/tab/010.gif" width="9" height="9" /></span><span class="STYLE2"> </span><span class="STYLE1">[</span><a href="#">删除</a><span class="STYLE1">]</span></div></td>
          </tr>
          <tr>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <input name="checkbox3" type="checkbox" class="STYLE2" value="checkbox" />
            </div></td>
            <td height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="center" class="STYLE2 STYLE1">A0012</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">192.168.0.124</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">wtz_fh</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">DBserver</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><a href="#">服务器进程配置</a></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2"><img src="../images/tab/037.gif" width="9" height="9" /></span><span class="STYLE1"> [</span><a href="#">编辑</a><span class="STYLE1">]</span></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2"><img src="../images/tab/010.gif" width="9" height="9" /></span><span class="STYLE2"> </span><span class="STYLE1">[</span><a href="#">删除</a><span class="STYLE1">]</span></div></td>
          </tr>
          <tr>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <input name="checkbox4" type="checkbox" class="STYLE2" value="checkbox" />
            </div></td>
            <td height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="center" class="STYLE2 STYLE1">A0012</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">192.168.0.124</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">wtz_fh</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">DBserver</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><a href="#">服务器进程配置</a></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2"><img src="../images/tab/037.gif" width="9" height="9" /></span><span class="STYLE1"> [</span><a href="#">编辑</a><span class="STYLE1">]</span></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2"><img src="../images/tab/010.gif" width="9" height="9" /></span><span class="STYLE2"> </span><span class="STYLE1">[</span><a href="#">删除</a><span class="STYLE1">]</span></div></td>
          </tr>
          <tr>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <input name="checkbox5" type="checkbox" class="STYLE2" value="checkbox" />
            </div></td>
            <td height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="center" class="STYLE2 STYLE1">A0012</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">192.168.0.124</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">wtz_fh</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2 STYLE1">DBserver</div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><a href="#">服务器进程配置</a></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2"><img src="../images/tab/037.gif" width="9" height="9" /></span><span class="STYLE1"> [</span><a href="#">编辑</a><span class="STYLE1">]</span></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2"><img src="../images/tab/010.gif" width="9" height="9" /></span><span class="STYLE2"> </span><span class="STYLE1">[</span><a href="#">删除</a><span class="STYLE1">]</span></div></td>
          </tr> -->
        </table></td>
        <td width="9" background="../images/tab/tab_16.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="29"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="29"><img src="../images/tab/tab_20.gif" width="15" height="29" /></td>
        <td background="../images/tab/tab_21.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="25%" height="29" nowrap="nowrap"><span class="STYLE1"><!--共120条纪录，当前第1/10页，每页10条纪录--></span></td>
            <td width="75%" valign="top" class="STYLE1"><div align="right">
              <table width="352" height="20" border="0" cellpadding="0" cellspacing="0">
                <tr>
                	<!--
                  <td width="62" height="22" valign="middle"><div align="right"><img src="../images/tab/first.gif" width="37" height="15" /></div></td>
                  <td width="50" height="22" valign="middle"><div align="right"><img src="../images/tab/back.gif" width="43" height="15" /></div></td>
                  <td width="54" height="22" valign="middle"><div align="right"><img src="../images/tab/next.gif" width="43" height="15" /></div></td>
                  <td width="49" height="22" valign="middle"><div align="right"><img src="../images/tab/last.gif" width="37" height="15" /></div></td>
                  <td width="59" height="22" valign="middle"><div align="right">转到第</div></td>
                  <td width="25" height="22" valign="middle"><span class="STYLE7">
                    <input name="textfield" type="text" class="STYLE1" style="height:10px; width:25px;" size="5" />
                  </span></td>
                  <td width="23" height="22" valign="middle">页</td>

                  <td width="30" height="22" valign="middle"><img src="../images/tab/go.gif" width="37" height="15" /></td> -->
                </tr>
              </table>
            </div></td>
          </tr>
        </table></td>
        <td width="14"><img src="../images/tab/tab_22.gif" width="14" height="29" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
