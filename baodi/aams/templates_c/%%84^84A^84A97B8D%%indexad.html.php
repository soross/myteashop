<?php /* Smarty version 2.6.26, created on 2011-12-13 01:37:38
         compiled from indexad.html */ ?>
<?php echo '
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<title>�ޱ����ĵ�</title>
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
//�˴�clickcolorֻ����winϵͳ��ɫ������ܳɹ�,�����#xxxxxx�Ĵ���Ͳ���,��û�����Ϊʲô:(
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
        	<img src="images/tab/311.gif" width="16" height="16" /> <span class="STYLE4">ϵͳ����-��ҳ������</span></td>
        <td width="281" background="images/tab/tab_05.gif">

        	<table border="0" align="right" cellpadding="0" cellspacing="0">
            <tr>
             <!-- <td width="60"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center">
                        <input type="checkbox" name="checkbox62" value="checkbox" />
                    </div></td>
                    <td class="STYLE1"><div align="center">ȫѡ</div></td>
                  </tr>
              </table></td>
              <td width="60">

              	<table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><a href="addnews.php" target="dataFarme"><img src="images/tab/001.gif" width="14" height="14" border="0"/></a></div></td>
                    <td class="STYLE1"><div align="center"><a href="addnews.php" target="dataFarme">����</a></div></td>
                  </tr>
              	</table>

              </td>
              <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="images/tab/114.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center">�޸�</div></td>
                  </tr>
              </table></td>
              <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="images/tab/083.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center">ɾ��</div></td>
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
    <td>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="9" background="images/tab/tab_12.gif">&nbsp;</td>
        <td bgcolor="#f3ffe3">
        	<?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['infoen']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
        	<form action="post/config.action.php" method="post" enctype="multipart/form-data">
		        <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#c0de98" onmouseover="changeto()"  onmouseout="changeback()">
		          <tr>
			        <td width="100px" height="26" bgcolor="#FFFFFF" class="STYLE1" rowspan="2"><div align="center" class="STYLE2 STYLE1">
					<strong>��ҳ���Ĺ��</strong>
					</div></td>
					<td width="60px" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">�������</div></td>
		            <td width="200px" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">
						<input type="text" id="type_content" name="type_content" value="<?php echo $this->_tpl_vars['infoen'][$this->_sections['list']['index']]['type_content']; ?>
" maxlength="50" size="25">
					</div></td>

					<td width="80px" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">ͼƬ������ʾ</div></td>
		            <td width="50px" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">
						<input type="text" id="remark" name="remark" value="<?php echo $this->_tpl_vars['infoen'][$this->_sections['list']['index']]['remark']; ?>
" maxlength="50" size="13">
					</div></td>

					<td width="40px" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">ͼƬ</div></td>

		            <td width="260px" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
		            	<input type="file"  id="adimage" name="adimage"><br>[֧�ָ�ʽ��gif|jpg|png&nbsp;&nbsp;��С��100Kb]<font style="color:red;">*</font>
		            </div></td>
		            <td width="" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="left" class="STYLE2 STYLE1">
   					<input type="hidden" id="task" name="task" value="Index_AD">
		            <input type="hidden" id="adid" name="adid" value="<?php echo $this->_tpl_vars['infoen'][$this->_sections['list']['index']]['id']; ?>
">
		            <input type="submit" value="�޸ĸ�����Ϣ">
		            </div></td>
		          </tr>
		          <tr>
		          	<td bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">���ͼƬ</div></td>
		          	<td colspan="6" bgcolor="#FFFFFF" class="STYLE1"><div align="left" class="STYLE2 STYLE1">
					<img src="../<?php echo $this->_tpl_vars['infoen'][$this->_sections['list']['index']]['type_code']; ?>
">
					</div></td>
		          </tr>
				</table>
			</form>
		   <?php endfor; endif; ?>
		   <?php unset($this->_sections['list']);
