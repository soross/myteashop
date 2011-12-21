<?php /* Smarty version 2.6.26, created on 2011-11-20 12:32:50
         compiled from addnav.html */ ?>
<?php echo '
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
var  highlightcolor=\'#eafcd5\';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor=\'#51b2f6\';
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
'; ?>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="30"><img src="images/tab/tab_03.gif" width="15" height="30" /></td>
        <td width="1101" background="images/tab/tab_05.gif">
        	<img src="images/tab/311.gif" width="16" height="16" /> <span class="STYLE4">系统管理-新增导航目录</span></td>
        <td width="281" background="images/tab/tab_05.gif">

        	<table border="0" align="right" cellpadding="0" cellspacing="0">
            <tr>
             <!-- <td width="60"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center">
                        <input type="checkbox" name="checkbox62" value="checkbox" />
                    </div></td>
                    <td class="STYLE1"><div align="center">全选</div></td>
                  </tr>
              </table></td>
              <td width="60">

              	<table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><a href="addnews.php" target="dataFarme"><img src="images/tab/001.gif" width="14" height="14" border="0"/></a></div></td>
                    <td class="STYLE1"><div align="center"><a href="addnews.php" target="dataFarme">新增</a></div></td>
                  </tr>
              	</table>

              </td>
              <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="images/tab/114.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center">修改</div></td>
                  </tr>
              </table></td>
              <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="images/tab/083.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center">删除</div></td>
                  </tr> -->
              </table>

              </td>
            </tr>
        </table></td>
        <td width="14"><img src="images/tab/tab_07.gif" width="14" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9" background="images/tab/tab_12.gif">&nbsp;</td>
        <td bgcolor="#f3ffe3">
        	<form action="post/nav.action.php" method="post">
		        <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#c0de98" onmouseover="changeto()"  onmouseout="changeback()">
		          <tr>
		            <td width="30%" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">导航目录中文名</div></td>
		            <td width="70%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
		            	<input type="text" id="name_cn" name="name_cn" size="40" maxlength="50"><font style="color:red;">*</font>
		            </div></td>
		          </tr>
		          <tr>
		            <td width="30%" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">导航目录英文名</div></td>
		            <td width="70%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
		            <input type="text" id="name_en" name="name_en" size="40" maxlength="50"><font style="color:red;">*</font>
		           </div></td>
		          </tr>
		          <tr>
		            <td width="30%" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">导航目录父级</div></td>
		            <td width="70%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
		            	 <select id="type" name="type">
		            	 <option value="0">=顶级导航目录=</option>
		            	  <?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['menuRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['list']['show'] = true;
$this->_sections['list']['max'] = $this->_sections['list']['loop'];
$this->_sections['list']['step'] = 1;
$this->_sections['list']['start'] = $this->_sections['list']['step'] > 0 ? 0 : $this->_sections['list']['loop']-1;
if ($this->_sections['list']['show']) {
    $this->_sections['list']['total'] = $this->_sections['list']['loop'];
    if ($this->_sections['list']['total'] == 0)
        $this->_sections['list']['show'] = false;
} else
    $this->_sections['list']['total'] = 0;
if ($this->_sections['list']['show']):

            for ($this->_sections['list']['index'] = $this->_sections['list']['start'], $this->_sections['list']['iteration'] = 1;
                 $this->_sections['list']['iteration'] <= $this->_sections['list']['total'];
                 $this->_sections['list']['index'] += $this->_sections['list']['step'], $this->_sections['list']['iteration']++):
$this->_sections['list']['rownum'] = $this->_sections['list']['iteration'];
$this->_sections['list']['index_prev'] = $this->_sections['list']['index'] - $this->_sections['list']['step'];
$this->_sections['list']['index_next'] = $this->_sections['list']['index'] + $this->_sections['list']['step'];
$this->_sections['list']['first']      = ($this->_sections['list']['iteration'] == 1);
$this->_sections['list']['last']       = ($this->_sections['list']['iteration'] == $this->_sections['list']['total']);
?>
				          <?php if ($this->_tpl_vars['menuRows'][$this->_sections['list']['index']]['pid'] == 0): ?>
				         	<option value="<?php echo $this->_tpl_vars['menuRows'][$this->_sections['list']['index']]['id']; ?>
"><?php echo $this->_tpl_vars['menuRows'][$this->_sections['list']['index']]['menu_name_zh_cn']; ?>
-<?php echo $this->_tpl_vars['menuRows'][$this->_sections['list']['index']]['menu_name_en']; ?>
</option>
							<?php unset($this->_sections['lt']);
$this->_sections['lt']['name'] = 'lt';
$this->_sections['lt']['loop'] = is_array($_loop=$this->_tpl_vars['menuRows']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['lt']['show'] = true;
$this->_sections['lt']['max'] = $this->_sections['lt']['loop'];
$this->_sections['lt']['step'] = 1;
$this->_sections['lt']['start'] = $this->_sections['lt']['step'] > 0 ? 0 : $this->_sections['lt']['loop']-1;
if ($this->_sections['lt']['show']) {
    $this->_sections['lt']['total'] = $this->_sections['lt']['loop'];
    if ($this->_sections['lt']['total'] == 0)
        $this->_sections['lt']['show'] = false;
} else
    $this->_sections['lt']['total'] = 0;
if ($this->_sections['lt']['show']):

            for ($this->_sections['lt']['index'] = $this->_sections['lt']['start'], $this->_sections['lt']['iteration'] = 1;
                 $this->_sections['lt']['iteration'] <= $this->_sections['lt']['total'];
                 $this->_sections['lt']['index'] += $this->_sections['lt']['step'], $this->_sections['lt']['iteration']++):
$this->_sections['lt']['rownum'] = $this->_sections['lt']['iteration'];
$this->_sections['lt']['index_prev'] = $this->_sections['lt']['index'] - $this->_sections['lt']['step'];
$this->_sections['lt']['index_next'] = $this->_sections['lt']['index'] + $this->_sections['lt']['step'];
$this->_sections['lt']['first']      = ($this->_sections['lt']['iteration'] == 1);
$this->_sections['lt']['last']       = ($this->_sections['lt']['iteration'] == $this->_sections['lt']['total']);
?>
							<?php if ($this->_tpl_vars['menuRows'][$this->_sections['list']['index']]['id'] == $this->_tpl_vars['menuRows'][$this->_sections['lt']['index']]['pid']): ?>
								<option value="<?php echo $this->_tpl_vars['menuRows'][$this->_sections['lt']['index']]['id']; ?>
">&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $this->_tpl_vars['menuRows'][$this->_sections['lt']['index']]['menu_name_zh_cn']; ?>
-<?php echo $this->_tpl_vars['menuRows'][$this->_sections['lt']['index']]['menu_name_en']; ?>
</option>
							<?php endif; ?>
							<?php endfor; endif; ?>
				          <?php endif; ?>

				          <?php endfor; endif; ?>

		            </select><font style="color:red;">*</font>
		            </div></td>
		          </tr>
		          <tr>
		            <td width="30%" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">是否在顶部导航显示</div></td>
		            <td width="70%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
		            <input type="radio" id="show" name="show" value="1">是<input type="radio" id="show" name="show" value="" checked>否<font style="color:red;">*</font>
		            </div></td>
		          </tr>
		          <tr>
		            <td width="30%" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">左导航类别</div></td>
		            <td width="70%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
		            <input type="radio" id="remark" name="remark" value="PRODUCT" checked>产品左导航
		            <input type="radio" id="remark" name="remark" value="NEWS">新闻左导航
		            <input type="radio" id="remark" name="remark" value="EDU">宝迪学院左导航
		            <font style="color:red;">*</font>
		            </div></td>
		          </tr>
		          <tr>
		            <td width="30%" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">跳转URL</div></td>
		            <td width="70%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
		            <input type="text" id="url" name="url" size="40" maxlength="50"><font style="color:red;">*</font>
		            </div></td>
		          </tr>
		          <tr>
		            <td width="30%" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1"></div></td>
		            <td width="70%" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
						<br><input type="submit" value="新增导航目录">
						<input type="hidden" id="task" name="task" value="addNav">
		            </div></td>
		          </tr>
		        </table>

        	</form>
        </td>
        <td width="9" background="images/tab/tab_16.gif">&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td height="29"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="29"><img src="images/tab/tab_20.gif" width="15" height="29" /></td>
        <td background="images/tab/tab_21.gif">
    	<!-- page -->
	    	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td width="25%" height="29" nowrap="nowrap"><span class="STYLE1"><!-- 共120条纪录，当前第1/10页，每页10条纪录 --></span></td>
	            <td width="75%" valign="top" class="STYLE1"><div align="right">
	              <table width="352" height="20" border="0" cellpadding="0" cellspacing="0">
	                <tr><!--
	                  <td width="62" height="22" valign="middle"><div align="right"><img src="images/tab/first.gif" width="37" height="15" /></div></td>
	                  <td width="50" height="22" valign="middle"><div align="right"><img src="images/tab/back.gif" width="43" height="15" /></div></td>
	                  <td width="54" height="22" valign="middle"><div align="right"><img src="images/tab/next.gif" width="43" height="15" /></div></td>
	                  <td width="49" height="22" valign="middle"><div align="right"><img src="images/tab/last.gif" width="37" height="15" /></div></td>
	                  <td width="59" height="22" valign="middle"><div align="right">转到第</div></td>
	                  <td width="25" height="22" valign="middle"><span class="STYLE7">
	                    <input name="textfield" type="text" class="STYLE1" style="height:10px; width:25px;" size="5" />
	                  </span></td>
	                  <td width="23" height="22" valign="middle">页</td>
	                  <td width="30" height="22" valign="middle"><img src="images/tab/go.gif" width="37" height="15" /></td>-->
	                </tr>
	              </table>
	            </div></td>
	          </tr>
	        </table>
        </td>
        <td width="14"><img src="images/tab/tab_22.gif" width="14" height="29" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>