$this->_sections['list']['name'] = 'list';
$this->_sections['list']['loop'] = is_array($_loop=$this->_tpl_vars['infocn']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
        	<form action="post/config.action.php" method="post" enctype="multipart/form-data">
		        <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#c0de98" onmouseover="changeto()"  onmouseout="changeback()">
		          <tr>
			        <td width="100px" height="26" bgcolor="#FFFFFF" class="STYLE1" rowspan="2"><div align="center" class="STYLE2 STYLE1">
					<strong>��ҳӢ�Ĺ�</strong>
					</div></td>
					<td width="60px" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">�������</div></td>
		            <td width="200px" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">
						<input type="text" id="type_content" name="type_content" value="<?php echo $this->_tpl_vars['infocn'][$this->_sections['list']['index']]['type_content']; ?>
" maxlength="50" size="25">
					</div></td>

					<td width="80px" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">ͼƬ������ʾ</div></td>
		            <td width="50px" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">
						<input type="text" id="remark" name="remark" value="<?php echo $this->_tpl_vars['infocn'][$this->_sections['list']['index']]['remark']; ?>
" maxlength="50" size="13">
					</div></td>

					<td width="40px" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">ͼƬ</div></td>

		            <td width="260px" height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="left" class="STYLE2 STYLE1">
		            	<input type="file"  id="adimage" name="adimage"><br>[֧�ָ�ʽ��gif|jpg|png&nbsp;&nbsp;��С��100Kb]<font style="color:red;">*</font>
		            </div></td>
		            <td width="" height="26" bgcolor="#FFFFFF" class="STYLE1"><div align="left" class="STYLE2 STYLE1">
   					<input type="hidden" id="task" name="task" value="Index_AD">
		            <input type="hidden" id="adid" name="adid" value="<?php echo $this->_tpl_vars['infocn'][$this->_sections['list']['index']]['id']; ?>
">
		            <input type="submit" value="�޸ĸ�����Ϣ">
		            </div></td>
		          </tr>
		          <tr>
		          	<td bgcolor="#FFFFFF" class="STYLE1"><div align="center" class="STYLE2 STYLE1">���ͼƬ</div></td>
		          	<td colspan="6" bgcolor="#FFFFFF" class="STYLE1"><div align="left" class="STYLE2 STYLE1">
					<img src="../<?php echo $this->_tpl_vars['infocn'][$this->_sections['list']['index']]['type_code']; ?>
" width="290px" height="226px" >
					</div></td>
		          </tr>
				</table>
			</form>
		   <?php endfor; endif; ?>

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
	            <td width="25%" height="29" nowrap="nowrap"><span class="STYLE1"><!-- ��120����¼����ǰ��1/10ҳ��ÿҳ10����¼ --></span></td>
	            <td width="75%" valign="top" class="STYLE1"><div align="right">
	              <table width="352" height="20" border="0" cellpadding="0" cellspacing="0">
	                <tr><!--
	                  <td width="62" height="22" valign="middle"><div align="right"><img src="images/tab/first.gif" width="37" height="15" /></div></td>
	                  <td width="50" height="22" valign="middle"><div align="right"><img src="images/tab/back.gif" width="43" height="15" /></div></td>
	                  <td width="54" height="22" valign="middle"><div align="right"><img src="images/tab/next.gif" width="43" height="15" /></div></td>
	                  <td width="49" height="22" valign="middle"><div align="right"><img src="images/tab/last.gif" width="37" height="15" /></div></td>
	                  <td width="59" height="22" valign="middle"><div align="right">ת����</div></td>
	                  <td width="25" height="22" valign="middle"><span class="STYLE7">
	                    <input name="textfield" type="text" class="STYLE1" style="height:10px; width:25px;" size="5" />
	                  </span></td>
	                  <td width="23" height="22" valign="middle">ҳ</td>
	                  <td width="30" height="22" valign="middle"><img src="images/tab/go.gif" width="37" height="15" /></td> -->
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